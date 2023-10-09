//
//  AppDelegate.swift
//  Night Surf
//
//  Created by Cyril Steger on 09.10.2023.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ notification: Notification) {
        // Override point for customization after application launch.
    }
    func applicationWillTerminate(_ notification: Notification) {
           // Insert code here to tear down your application
       }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }

}
