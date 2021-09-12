//
//  main.swift
//  Programmers_카카오_크레인인형뽑기게임
//
//  Created by 임지성 on 2021/09/12.
//

import Foundation

func solution(_ board: [[Int]], _ moves: [Int]) -> Int {
    
    var copiedboard = board
    var bucket = [Int]()
    var removeCnt = 0
    
    moves.forEach { move in
        let trulyMoves = move - 1
        for idx in 0..<copiedboard.count {
            let doll = copiedboard[idx][trulyMoves]
            guard doll != 0 else {
                continue
            }
            copiedboard[idx][trulyMoves] = 0
            if bucket.last == doll {
                bucket.removeLast()
                removeCnt += 2
            } else {
                bucket.append(doll)
            }
            break
        }
    }
    
    return removeCnt
}


/*
 [
 [0,0,0,0,0],
 [0,0,1,0,3],
 [0,2,5,0,1],
 [4,2,4,4,2],
 [3,5,1,3,1]
 ]
 
 4
 2
 4
 */
