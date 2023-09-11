//
//  MainActionButton.swift
//  EdTech Mobile
//
//  Created by Vishavesh on 10/09/23.
//

import SwiftUI

struct MainButton: View {
    @State var title: String
    var body: some View {
        Button {
            // TODO: Action Bar
        } label: {
            ZStack {
                Color(.orange)
                    .cornerRadius(16)
                    .frame(height: 60)
                Text(title)
                    .foregroundColor(.white)
                    .font(.headline)
            }
        }
        .padding(.horizontal, 32)
        .padding(.bottom,20)
    }
}
