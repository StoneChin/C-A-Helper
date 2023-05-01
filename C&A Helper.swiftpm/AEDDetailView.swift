/*
 Author: Stone Qin
 Description: Introduce What is an AED?
 */

import SwiftUI


struct AEDDetailView: View {
    var body: some View {
        ZStack {
            Color.init(.sRGB, red: 0.9, green: 0.9, blue: 0.9, opacity: 1)
                .ignoresSafeArea()
            
            VStack {
                Text("What is an AED?")
                    .foregroundColor(.orange)
                    .font(.system(size: 30, weight: .bold, design: .default))
                
                TabView {
                    IntroduceText(introText: "An AED (Automated external defibrillator) is a portable device that can analyze the heart's rhythm and deliver an electric shock, if necessary, to help restore a normal heartbeat in case of sudden cardiac arrest. They are designed to be easy to use by laypersons with minimal training, and can be life-saving in situations where prompt defibrillation is crucial.", imageURL: "AED logo", imageWidth: 130, imageHeight: 150)
                    
                    IntroduceText(introText: "An AED typically main consists of several components, including: two pads with electrodes (sensors), a computer which can analyzes the heart's rhythm to determine if a shock is needed.", imageURL: "AED device", imageWidth: 270, imageHeight: 150)
                    
                    IntroduceText(introText: "Although AEDs are commonly found in public places such as airports, schools, shopping malls and metro station in China，many people are not trained to use AED or even know about AED. There are approximately 544,000 sudden cardiac deaths in China every year, 87.7% of which occur outside the hospital.", imageURL: "cpr", imageWidth: 300, imageHeight: 250)
                    
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .never))
                .cornerRadius(20)
                .padding(50)
            }
        }
        
    }
}

struct IntroduceText: View {
    
    var introText: String
    var imageURL: String
    var imageWidth: CGFloat
    var imageHeight: CGFloat
    var body: some View {
        ZStack{
            Color.orange
            VStack(spacing: 30) {
                Image(imageURL)
                    .resizable()
                    .frame(width: imageWidth, height: imageHeight,alignment: .center)
                Text(introText)
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .padding(20)
            }
        }
    }
}
