import {
  FlutterPlugin,
  FlutterPluginBinding,
  MethodCall,
  MethodCallHandler,
  MethodChannel,
  MethodResult,
} from '@ohos/flutter_ohos';
import Want from '@ohos.app.ability.Want';
import common from '@ohos.app.ability.common';

type ParamMode = 'none' | 'pushParamsSelf' | 'pushParamsBundleName';

const SETTINGS_BUNDLE_NAME: string = 'com.huawei.hmos.settings';
const SETTINGS_ABILITY_NAME: string = 'com.huawei.hmos.settings.MainAbility';

function parseParamMode(raw: string): ParamMode {
  if (raw == 'pushParamsSelf') {
    return 'pushParamsSelf';
  }
  if (raw == 'pushParamsBundleName') {
    return 'pushParamsBundleName';
  }
  return 'none';
}

/** OpenSettingsPlusPlugin **/
export default class OpenSettingsPlusPlugin implements FlutterPlugin, MethodCallHandler {
  private channel: MethodChannel | null = null;

  constructor() {
  }

  private buildWant(uri: string, mode: ParamMode, selfBundleName: string): Want {
    if (mode == 'none') {
      return {
        bundleName: SETTINGS_BUNDLE_NAME,
        abilityName: SETTINGS_ABILITY_NAME,
        uri: uri,
      };
    }

    if (mode == 'pushParamsSelf') {
      return {
        bundleName: SETTINGS_BUNDLE_NAME,
        abilityName: SETTINGS_ABILITY_NAME,
        uri: uri,
        parameters: {
          pushParams: selfBundleName,
        },
      };
    }

    return {
      bundleName: SETTINGS_BUNDLE_NAME,
      abilityName: SETTINGS_ABILITY_NAME,
      uri: uri,
      parameters: {
        pushParams: {
          bundleName: selfBundleName,
        },
      },
    };
  }

  private async tryStartAbility(ctx: common.UIAbilityContext, want: Want): Promise<boolean> {
    try {
      await ctx.startAbility(want);
      return true;
    } catch {
      return false;
    }
  }

  /**
   * 通过系统设置 MainAbility 的 uri 跳转；[uri] 为空时打开设置首页（不带 uri）。
   */
  private async openByUri(uri: string, mode: ParamMode): Promise<boolean> {
    console.info(`[OpenSettingsPlusPlugin] openByUri uri=${uri} mode=${mode}`);
    const ctx = getContext(this) as common.UIAbilityContext;
    const selfBundleName: string = ctx.abilityInfo.bundleName;
    const trimmed: string = uri.trim();

    if (trimmed.length == 0) {
      const homeWant: Want = {
        bundleName: SETTINGS_BUNDLE_NAME,
        abilityName: SETTINGS_ABILITY_NAME,
      };
      return await this.tryStartAbility(ctx, homeWant);
    }

    const want = this.buildWant(trimmed, mode, selfBundleName);
    const ok = await this.tryStartAbility(ctx, want);
    if (ok) {
      return true;
    }

    const homeWant: Want = {
      bundleName: SETTINGS_BUNDLE_NAME,
      abilityName: SETTINGS_ABILITY_NAME,
    };
    return await this.tryStartAbility(ctx, homeWant);
  }

  getUniqueClassName(): string {
    return "OpenSettingsPlusPlugin"
  }

  onAttachedToEngine(binding: FlutterPluginBinding): void {
    this.channel = new MethodChannel(binding.getBinaryMessenger(), "open_settings_plus");
    this.channel.setMethodCallHandler(this)
  }

  onDetachedFromEngine(binding: FlutterPluginBinding): void {
    if (this.channel != null) {
      this.channel.setMethodCallHandler(null)
    }
  }

  onMethodCall(call: MethodCall, result: MethodResult): void {
    if (call.method == "getPlatformVersion") {
      result.success("OpenHarmony");
      return;
    }

    if (call.method == "openSettingsUri") {
      if (!call.hasArgument('uri')) {
        result.success(false);
        return;
      }
      let uri: string = call.argument('uri');
      let modeStr: string = call.hasArgument('paramMode') ? call.argument('paramMode') : 'none';
      const mode: ParamMode = parseParamMode(modeStr);
      this.openByUri(uri, mode).then((success: boolean) => {
        result.success(success);
      });
      return;
    }

    result.notImplemented();
  }
}
