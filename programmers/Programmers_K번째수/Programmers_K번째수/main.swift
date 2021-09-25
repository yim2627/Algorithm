//
//  main.swift
//  Programmers_K번째수
//
//  Created by 임지성 on 2021/09/25.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var result = [Int]()
    
    commands.forEach {
        result.append(array[$0[0]-1...$0[1]-1].sorted()[$0[2]-1])
    }
    
    return result
}

//print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
