//
//  SettingsView.swift
//  Hike-App
//
//  Created by Fatih Emre Sarman on 9.08.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - SECTION: HEADER
            
            Section {
                
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack (spacing: -10){
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [.colorGreenLight, .colorGreenMedium, .colorGreenDark], startPoint: .topLeading, endPoint: .bottomTrailing))
                .padding(.top, 8)
                
                VStack (spacing: 8){
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                    .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. the hike that you hope to do again someday. \nFind the best hikes in the world.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.colorGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
               
            }//: Header
            .listRowSeparator(.hidden)
            // MARK: - SECTION: PROFILE
          
           
            
            // MARK: - SECTION: ICONS
            
            // MARK: - SECTION: ABOUT
        }
    }
}

#Preview {
    SettingsView()
}
