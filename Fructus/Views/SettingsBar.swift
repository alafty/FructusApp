//
//  SettingsBar.swift
//  Fructus
//
//  Created by Mohamed El-Alafty on 03/08/2022.
//

import SwiftUI

struct SettingsBar: View {
    
    var title: String
    var content: String? = nil
    var linklabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 5)
            HStack{
                Text(title)
                    .foregroundColor(.secondary)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linklabel != nil && linkDestination != nil {
                    Link(destination: URL(string: "https://\(linkDestination!)")!) {
                        Text(linklabel!)
                    }
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.blue)
                }
                else{
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsBar(title: "Developer", content: "AlaftiCo.")
                .previewLayout(.sizeThatFits)
            .padding()
            SettingsBar(title: "Website", linklabel: "Alafti.Com", linkDestination: "www.google.com")
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
