import SwiftUI

struct ImageInfo: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let location: String
    let price: String
}

struct HomeView: View {
    @State private var username: String = ""
    var image = ["guide1", "guide2", "guide3"]
    @State private var imageInfoList: [ImageInfo] = [
        ImageInfo(imageName: "guide1", title: "Flen Fouleni", location: "tunis, France", price: "$29 / day"),
        ImageInfo(imageName: "guide2", title: "Flen Fouleni", location: "Paris, France", price: "$29 / day"),
        ImageInfo(imageName: "guide3", title: "Flen Fouleni", location: "Paris, France", price: "$29 / day"),// Add more image info items for each image
    ]
    
    
    @State private var selectedFilter = "Recommended"

        let filters = ["Recommended", "Popular", "Trending", "Testing"]
    var body: some View {
       
        ScrollView {
            ZStack {
                VStack(alignment: .leading, spacing: 40)
                { HStack() {
                    Image("logo1").resizable().frame(width: 60, height: 60) // Ajustez la taille selon vos besoins
                        Text("Hello, User!").font(.title)
                                           
                                    }
                   
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .padding(.leading, 10)
                 
                        
                        TextField("Rechercher...", text: $username)
                            .padding(.vertical, 10)
                            .padding(.trailing, 10)
                    }
                    .textFieldStyle(CustomTextFieldStyle()).cornerRadius(10)
                                    .padding()
                  
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(filters, id: \.self) { filter in
                                Button(action: {
                                    selectedFilter = filter
                                }) {
                                    Text(filter)
                                        .foregroundColor(selectedFilter == filter ? .white : .blue)
                                        .padding(EdgeInsets(top: 12, leading: 25, bottom: 12, trailing: 25))
                                        .background(selectedFilter == filter ? Color.blue : Color.clear)
                                        .cornerRadius(32)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 30)
                                                .stroke(selectedFilter == filter ? Color.blue : Color.blue, lineWidth: 2)
                                        )
                                }
                            }
                        }
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(imageInfoList) { imageInfo in
                                VStack {
                                    ZStack(alignment: .bottomLeading) {
                                        Image(imageInfo.imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 300, height: 300)
                                            .cornerRadius(50)
                                        
                                        
                                        VStack(alignment: .leading, spacing: 10) {
                                            Text(imageInfo.title)
                                                .font(.headline)
                                                .foregroundColor(.white)
                                            Text(imageInfo.location)
                                                .font(.headline)
                                                .foregroundColor(.black)
                                            Text(imageInfo.price)
                                                .font(.headline)
                                                .foregroundColor(.white)
                                        }
                                        .padding()
                                    }
                                    .frame(width: 300, height: 300)
                                }
                            }
                        }
                    }
                    
                    HStack {
                        Text("Recently Booked")
                            .font(.system(size: 22, weight: .semibold))
                        Spacer()
                        Text("See all")
                            .font(.system(size: 22, weight: .semibold))
                            .foregroundColor(Color.blue)
                    }.padding(.trailing, 20)
                    
                        ForEach(imageInfoList) { imageInfo in
                            ZStack {
                                Color(hex: "F3F8FE") // Set your desired background color here
                                    .frame(width: 350, height: 150)
                                    .cornerRadius(20)
                                HStack(spacing: 5) {
                                    Image(imageInfo.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                    VStack(alignment: .leading, spacing: 15) {
                                        Text(imageInfo.title)
                                            .font(.system(size: 23, weight: .semibold))
                                        Text(imageInfo.location)
                                            .font(.system(size: 16))
                                            .foregroundColor(Color.gray)
                                        Text("4.8 (4209 reviews)")
                                            .font(.system(size: 15))
                                    }
                                    .frame(maxWidth: .infinity) // Expand to fill the available space
                                    Spacer()
                                    VStack(alignment: .trailing, spacing: 15) {
                                        Text("$35")
                                            .font(.system(size: 23, weight: .semibold))
                                            .foregroundColor(Color.blue)
                                        Text("/ day")
                                        Text("Button")
                                        
                                    }
                                }
                                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                            }
                        
                        }.padding(.trailing, 20)
                    
                }.padding(.leading, 20)
                
            }
        }
        
    }
}

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
            .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(hex: "F3F8FE")) // Use an extension to create a Color from a hex string
                        )
            .foregroundColor(Color.black)
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgb: UInt64 = 0

        scanner.scanHexInt64(&rgb)

        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
