//
//  LottieView.swift
//  LottieAnimations
//
//  Created by Sergey Shcheglov on 24.12.2022.
//

import Lottie
import SwiftUI
import UIKit

struct LottieView: UIViewRepresentable {
    typealias UIViewType = UIView
    var fileName: String
    var loopMode: LottieLoopMode
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        
        let animationView = LottieAnimationView(name: fileName)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()
        view.addSubview(animationView)
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
        //do nothing
    }
}
