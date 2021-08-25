//
//  main.swift
//  BaekJoon_1000_A+B
//
//  Created by 임지성 on 2021/08/25.
//

import Foundation


print((readLine()?.split(separator: " ").map { Int($0)! }.reduce(0) { $0 + $1 })!)

