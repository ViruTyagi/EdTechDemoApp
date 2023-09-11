//
//  SplashScreen.swift
//  EdTech Mobile
//
//  Created by Vishavesh on 10/09/23.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if isActive {
                IntroductionView()
            } else {
                Image("splash")
                    .resizable()
                    .scaledToFit()
                
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                withAnimation {
                    isActive = true
                }
                
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
