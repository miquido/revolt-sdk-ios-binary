# Revolt iOS 

Library is written in Swift. Dedicated for tracking events, using standard JSON format, codable objects or even just dictionary. 

Minimum Deployment Target: iOS 10.0

Installation of the Revolt
# Updates


| VERSION | UPDATES |
|---|---|
| 1.0.0 | Revolt SDK released !!!
| 1.0.1 | Fix minor issues
| 1.0.2 | Support for Xcode 10, Swift 4.2
| 1.0.3 | Support screen tracking, bug fixing
| 1.0.4 | Fix issue with sending old events
| 1.0.5 | Add zoneOffset related to GMT difference
| 1.0.6 | Fix SDK version, and utilize events
| 1.0.7 | Support Swift 5
| 1.0.8 | Support for Xcode 11

# Installation

## Cocoa Pods
Cocoa pods are a dependency management system for iOS. If you do not have cocoa pods configured, please read the installation documents on their website (https://guides.cocoapods.org/using/getting-started.html). If you use another dependency management system or do not wish to implement one, please contact us for alternative options.

Once you have cocoa pods installed, navigate to the Podfile in your app’s root directory. In the file, add the lines:

```
use_frameworks!

target :XXXXX do
    pod 'Revolt'
end
```

where *XXXXX* is the name of your app target

```
pod install
```

If you encounter permission issues, ensure the GitHub username step has been successfully completed. Please consult the cocoapods documentation if you have any other issues with this step. If your process freezes on “Analysing dependencies”, try running *pod repo remove master*, *pod setup*, then *pod install* again.

# Start/Stop Revolt
Starting the Revolt with a trackingId and secret key

To start the Revolt (preferably in your AppDelegate didFinishLaunchingWithOptions) use the following method

```swift
import Revolt

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    Revolt.setup(trackingId: "your_tracking_id", secretId: "your_secret_id", serviceAddress: "your_service_address")
    return true
}
```

When you want to start/stop sending events. It is important to understand that this framework will collect events offline.

```swift

 Revolt.start()
 Revolt.stop()

```

# Screen tracking

We already implemented screen tracking, by default it's enabled

```swift

Revolt.screenTracking(enabled: true)
Revolt.screenTracking(enabled: false)

```


# Log Level
Any time you are able to change the log level, by default is set to *warning*
```swift

 Revolt.setLog(level: .debug)
```

# Sending Events
All events are sent asynchronously with minimum priority level. There is no risk to send even 1000 custom events at once. 
We created few types of events described below.

Types of Events

* Custom 
    - with Codable object
```swift
    struct UserCustom: Codable {
        let firstName: String
        let lastName: String
        let values: [Int]
    }
    let variable = UserCustom(firstName: "user_firstname", lastName: "user_lastname", values: [0, 1])
    Revolt.sendEventCustom(event: Revolt.EventCustomType<UserCustom>.codable(object: variable), name: "user.custom")

```
   - with JSONSerialization.data
```swift
    let data = try! JSONSerialization.data(withJSONObject: ["t2": 5, "t3": 5.21], options: .prettyPrinted)
    Revolt.sendEventCustom(event: Revolt.EventCustomType<UserCustom>.json(data: data), name: "user.custom")

```
   - with  dictionary
```swift
    Revolt.sendEventCustom(event: Revolt.EventCustomType<UserCustom>.raw(dictionary: ["parameter1": 1, "parameter2": "value2"]), name: "user.custom")

```

* Profile

```swift
    Revolt.send(event: .profile(appUserId: "appUserId", birthYear: 2018, gender: .male, country: "Poland", city: "Krakow"))

```

* SignIn

```swift
    Revolt.send(event: .signIn(appUserId: "appUserId"))
```

* SignOut

```swift
    Revolt.send(event: .signOut(appUserId: "appUserId"))
```
