//
//  SettingsView.swift
//  Fructus
//
//  Created by Mohamed El-Alafty on 03/08/2022.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                //:- Section 1
                GroupBox(){
                    HStack{
                        Text("Fructus".uppercased())
                            .font(.system(size: 22).bold())
                        Spacer()
                        Image(systemName: "info.circle")
                    }
                    Divider().padding(.vertical, 5)
                    HStack(alignment: .center, spacing: 20){
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80, alignment: .center)
                            .cornerRadius(10)
                        
                        Text("Most fruits are rich in vitamens, low in fat, and have many different nutritional values. Fructus app helps you to gather all these info in just one place with the ease of 3 clicks")
                            .font(.footnote)
                    }
                }
                .padding()
                //:- Section 2
                GroupBox(){
                    HStack{
                        Text("Restart")
                            .font(.title3)
                            .bold()
                        Spacer()
                        Image(systemName: "paintbrush")
                    }
                    
                    Divider().padding(.vertical, 5)
                    
                    Toggle(isOn: $isOnboarding) {
                        if isOnboarding {
                            Text("Restarted".uppercased())
                                .foregroundColor(.green)
                                .fontWeight(.bold)
                        } else {
                            Text("Restart App".uppercased())
                        }
                    }
                    .padding()
                    .background(
                        Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    )
                    
                    Text("This feature allows you to restart the app from the beginning and view the welcoming screen again.")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .layoutPriority(1)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                
                }
                .padding()
                //:- Section 3
                GroupBox(){
                    HStack{
                        Text("Application")
                            .font(.title3)
                            .bold()
                        Spacer()
                        Image(systemName: "apps.iphone")
                    }
                    SettingsBar(title: "Developer", content: "AlaftiCo.")
                    SettingsBar(title: "Designer", content: "Robert Petras")
                    SettingsBar(title: "Website", linklabel: "Alafti.Com", linkDestination: "www.alaftico.wixsite.com/alaftico")
                    SettingsBar(title: "Compatability", content: "iOS 15 and older")
                    SettingsBar(title: "Version", content: "1.1.0")
                    
                }
                .padding()
            }
            .navigationBarTitle("Settings", displayMode: .large)
            .toolbar {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
