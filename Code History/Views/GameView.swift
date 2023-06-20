//
//  ContentView.swift
//  Code History
//
//  Created by Angelo Delgado on 6/19/23.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .background(
                NavigationLink(destination: Text("Game Over!"), isActive: .constant(viewModel.gameIsOver), label: { EmptyView() })
        )
        .foregroundColor(.white)
       //.navigationBarHidden This code will be removed in the future .toolbar(.hidden) This code is prefered
        .navigationBarBackButtonHidden()
        .environmentObject(viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
