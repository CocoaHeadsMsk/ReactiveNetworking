//
//  AppDelegate.swift
//  ReactiveNetworking
//
//  Created by Contento on 28/06/14.
//  Copyright (c) 2014 CocoaHeadsMsk. All rights reserved.
//

import Cocoa
//import ReactiveHTTPClient

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet var window: NSWindow


    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        var client = ReactiveHTTPClient()
        
        let url = NSURL.URLWithString("http://google.com")
        
        client.GET(url, parameters: ["param1": "val1"], success: {response, data in
                println(data)
            }, failure: nil)
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }
}
