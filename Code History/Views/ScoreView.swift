//
//  ScoreView.swift
//  Code History
//
//  Created by Angelo Delgado on 6/19/23.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.body)
                Text("???%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack {
                    Text("??? ✅")
                    Text("??? ❌")
                }
                .font(.system(size: 30))
                Spacer()
                NavigationLink(
                    destination: GameView(), label: {
                        BottomTextView(str: "Re-take Quiz")
                    })
            }
            .foregroundColor(.white)
           // .navigationBarHidden(true) old code. Use toolbar
            .toolbar(.hidden)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
