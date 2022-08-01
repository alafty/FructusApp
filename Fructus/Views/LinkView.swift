//
//  SwiftUIView.swift
//  Fructus
//
//  Created by Mohamed El-Alafty on 01/08/2022.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        GroupBox(){
            HStack {
                Text("Source")
                Spacer ()
                Link(destination: URL(string: "https://www.wikipedia.com")!) {
                    Text("Wikipedia")
                }
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
            
        }
    }
}

struct LinkView_UIPreview: PreviewProvider {
    static var previews: some View {
        LinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
