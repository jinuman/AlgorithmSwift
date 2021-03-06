// 피보나치 함수

/*
func fibonacci(_ n: Int) {
    if n == 0 { print("0") }
    else if n == 1 { print("1") }
    else { return fibonacci(n-1) + fibonacci(n-2) } ;
}
*/
// 위 함수에서 fibonacci(N)을 호출했을 때, 0과 1이 몇번 호출되는지 구하는 문제
// dp[n][0] : fibonacci(n)에서 0이 몇번 호출되는지 저장
// dp[n][1] : fibonacci(n)에서 1이 몇번 호출되는지 저장

import Foundation

final class B_1003 {
    func run() {
        var memo: [[Int]] = Array(
            repeating: Array(repeating: 0, count: 2),
            count: 41
        )

        guard let testcaseCount = Int(readLine() ?? "0") else { return }

        for _ in 0 ..< testcaseCount {
            guard let n = Int(readLine() ?? "0") else { return }
            memo[0][0] = 1
            memo[1][1] = 1

            for i in stride(from: 2, through: n, by: 1) {
                memo[i][0] = memo[i - 1][0] + memo[i - 2][0]
                memo[i][1] = memo[i - 1][1] + memo[i - 2][1]
            }
            print(memo[n][0], memo[n][1])
        }
    }
}

/*
input
3
0
1
3

output
1 0
0 1
1 2
*/
