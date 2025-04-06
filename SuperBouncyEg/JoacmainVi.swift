//
//  JoacmainVi.swift
//  SuperBouncyEg
//
//  Created by Nicolae Chivriga on 06/04/2025.
//

import SwiftUI
import Lottie

struct JoacmainVi: View {
    @State var shiuw: Bool = false
    var body: some View {
        ZStack {
            Image("mukujuse")
                .resizable()
                .ignoresSafeArea()
            
            if !shiuw {
                LottieView(animation: .named("culsi"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: 250, height: 250)
            }
            
            
            WKWebViewRepresentable(url: URL(string: "https://freepolicyourgheim.xyz/red/game/super-bouncy-egg/")!)
                .mask {
                    Rectangle()
                        .padding(.horizontal, UIScreen.main.bounds.width > 680 ? 97 : 48)
                }
            
        }
        .asfeasnr()
    }
}
