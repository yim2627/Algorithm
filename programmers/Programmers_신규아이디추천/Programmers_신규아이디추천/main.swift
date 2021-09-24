//
//  main.swift
//  Programmers_신규아이디추천
//
//  Created by 임지성 on 2021/09/24.
//

import Foundation

func solution(_ new_id:String) -> String {
    // 1단계
    var my_id = new_id.lowercased()
    
    // 2단계
    var newID: String = ""
    for i in my_id {
        if i.isNumber || i.isLetter || i == "." || i == "-" || i == "_" {
            newID.append(i)
        }
    }
    
    // 3단계
    while newID.contains("..") {
        newID = newID.replacingOccurrences(of: "..", with: ".")
    }
    
    // 4단계
    while newID.hasPrefix(".") {
        newID.removeFirst()
    }
    
    while newID.hasSuffix(".") {
        newID.removeLast()
    }
    
    // 5단계
    if newID == "" {
        newID.append("a")
    }
    
    // 6단계
    if newID.count >= 16 {
        newID.removeSubrange(newID.index(newID.startIndex, offsetBy: 15)..<newID.endIndex)
    }
    
    if newID.hasSuffix(".") {
        newID.removeLast()
    }
    
    // 7단계
    while newID.count <= 2 {
        newID += String(newID.last!)
    }
    
    return newID
}

//print(solution("...!@BaT#*..y.abcdefghijklm"))
