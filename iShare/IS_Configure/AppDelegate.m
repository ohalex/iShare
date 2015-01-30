//
//  AppDelegate.m
//  iShare
//
//  Created by 伍松和 on 15/1/13.
//  Copyright (c) 2015年 iShare. All rights reserved.
//

#import "AppDelegate.h"
#import "IS_NavigationController.h"
#import "IS_HomeController.h"
#import "RootControllerTool.h"



@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //iShare_List
    
    // [self setNaviAppearance];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] ;
    [self.window makeKeyAndVisible];
    
    //1.首页
    
//    [RootControllerTool chooseRootControllerFirstState:ROOT_CONTROLLER_STATE_NO_ACCOUNT_HAVE_TUTOUIAL];
    
    IS_HomeController * homeCtrl = [[IS_HomeController alloc]init];
    IS_NavigationController * navCtrl = [[IS_NavigationController alloc]initWithRootViewController:homeCtrl];
    self.window.rootViewController =navCtrl;
    
    //2
    [[UINavigationBar appearance] setBarTintColor:kColor(249, 249, 249)];
    [[UINavigationBar appearance] setTintColor:kColor(44, 166,255)];//142
     NSDictionary * font_dic =@{NSForegroundColorAttributeName:kColor(107, 107, 107),
                               NSFontAttributeName:[UIFont boldSystemFontOfSize:20]};
    [[UINavigationBar appearance] setTitleTextAttributes:font_dic];

    return YES;

}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end