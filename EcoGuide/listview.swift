//
//  listview.swift
//  EcoGuide
//
//  Created by Torkhani fara on 3/11/2023.
//

import SwiftUI

struct listview: View {
    @State private var username: String = ""
    var body: some View {
    
                ZStack {
                    VStack(alignment: .leading, spacing: 40)
                    {
                        Text("Hello, User")
                        TextField(
                            "Search",
                            text: $username
                        ).padding()
                        .textFieldStyle(CustomTextFieldStyle())
                    
                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 10) {
                                                RoundedRectangle(cornerRadius: 40) // Container with border radius
                                                    .fill(Color.blue)
                                                    .frame(width: 250) // Adjust the width as needed
                                                    .overlay(
                                                        TextField(
                                                            "guide image",
                                                            text: $username
                                                        )
                                                        .textFieldStyle(CustomTextFieldStyle())
                                                        .padding()
                                                    )
                                                
                                                RoundedRectangle(cornerRadius: 40) // Container with border radius
                                                    .fill(Color.blue)
                                                    .frame(width: 250) // Adjust the width as needed
                                                    .overlay(
                                                        TextField(
                                                            "User name (email address)",
                                                            text: $username
                                                        )
                                                        .textFieldStyle(CustomTextFieldStyle())
                                                        .padding()
                                                    )
                                                
                                                RoundedRectangle(cornerRadius: 40) // Container with border radius
                                                    .fill(Color.blue)
                                                    .frame(width: 250) // Adjust the width as needed
                                                    .overlay(
                                                        TextField(
                                                            "User name (email address)",
                                                            text: $username
                                                        )
                                                        .textFieldStyle(CustomTextFieldStyle())
                                                        .padding()
                                                    )
                                                
                                                RoundedRectangle(cornerRadius: 10) // Container with border radius
                                                    .fill(Color.blue)
                                                    .frame(width: 250) // Adjust the width as needed
                                                    .overlay(
                                                        TextField(
                                                            "guide image view",
                                                            text: $username
                                                        )
                                                        .textFieldStyle(CustomTextFieldStyle())
                                                        .padding()
                                                    )
                                                
                                                // Add more containers as needed
                                            }
                        }.padding()
                        
                        ScrollView(.vertical, showsIndicators: true) {
                            RoundedRectangle(cornerRadius: 40)
                                
                                .fill(Color.blue)
                                .frame(width: 350, height: 100) // Adjust the height as needed
                                .overlay(
                                    TextField(
                                        "User name (email address)",
                                        text: $username
                                    )
                                    .textFieldStyle(CustomTextFieldStyle())
                                    .padding()
                                )
                                .padding()
                            RoundedRectangle(cornerRadius: 40)
                                
                                .fill(Color.blue)
                                .frame(width: 350, height: 100) // Adjust the height as needed
                                .overlay(
                                    TextField(
                                        "User name (email address)",
                                        text: $username
                                    )
                                    .textFieldStyle(CustomTextFieldStyle())
                                    .padding()
                                )
                                .padding()
                            RoundedRectangle(cornerRadius: 40)
                                
                                .fill(Color.blue)
                                .frame(width: 350, height: 100) // Adjust the height as needed
                                .overlay(
                                    TextField(
                                        "User name (email address)",
                                        text: $username
                                    )
                                    .textFieldStyle(CustomTextFieldStyle())
                                    .padding()
                                )
                                .padding()
                            RoundedRectangle(cornerRadius: 40)
                                
                                .fill(Color.blue)
                                .frame(width: 350, height: 100) // Adjust the height as needed
                                .overlay(
                                    TextField(
                                        "User name (email address)",
                                        text: $username
                                    )
                                    .textFieldStyle(CustomTextFieldStyle())
                                    .padding()
                                )
                                .padding()
                        }
                        
                    }
                    
                }
                
            }
        }

        struct CustomTextFieldStyle: TextFieldStyle {
            func _body(configuration: TextField<Self._Label>) -> some View {
                configuration
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
                    .foregroundColor(Color.red)
            }
        }
  

struct listview_Previews: PreviewProvider {
    static var previews: some View {
        listview()
    }
}
