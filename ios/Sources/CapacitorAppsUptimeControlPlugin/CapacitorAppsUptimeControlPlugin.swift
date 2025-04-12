import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorAppsUptimeControlPlugin)
public class CapacitorAppsUptimeControlPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "CapacitorAppsUptimeControlPlugin"
    public let jsName = "CapacitorAppsUptimeControl"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = CapacitorAppsUptimeControl()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
