#!/bin/bash

CONTEST_NAME=$1

mkdir -p "$CONTEST_NAME"

PROBLEMS=("A" "B" "C" "D" "E")

read -r -d '' TEMPLATE << 'EOF'
#include <bits/stdc++.h>
// #include <atcoder/all>

using namespace std;
// using namespace atcoder;

constexpr int INF = 2e9;
constexpr array<int, 4> dx = {-1, 1, 0, 0};
constexpr array<int, 4> dy = {0, 0, -1, 1};

struct Vec2 {
    int x, y;
    auto operator<=>(const Vec2& other) const = default;
};

void Yes() { println("Yes"); }
void No() { println("No"); }

int main() {
    
}
EOF

for char in "${PROBLEMS[@]}"; do
    FILE_PATH="${CONTEST_NAME}/${CONTEST_NAME}${char}.cpp"

    if [ ! -e "$FILE_PATH" ]; then
        echo "$TEMPLATE" > "$FILE_PATH"
    fi
done
