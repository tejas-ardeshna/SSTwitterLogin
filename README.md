# SSTwitterLogin
The reusable Twitter login components for iOS is the easiest way to get data from Twitter.

# Features
•	 Get default user data from Twitter

# Requirements
•	iOS 10.0+
•	Xcode 9.0

# Installation
Take TwitterLoginHelper.swift, and TwitterConstant.Swift
Import two files in your project and it's done

# Manually
1.	Configure Twitter App Settings for iOS (https://apps.twitter.com/)
2.	Download TwitterKit SDK 
3.	Add SDK to Project
4.	Configure Xcode Project
5.	Connect App Delegate Using TwitterLoginManger.swift Methods
6.	Congratulations!

# Pod
1.	Configure Twitter App Settings for iOS (https://apps.twitter.com/)
2.	Install Pod ‘SSTwitterLogin’
3.	Configure Xcode Project
4.	Connect App Delegate Using TwitterLoginManger.swift Methods
5.	Congratulations!

# Usage example

**Add following in your application:didFinishLaunchingWithOptions launchOptions:

```  
 func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        TwitterLoginHelper.sharedInstance.twitterStartwith(consumerKey: TwitterKeys.KConsumerKey, consumerSecret: TwitterKeys.KConsumerSecret)
        return true
 }
```

**Add following in your application:openURL:options function**

```
  func application(_ application: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey: Any] = [:]) -> Bool {
        return TwitterLoginHelper.sharedInstance.twitterConfigurationWithOptions(application,open: url, options:options)
    }
```



**To Do Twitter Login**

```
TwitterLoginHelper.sharedInstance.doLoginWithTwitter { (isSuccess, error) in
            if isSuccess {
               // Fetch LoggedIn User's Details
            } else {
                print(error?.localizedDescription ?? "")
                TwitterLoginHelper.sharedInstance.logoutFromTwitter()
            }
}
```

**To Fetch LoggedIn User's Details** 

```
TwitterLoginHelper.sharedInstance.getLoggedInUserDetailswith(completion: { (userData, error) in
            if userData != nil {
                print("UserData: \(userData?.userID ?? 0)")
            } else {
                print(error?.localizedDescription ?? "")
            }
        })
```

#  Contribute
-   We would love you for the contribution to SSspinnerButton, check the LICENSE file for more info.
 
#  Meta
-    Distributed under the MIT license. See LICENSE for more information.
