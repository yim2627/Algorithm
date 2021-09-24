//
//  main.swift
//  Programmers_로또최고최저순위
//
//  Created by 임지성 on 2021/09/24.
//

import Foundation

func solution(_ lottos: [Int], _ win_nums: [Int]) -> [Int] {
    let zeroCount = lottos.filter({ $0 == 0 }).count
    let winCount = lottos.filter({ win_nums.contains($0) }).count
    
    return [winCount+zeroCount, winCount].map({ $0 <= 1 ? 6 : 7 - $0 })
}

print(solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]))
