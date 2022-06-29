//
//  ContentView.swift
//  ScrumDinger
//
//  Created by 中川賢亮 on 2022/06/29.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {

        VStack {

            ProgressView(value: 5, total: 15)
            HStack {

                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }

                Spacer()

                VStack(alignment: .trailing) {
                    Text("Secounds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")

                }
            }// HStack
            // アクセシビリティとは
            // 障がいのある人でもアプリを存分に楽しめるようにする機能
            // VoiceOverは視覚に障害のある人もデバイスの操作ができるようにする
            // iOSではジェスチャー、Macではキーボードを用いて操作
            // 理解しやすいラベルと値情報の記述が必要
            .accessibilityElement(children: .ignore)  // ❓
            .accessibilityLabel("Time remaining")    // ❓
            .accessibilityValue("10 minuts")
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")

                Spacer()

                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                // Imageにlabelを付与することで直感的なアクセシビリティラベルを設定可能
                .accessibilityLabel("Next speaker")
            }
        } // VStack
        .padding()

    } // body
} // View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
