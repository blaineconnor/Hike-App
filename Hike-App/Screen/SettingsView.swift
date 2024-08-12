//
//  SettingsView.swift
//  Hike-App
//
//  Created by Fatih Emre Sarman on 9.08.2024.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    private let alternateAppIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire"
    ]
    
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
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .colorGreenLight,
                            .colorGreenMedium,
                            .colorGreenDark
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ))
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
            
            // MARK: - SECTION: ICONS            
            Section(header: Text("Alternate Icons")) {
              ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                  ForEach(alternateAppIcons.indices, id: \.self) { item in
                    Button {
                      print("Icon \(alternateAppIcons[item]) was pressed.")
                      
                      UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) { error in
                        if error != nil {
                          print("Failed request to update the app's icon: \(String(describing: error?.localizedDescription))")
                        } else {
                          print("Success! You have changed the app's icon to \(alternateAppIcons[item])")
                        }
                      }
                    } label: {
                      Image("\(alternateAppIcons[item])-Preview")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .cornerRadius(16)
                    }
                    .buttonStyle(.borderless)
                  }
                }
              } //: SCROLL VIEW
              .padding(.top, 12)
              
              Text("Choose your favourite app icon from the collection above.")
                .frame(minWidth: 0, maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .font(.footnote)
                .padding(.bottom, 12)
            } //: SECTION
            .listRowSeparator(.hidden)
            
            // MARK: - SECTION: ABOUT
            Section(
                header: Text("About The App"),
                footer: HStack{
                    Spacer()
                    Text("Copyright © 2024. All rights reserved.")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundStyle(.secondary)
                    Spacer()
                }
                    .padding(.vertical, 8)
            ) {
                //                // 1. Basic Labeled Content
                //                LabeledContent("Application", value: "Hike")
                
                // 2. Advanced Labeled Content
                
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS 16.4", rowTintColor: .red)
                
                CustomListRowView(rowLabel: "Texhnology", rowIcon: "swift", rowContent: "SwiftUI", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Fatih Emre Sarman", rowTintColor: .green)
                
                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                
                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "GitHub", rowLinkDestination: "https://github.com/blaineconnor")
            }//: SECTION
        }//: LIST
    }
}

#Preview {
    SettingsView()
}
