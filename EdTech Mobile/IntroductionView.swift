//
//  ContentView.swift
//  EdTech Mobile
//
//  Created by Vishavesh on 08/09/23.
//

import SwiftUI

struct IntroductionView: View {
    @State var pageIndex: Int = 0
    @State var goToLogin: Bool = false
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    goToLogin = true
                } label: {
                    Text("Skip")
                        .foregroundColor(.gray)
                        .fontWeight(.bold)
                }
                .padding(.trailing,30)
            }
            
            
            Spacer()
            
            TabView {
                IntroHeadingView(
                    imageName: "illustration1", heading: "Learn anytime and anywhere", subheading: "Quarantine is the perfect time to spend your day learning something new, from anywhere!")
                .onAppear {
                    pageIndex = 0
                }
                IntroHeadingView(imageName: "illustration2",heading: "Find a course for you", subheading: "Quarantine is the perfect time to spend your day learning something new, from anywhere!")
                    .onAppear {
                        pageIndex = 1
                    }
                IntroHeadingView(imageName: "illustration3",heading: "Improve your skills", subheading: "Quarantine is the perfect time to spend your day learning something new, from anywhere!")
                    .onAppear {
                        pageIndex = 2
                    }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .onAppear {
                setupAppearance()
            }
            
            Spacer()

            Button {
                // TODO: Action Bar
            } label: {
                ZStack {
                    Color(.orange)
                        .cornerRadius(16)
                        .frame(height: 60)
                    Text("Next")
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
            .padding(.horizontal, 32)
            .padding(.bottom,20)
        }
        .navigate(to: LoginScreenView(), when: $goToLogin)
    }
    
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(red: 101, green: 170, blue: 230, alpha: 1)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
      }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}

struct IntroHeadingView: View {
    @State var imageName: String
    @State var heading: String
    @State var subheading: String
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
            
            Text(heading)
                .padding()
                .foregroundColor(.black)
                .font(.system(.largeTitle,design: .default,weight: .regular))
                .lineLimit(2)
            
            Text(subheading)
                .padding()
                .foregroundColor(.gray)
                .font(.system(.body,design: .default,weight: .regular))
        }
    }
}

