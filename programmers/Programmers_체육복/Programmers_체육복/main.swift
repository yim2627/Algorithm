//
//  main.swift
//  Programmers_체육복
//
//  Created by 임지성 on 2021/09/28.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var answer = 0
    var lostSet = Set(lost).subtracting(reserve) //(제한사항 5)
    let reserveSet = Set(reserve).subtracting(lost) // 중복제거(Set), Sutract(차집합) 이유 - 여벌 체육복을 가져온 학생이 체육복을 도난당했을 수 있습니다. (제한사항 5)
    
    for reserve in reserveSet {
        if lostSet.contains(reserve - 1) { // 앞사람 먼저 확인 (Greedy)
            lostSet.remove(reserve - 1) // 체육복 없는 사람(lost)에게 빌려줬기떄문에 lost에서 빠지게 됨
            continue
        }
        if lostSet.contains(reserve + 1) { // 뒷사람 확인
            lostSet.remove(reserve + 1) // 체육복 없는 사람(lost)에게 빌려줬기떄문에 lost에서 빠지게 됨
        }
    }
    answer = n - lostSet.count // 전체 인원 - 체욱복 없는 사람수
    
    return answer
}


