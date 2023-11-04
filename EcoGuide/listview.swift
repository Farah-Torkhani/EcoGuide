//
//  listview.swift
//  EcoGuide
//
//  Created by Torkhani fara on 3/11/2023.
//

import SwiftUI

struct listview: View {
    @State private var username: String = ""
    var image = ["guide1","guide2","guide3"]
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
                                                ForEach(image,id: \.self)
                                                { image in Image(image).resizable().cornerRadius(50)
                                                   // RoundedRectangle(cornerRadius: 40) // Container with border radius
                                                   // Image(image).resizable().scaledToFit()
                                                        .frame(width: 250,height: 350) // Adjust the width as needed
                                                        .overlay(
                                                            TextField(
                                                                "guide image",
                                                                text: $username
                                                            )
                                                            .textFieldStyle(CustomTextFieldStyle())
                                                            .padding()
                                                        )}
                                                
                                             
                                                
                            
                                   
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
                                        "User name (email addresss)",
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
