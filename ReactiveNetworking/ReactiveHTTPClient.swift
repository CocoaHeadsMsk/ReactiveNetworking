//
//  ReactiveHTTPClient.swift
//  ReactiveNetworking
//
//  Created by Contento on 28/06/14.
//  Copyright (c) 2014 CocoaHeadsMsk. All rights reserved.
//

import Foundation

class ReactiveHTTPClient {
    func GET(URL: NSURL, parameters: Dictionary<String, String>, success: ((AnyObject?) -> Void)?, failure: ((AnyObject?) -> Void)?) -> Void {
        let session = NSURLSession.sharedSession()
        
        var task: NSURLSessionDataTask = session.dataTaskWithHTTPGetRequest(URL, completionHandler: {data, response, error in
            if let realError = error {
                failure?(realError)
            } else {
                success?(response)
            }
        })
        
        task.resume()
    }
}
