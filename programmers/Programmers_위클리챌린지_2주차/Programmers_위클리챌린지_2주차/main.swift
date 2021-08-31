//
//  main.swift
//  Programmers_위클리챌린지_2주차
//
//  Created by 임지성 on 2021/08/31.
//

import Foundation

func solution(_ scores:[[Int]]) -> String {
    var score = [Int]()
    var grade = ""
    
    for i in 0..<scores.count {
        for j in 0..<scores.count {
            score.append(scores[j][i])
        }
        
        let min = score.min()
        let max = score.max()
        
        var cnt = ["min":0, "max":0]
        
        for num in score {
            if num == min {
                cnt["min"]! += 1
            } else if num == max {
                cnt["max"]! += 1
            }
        }
        
        if cnt["max"]! == 1 && cnt["min"]! > 1 {
            if score[i] == max {
                score.remove(at: i)
            }
        } else if cnt["max"]! > 1 && cnt["min"]! == 1 {
            if score[i] == min {
                score.remove(at: i)
            }
        } else if cnt["max"]! == 1 && cnt["min"]! == 1 {
            if score[i] == max || score[i] == min {
                score.remove(at: i)
            }
        }
        let scoreSum = score.reduce(0, +)
        let result = Int(scoreSum / score.count)
        grade += grades(result)
        score.removeAll()
    }
    return grade
}


func grades(_ scores: Int) -> String {
    var result = ""
    
    switch scores {
    case 90...100:
        result = "A"
    case 80...89:
        result = "B"
    case 70...79:
        result = "C"
    case 50...69:
        result = "D"
    default:
        result = "F"
    }
    return result
}
