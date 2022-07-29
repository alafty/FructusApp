//
//  ViewButton.swift
//  Fructus
//
//  Created by Mohamed El-Alafty on 28/07/2022.
//

import SwiftUI

struct ViewButton: View {
    var body: some View {
            Button {
                print("Clicked")
            } label: {
                HStack {
                    Text("View More")
                        .foregroundColor(.white)
                    Image(systemName: "arrow.right.circle")
                        .imageScale(.large)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(
                    Capsule()
                        .strokeBorder(.white)
                )
            }
    }
}

struct ViewButton_Previews: PreviewProvider {
    static var previews: some View {
        ViewButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
