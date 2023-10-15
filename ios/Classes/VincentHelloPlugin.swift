import Flutter
import UIKit

public class VincentHelloPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "vincent_hello", binaryMessenger: registrar.messenger())
    let instance = VincentHelloPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

   private func receiveBatteryLevel(result: FlutterResult) {
   let device = UIDevice.current
   device.isBatteryMonitoringEnabled = true
   if device.batteryState == UIDevice.BatteryState.unknown {
    result(FlutterError(code: "UNAVAILABLE",
              message: "Battery level not available.",
              details: nil))
   } else {
    result(Int(device.batteryLevel * 100))
   }
  }
}
