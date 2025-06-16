int uniquePaths(int m, int n) {
  List<List<int>> dp = List.generate(m, (_) => List.filled(n, 1));

  for (int i = 1; i < m; i++) {
    for (int j = 1; j < n; j++) {
      dp[i][j] = dp[i - 1][j] + dp[i][j - 1];
    }
  }

  return dp[m - 1][n - 1];
}

void main() {
  int m = 3;
  int n = 7;
  print("Unique paths from (0,0) to ($m,$n): ${uniquePaths(m, n)}");
}
