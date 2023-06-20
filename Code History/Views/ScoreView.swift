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
