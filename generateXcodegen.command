#!/bin/sh

# カレントディレクトリをファイルのある場所にする
cd `dirname $0`
# xcodegenでプロジェクトファイルの作成
xcodegen generate
# pods更新
pod install
# workspaceを開く
open SampleApp.xcworkspace
