//
//  main.swift
//  Programmers_부족한_금액_계산하기
//
//  Created by 임지성 on 2021/08/30.
//

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1

    //price*count + price*(count+1) + price*(count+2) + price*(count+3) = total
    //total - money = answer
    var total = 0

    for cnt in 1...count {
        total += price * cnt
    }
    answer = Int64(total - money)

    if answer > 0 {
        return answer
    } else {
        return 0
    }
}

//고차함수
/*func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let answer = (1...count).reduce(0) { $0 + price * $1 }
    return answer > money ? Int64(answer - money) : 0
}*/

print(solution(3, 30, 4))

