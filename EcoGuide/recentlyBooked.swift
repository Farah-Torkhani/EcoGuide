//
//  recentlyBooked.swift
//  EcoGuide
//
//  Created by Torkhani fara on 5/11/2023.
//

import SwiftUI
struct ImageInfo1: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let location: String
    let price: String
    let rating: String
}

struct recentlyBooked: View {
    var image = ["guide1", "guide2", "guide3"]
    @State private var imageInfoList: [ImageInfo1] = [
        ImageInfo1(imageName: "guide1", title: "Flen Fouleni", location: "tunis, France", price: "$29 / day", rating: "String"),
        ImageInfo1(imageName: "guide2", title: "Flen Fouleni", location: "Paris, France", price: "$29 / day", rating: "string"),
        ImageInfo1(imageName: "guide3", title: "Flen Fouleni", location: "Paris, France", price: "$29 / day", rating: "string"),// Add more image info items for each image
        ImageInfo1(imageName: "guide3", title: "Flen Fouleni", location: "Paris, France", price: "$29 / day", rating: "string"),//
        ImageInfo1(imageName: "guide3", title: "Flen Fouleni", location: "Paris, France", price: "$29 / day", rating: "string"),// 
     ]
    var body: some View {
        ScrollView{
            Spacer()
            HStack {
                Image(systemName: "arrow.left")

                    .font(.system(size: 22, weight: .semibold))
                Text("Recently Booked")
                    .font(.system(size: 22, weight: .semibold))
                Spacer()
                HStack {
                    
                    Image(systemName: "doc.fill") //list view item
                        .font(.system(size: 24))
                        .foregroundColor(Color.blue)
                    
                    Image(systemName: "square.grid.2x2") // Grid icon
                        .foregroundColor(.black).font(.system(size: 24))
                    
                    
                    
                    
                }
            }.padding(.trailing, 20)
            
            ForEach(imageInfoList) { imageInfo in
                ZStack {
                    Color(hex: "F3F8FE") // Set your desired background color here
                        .frame(width: 350, height: 150)
                        .cornerRadius(20)
                    HStack(spacing: 5) {
                        Image(imageInfo.imageName)
                            .resizable()
                            .frame(width: 100, height: 100).cornerRadius(10)
                        VStack(alignment: .leading, spacing: 15) {
                            Text(imageInfo.title)
                                .font(.system(size: 23, weight: .semibold))
                            Text(imageInfo.location)
                                .font(.system(size: 16))
                                .foregroundColor(Color.gray)
                            HStack{
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Text(imageInfo.rating)
                                .font(.system(size: 15))}
                        }
                        .frame(maxWidth: .infinity) // Expand to fill the available space
                        Spacer()
                        VStack(alignment: .trailing, spacing: 15) {
                            Text("$35")
                                .font(.system(size: 23, weight: .semibold))
                                .foregroundColor(Color.blue)
                            Text("/ day")
                            Image(systemName: "bookmark")
                                .font(.system(size: 24))
                                .foregroundColor(Color.black) //
                            
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                }
                
            }.padding(.trailing, 20)
            
        }.padding()
    }
}


struct recentlyBooked_Previews: PreviewProvider {
    static var previews: some View {
        recentlyBooked()
    }
}
