//
//  main.swift
//  FindMyFiles20160124HomeworkSunCaleb
//
//  Created by Eric Sze on 1/24/16.
//  Copyright © 2016 myApps. All rights reserved.
//

import Foundation

func findFile(name: String, atPath: String) -> String {
    let fileManager = NSFileManager.defaultManager()
    let contents = try! fileManager.contentsOfDirectoryAtPath(atPath)
    
    for fileOrDir in contents {
        var isDir = ObjCBool(false);
        let fullPath = atPath + "/" + fileOrDir
        let exists = fileManager.fileExistsAtPath(fullPath, isDirectory: &isDir)
        
        if exists && Bool(isDir) {
            
            // YOUR CODE HERE
            findFile(name, atPath: fullPath)
            print("DIR: " + fileOrDir)
        } else if exists {
            // YOUR CODE HERE
            if (fileOrDir == name){
                print("FILE: " + fileOrDir)
                print("File is at: \(fullPath)")
                return fullPath
            }
            print("FILE: " + fileOrDir)
        } else {
            print("NEITHER: " + fileOrDir)
        }
    }
    return "NOT FOUND"
}

print(findFile("cog.png", atPath: "/Users/ericsze/Desktop"))