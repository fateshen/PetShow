//
//  AppDelegate.m
//  PetShow
//
//  Created by Apple on 15/10/25.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    

    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];


    // Override point for customization after application launch.
    self.window.backgroundColor=[UIColor whiteColor];
    ShoppingViewController *shopping=[[ShoppingViewController  alloc]init];
    UINavigationController *shoppNavi=[[UINavigationController alloc]initWithRootViewController:shopping];
    shoppNavi.tabBarItem.image=[UIImage imageNamed:@"Shopping"];
    shoppNavi.tabBarItem.title=@"商城";
    NearByViewController *nearby=[[NearByViewController  alloc]init];
    UINavigationController *nearbyNavi=[[UINavigationController alloc]initWithRootViewController:nearby];
    nearbyNavi.tabBarItem.image=[UIImage imageNamed:@"NearBy"];
    nearbyNavi.tabBarItem.title=@"附近";
    MessageViewController *message=[[MessageViewController  alloc]init];
    UINavigationController *messageNavi=[[UINavigationController alloc]initWithRootViewController:message];
    messageNavi.tabBarItem.image=[UIImage imageNamed:@"Message"];
    messageNavi.tabBarItem.title=@"消息";
    FindViewController *find=[[FindViewController  alloc]init];
    UINavigationController *findNavi=[[UINavigationController alloc]initWithRootViewController:find];
    findNavi.tabBarItem.image=[UIImage imageNamed:@"Find"];

    findNavi.tabBarItem.title=@"发现";
    MineViewController *mine=[[MineViewController  alloc]init];
    UINavigationController *mineNavi=[[UINavigationController alloc]initWithRootViewController:mine];
    mineNavi.tabBarItem.image=[UIImage imageNamed:@"Mine"];
    mineNavi.tabBarItem.title=@"我的";
    UITabBarController *tabBatController = [[UITabBarController alloc] init];
    
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, KDeviceW, 49)];
    backView.backgroundColor = RGB(134, 134, 134);
    [tabBatController.tabBar insertSubview:backView atIndex:0];
    tabBatController.tabBar.opaque = YES;
    tabBatController.viewControllers =@[shoppNavi,nearbyNavi,messageNavi,findNavi,mineNavi];
    
    tabBatController.tabBar.selectedImageTintColor = [UIColor whiteColor];

    self.window.rootViewController = tabBatController;
    
    
    
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
