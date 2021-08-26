//
//  main.swift
//  BaekJoon_10872_팩토리얼
//
//  Created by 임지성 on 2021/08/26.
//

import Foundation

let num = Int(readLine()!)!

func factorial(n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(n: n - 1)
    }
}

print(factorial(n: num))
