//
//  main.swift
//  Programmers_두개뽑아서더하기
//
//  Created by 임지성 on 2021/09/14.
//

import Foundation

func solution(_ numbers: [Int]) -> [Int] {
    
    var nums = Set<Int>() // 중복 제거
    
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            nums.insert(numbers[i] + numbers[j])
        }
    }
    return nums.sorted()
}

