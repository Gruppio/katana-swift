//
//  AppDelegate.swift
//  Demo
//
//  Created by Luca Querella on 13/08/16.
//  Copyright © 2016 Bending Spoons. All rights reserved.
//

import UIKit
import Katana

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  var root: AnyNode?
  
  
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    
    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.rootViewController = UIViewController()
    self.window?.rootViewController?.view.backgroundColor = UIColor.white
    self.window?.makeKeyAndVisible()
    
    let view = (self.window?.rootViewController?.view)!
    
    self.root = App(props: EmptyProps().frame(CGSize(width: 320, height: 480)), children: []).node()
    
    self.root!.render(container: RenderContainers(containers: [view]))
    
    return true
  }
  
  
}
