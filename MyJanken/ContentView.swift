//
//  ContentView.swift
//  MyJanken
//
//  Created by tanaka  on 2021/04/19.
//

import SwiftUI

struct ContentView: View {
    
    // じゃんけんの状態変数の宣言
    @State var answerNumber = 0
    
    var body: some View {
        
        // 垂直にレイアウト(縦方向にレイアウト)
        VStack {
            
            // スペース追加
            Spacer()
            // じゃんけんの数字が０だったら
            if answerNumber == 0{
                // 初期画面テキストの表示
                Text("これからじゃんけんをします")
                //  下辺に余白を設定
                    .padding(.bottom)
            }else if answerNumber == 1 {
                // じゃんけんの数字が1だったら、グー画像表示
                // グー画像を追加
                Image("gu")
                    // リサイズを指定
                    .resizable()
                    // 画面内に収まるように、アスペクト比を(縦横比)を維持する指定
                    .aspectRatio(contentMode:.fit)
                
                // スペース追加
                Spacer()
                
                // じゃんけんの種類を指定
                Text("グー")
                    //  下辺に余白を設定
                    .padding(.bottom)
            }else if answerNumber == 2 {
                // じゃんけんの数字が2だったら、チョキ画像表示
                // チョキ画像を追加
                Image("choki")
                    // リサイズを指定
                    .resizable()
                    // 画面内に収まるように、アスペクト比を(縦横比)を維持する指定
                    .aspectRatio(contentMode:.fit)

                // スペース追加
                Spacer()
                
                // じゃんけんの種類を指定
                Text("チョキ")
                    //  下辺に余白を設定
                    .padding(.bottom)
            }else{
                // じゃんけんの数字が3だったら、パー画像表示
                // パー画像を追加
                 Image("pa")
                     // リサイズを指定
                     .resizable()
                     // 画面内に収まるように、アスペクト比を(縦横比)を維持する指定
                     .aspectRatio(contentMode:.fit)
                
                // スペース追加
                Spacer()
                 
                 // じゃんけんの種類を指定
                 Text("パー")
                    //  下辺に余白を設定
                    .padding(.bottom)
            }
       
           
            
            //　「じゃんけんをする」　ボタン
            Button(action: {
                // Buttonがタップされた時の動き
                print("タップされたよ")
                
                // 新しいじゃんけん結果を一時的に格納する変数を設ける
                var newAnswerNumber = 0
                
                // ランダムに結果を出すが、前回の結果と異なる場合のみ採用
                // repeatは繰り返しを意味する
                repeat{
                    newAnswerNumber = Int.random(in: 1...3)
                    
                    // 前回と同じ結果の時は、再度ランダムに数値を出す
                    // 異なる結果の時は、repeatを抜ける
                }while answerNumber == newAnswerNumber
                
                // 新しいじゃんけんの結果を格納
                answerNumber = newAnswerNumber
            }) {
                // Buttonに表示する文字を指定
                Text("じゃんけんをする！")
                    .frame(maxWidth:.infinity)
                    .frame(height:100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }// 「じゃんけんをする」ボタン　ここまで
            
        }// VStackここまで
    }// body ここまで
}// ContentView ここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
