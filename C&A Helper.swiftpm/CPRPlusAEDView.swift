/*
 Author: Stone Qin
 Description: How to perform CPR with AED
 */

import SwiftUI

struct CPRPlusAEDView: View {
    var body: some View {
        ZStack {
            Color.init(.sRGB, red: 0.9, green: 0.9, blue: 0.9, opacity: 1)
                .ignoresSafeArea()
            VStack {
                Text("CPR + AED")
                    .foregroundColor(.orange)
                    .font(.system(size: 30, weight: .bold, design: .default))
                TabView {
                    ProcessView(processTitle: "Let's learn the process of CPR with AED!", processText: "You find somebody suddenly faints nearby you.", backgroundColor: .orange)
                    
                    ProcessView(processTitle: "Step 1", processText: "Check for responsiveness: Shake the person and shout Are you okay? to see if they respond.", backgroundColor: .red)
                    
                    ProcessView(processTitle: "Step 2", processText: "Call for emergency services: Call your local emergency services or ask someone nearby to call for you. Give your location and a brief description of the situation.", backgroundColor: .red)
                    
                    ProcessView(processTitle: "Step 3", processText: "Check for breathing: Check if the person is breathing by placing your ear close to their mouth and nose, looking for chest movement, and feeling for breaths. If the person is not breathing, begin CPR immediately.", backgroundColor: .red)
                    
                    ProcessView(processTitle: "Step 4", processText: "Start CPR: Place the person on their back on a firm surface. Begin chest compressions by placing the heel of one hand on the center of the person's chest, interlock your other hand on top, and press down hard and fast, aiming for a rate of 100-120 compressions per minute. Allow the chest to fully recoil between compressions. After 30 compressions, give two breaths. Pinch the person's nose and give a slow breath into the mouth, watching for the chest to rise. Repeat the process of 30 compressions followed by two breaths until help arrives.", backgroundColor: .red)
                    
                    ProcessView(processTitle: "Step 5", processText: "Use an AED: If an AED is available, turn it on and follow the voice and/or visual prompts. Expose the person's chest, attach the pads following the AED's instructions, and analyze the heart rhythm. If a shock is advised, make sure no one is touching the person and press the shock button as directed. Resume CPR as instructed by the AED.", backgroundColor: .red)
                    
                    ProcessView(processTitle: "Step 6", processText: "Wait for help: Continue CPR until EMS arrives or the person shows signs of regaining consciousness. Keep the person's airway open and monitor their breathing and pulse. Be prepared to give additional information to the emergency responders when they arrive.", backgroundColor: .red)
                    
                    FinishedView(finishedTitle: "Congratulations!🎉🎉", finishedText1: "Congratulations on completing your Introductory Introduction to CPR Using an AED!", finishedText2: "You may encounter many situations when using an AED. For example, there is a big difference between using an AED for adults and children.", finishedText3: "So we strongly recommend that you attend CPR offline training. Maybe one day you can save a life!",backgroundColor: .green)
                    
                    FinishedView(finishedTitle: "Happy WWDC 2023🎉🎉", finishedText1: "Hope C&A Helper could help you!", finishedText2: "best wishes from Stone", finishedText3: "",backgroundColor: .green)
                    
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .never))
                .cornerRadius(20)
                .padding(50)    
            }
        }
        
        
    }
}

// show the process view
struct ProcessView: View {
    var processTitle: String
    var processText: String
    var backgroundColor: Color
    
    var body: some View {
        ZStack{
            backgroundColor
            VStack(spacing: 10) {
                Text(processTitle)
                    .foregroundColor(.white)
                    .font(.system(size: 36, weight: .semibold, design: .default))
                    .padding(20)
                Text(processText)
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .semibold, design: .default))
                    .padding(20)
                Image(systemName: "arrow.forward.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .regular, design: .default))
                    .padding(40)
            }
        }
    }
}

struct FinishedView: View {
    var finishedTitle: String
    var finishedText1: String
    var finishedText2: String
    var finishedText3: String
    var backgroundColor: Color
    
    var body: some View {
        ZStack{
            backgroundColor
            VStack(spacing: 10) {
                Text(finishedTitle)
                    .foregroundColor(.white)
                    .font(.system(size: 36, weight: .semibold, design: .default))
                    .padding(20)
                Text(finishedText1)
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .semibold, design: .default))
                    .padding(20)
                Text(finishedText2)
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .light, design: .default))
                    .padding(20)
                Text(finishedText3)
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .semibold, design: .default))
                    .padding(20)
            }
        }
    }
}
