//
//  main.swift
//  Programmers_카카오인턴_키패드누르기
//
//  Created by 임지성 on 2021/09/06.
//

import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    enum useHand {
        case left
        case right
    }
    // 1...12 까지 세로로는 3차이 가로로는 1차이
    // 절댓값 (손의 위치 - 가야할 위치) / 3 의 몫과 나머지를 더하면 이동거리
    var result = ""
    var leftHand = 10 // * 왼손 초기 시작 지점 or 왼손 위치
    var rightHand = 12 // # 오른손 초기 시작 지점 or 오른손 위치
    
    for i in numbers {
        let number = i == 0 ? 11 : i
        var touchHand: useHand = .left
        
        switch number {
        case 1, 4, 7:
            touchHand = .left
        case 3, 6, 9:
            touchHand = .right
        case 2, 5, 8, 11:
            let leftDiff = (number - leftHand).magnitude
            let rightDiff = (number - rightHand).magnitude
            
            let leftDistance = (leftDiff / 3) + (leftDiff % 3)
            let rightDistance = (rightDiff / 3) + (rightDiff % 3)
            
            if leftDistance == rightDistance {
                touchHand = hand == "left" ? .left : .right
            } else {
                touchHand = leftDistance < rightDistance ? .left : .right
            }
        default:
            break
        }
        if touchHand == .left {
            result.append("L")
            leftHand = number
        } else {
            result.append("R")
            rightHand = number
        }
    }
    return result
}
