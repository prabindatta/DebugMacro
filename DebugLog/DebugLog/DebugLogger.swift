//
//  DebugLogger.swift
//  DebugLog
//
//  Created by Prabin K Datta on 26/04/17.
//  Copyright © 2017 Prabin K Datta. All rights reserved.
//

import Foundation

/*
 #ifdef DEBUG
 #   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
 #else
 #   define DLog(...)
 #endif
 // ALog always displays output regardless of the DEBUG setting
 #define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
 */

#if Debug
    func DLog(message: String, filename: String = #file, function: String = #function, line: Int = #line) {
        print("[\((filename as NSString).lastPathComponent):\(line)] \(function) - \(message)")
    }
#else
    func DLog(message: String, filename: String = #file, function: String = #function, line: Int = #line) { }
#endif
func ALog(message: String, filename: String = #file, function: String = #function, line: Int = #line) {
    print("[\((filename as NSString).lastPathComponent):\(line)] \(function) - \(message)")
}
