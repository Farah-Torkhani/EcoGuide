//
//  BookingGuide.swift
//  EcoGuide
//
//  Created by Torkhani fara on 5/11/2023.
//

import SwiftUI
struct User {
    var title: String = "Mr"
    var fullName: String = ""
    var nickname: String = ""
    var dateOfBirth: Date = Date()
    var email: String = ""
    var phoneNumber: String = ""
}


struct BookingGuide: View {
    @State private var selectedDate: Date = Date()
    @State private var user = User()
    @State private var selectedHours: String = ""
    @State private var selectedPhoneNumber: String = ""
        
        var body: some View {
            NavigationView {
                Form {
                    Section {
                        DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                    }
                    
                    Section(header: Text("Select Hours")) {
                        TextField("Number of Hours", text: $selectedHours)
                            .keyboardType(.numberPad)
                    }
                    
                    Section(header: Text("Total Price")) {
                        Text(calculateTotalPrice())
                            .foregroundColor(.blue)
                    }
                    
                    Section {
                        NavigationLink(destination: PaymentDetailsView(user:$user, selectedPhoneNumber: $selectedPhoneNumber  )) {
                            Text("Continue")
                                .frame(maxWidth: .infinity)
                                .frame(height: 44)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                }
                .navigationBarTitle("Booking Guide")
            }
        }
        
        func calculateTotalPrice() -> String {
        
            if let hours = Int(selectedHours) {
                let pricePerHour = 50 // Adjust as needed
                let totalPrice = hours * pricePerHour
                return "$\(totalPrice)"
            } else {
                return "$0" // Handle invalid input
            }
        }
    }

struct PaymentDetailsView: View {
    @Binding var user: User
       @Binding var selectedPhoneNumber: String // Make selectedPhoneNumber a Binding

       // Add an accessible initializer
       init(user: Binding<User>, selectedPhoneNumber: Binding<String>) {
           _user = user
           _selectedPhoneNumber = selectedPhoneNumber
       }
    var body: some View {
        
        Form {
            Section(header: Text("Booking Details")) {
                Picker("Gender", selection: $user.title) {
                    Text("Mr").tag("Mr")
                    Text("Mrs").tag("Mrs")
                    Text("Ms").tag("Ms")
                    Text("Other").tag("other")
                }
              
                TextField("Full Name", text: $user.fullName)
                
                TextField("Nickname", text: $user.nickname)
                DatePicker(" Date of birth", selection: $user.dateOfBirth, displayedComponents: .date)
             
                TextField("Email", text: $user.email)
                TextField("Phone Number", text: $selectedPhoneNumber)
                                    .onChange(of: selectedPhoneNumber) { newValue in
                                        user.phoneNumber = newValue
                                    }

            }
            
            Section {
                Text("Continue")
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        } .navigationBarTitle("Name of Booking")
        
    }}
    
    
    
    struct BookingGuide_Previews: PreviewProvider {
        static var previews: some View {
            BookingGuide()
        }
    }
    

