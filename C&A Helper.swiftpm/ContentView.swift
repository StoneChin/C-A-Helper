/*
 Author: Stone Qin
 Description: C&A Helper Home page
 */

import SwiftUI

struct ContentView: View {
    @State var title: String = "C&A Helper is an app designed to help you perform CPR and use AED correctly"
    @State private var isNight = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Color.init(.sRGB, red: 0.9, green: 0.9, blue: 0.9, opacity: 1)
                    .ignoresSafeArea()
                
                VStack(spacing: 10) {
                    
                    Text("C&A Helper")
                    .multilineTextAlignment(.center)
                        .foregroundColor(.orange)
                        .font(.system(size: 50, weight: .bold, design: .default))
                    
                    Text(title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .opacity(0.7)
                        .font(.system(size: 25, weight: .semibold, design: .default))
                        .padding(50)
                    
                    VStack(spacing: 30) {
                        NavigationLink(destination: AEDDetailView()) {
                            TurnButton(buttonText: "What is AED")
                        }
                        
                        NavigationLink(destination: CPRPlusAEDView()) {
                            TurnButton(buttonText: "CPR + AED")
                        }
                    }
                }      
            }  
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarBackButtonHidden(true)
    }
}

struct TurnButton: View {
    
    var buttonText: String
    
    var body: some View {
        HStack{
            Text(buttonText)
                .foregroundColor(.white)
            Image(systemName: "arrow.forward.circle.fill")
                .foregroundColor(.white)
        }
        .frame(width: 250, height: 100, alignment: .center)
        .font(.system(size: 30, weight: .bold, design: .default))
        .background(Color.orange)
        .cornerRadius(20)
    }
}
