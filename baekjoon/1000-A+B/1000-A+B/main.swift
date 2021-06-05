//
//  main.swift
//  1000-A+B
//
//  Created by 임지성 on 2021/06/05.
//

import Foundation

print((readLine()?.split(separator: " ").map { Int($0)! }.reduce(0) { $0 + $1 })!)

