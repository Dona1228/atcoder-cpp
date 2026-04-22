#!/bin/bash

CONTEST_NAME=$1

mkdir -p "$CONTEST_NAME"

PROBLEMS=("A" "B" "C" "D" "E")

read -r -d '' TEMPLATE << 'EOF'
#include <bits/stdc++.h>
// #include <atcoder/all>

using namespace std;
// using namespace atcoder;

#define Yes cout << "Yes" << endl
#define No cout << "No" << endl

constexpr int INF = 2'000'000'000;
constexpr int dx[4] = {-1, 1, 0, 0};
constexpr int dy[4] = {0, 0, -1, 1};

struct Vec2 {
    int x, y;
    auto operator<=>(const Vec2 &other) const = default;
};

int main() {
    ios_base::sync_with_stdio(false);
    cin.tie(nullptr);
    
    
}
EOF

for char in "${PROBLEMS[@]}"; do
    FILE_PATH="${CONTEST_NAME}/${CONTEST_NAME}${char}.cpp"
    
    if [ ! -e "$FILE_PATH" ]; then
        echo "$TEMPLATE" > "$FILE_PATH"
    fi
done