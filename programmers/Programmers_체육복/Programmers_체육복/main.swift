//
//  main.swift
//  Programmers_체육복
//
//  Created by 임지성 on 2021/09/28.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var answer = 0
    var lostSet = Set(lost).subtracting(reserve)
    let reserveSet = Set(reserve).subtracting(lost)
    
    for reserve in reserveSet {
        if lostSet.contains(reserve - 1) { //
            lostSet.remove(reserve - 1)
            continue
        }
        if lostSet.contains(reserve + 1) {
            lostSet.remove(reserve + 1)
        }
    }
    answer = n - lostSet.count
    
    return answer
}


