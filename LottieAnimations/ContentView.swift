//
//  ContentView.swift
//  LottieAnimations
//
//  Created by Sergey Shcheglov on 24.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                LottieView(fileName: "onboarding", loopMode: .repeatBackwards(.infinity))
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
