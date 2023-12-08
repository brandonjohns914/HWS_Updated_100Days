//
//  AddingHapticEffects.swift
//  CupCakeCorner
//
//  Created by Brandon Johns on 12/7/23.
//

import CoreHaptics
import SwiftUI

struct AddingHapticEffects: View {
    @State private var engine: CHHapticEngine?
    @State private var counter = 0
    
    var body: some View {
        Button("Tap Count: \(counter)") {
            counter += 1
        }
        .sensoryFeedback(.impact(flexibility: .soft, intensity: 0.5), trigger: counter)
        //.sensoryFeedback(.increase, trigger: counter)
        
        Button("Tap me!", action: complexSuccess)
            .onAppear(perform: prepareHaptics)
            
    }
    
    func prepareHaptics() {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else {return}
        
        do {
            engine = try CHHapticEngine()
            try engine?.start()
        } catch {
            print("there was an error creating the engine: \(error.localizedDescription)")
        }
    }
    
    func complexSuccess() {
        //device supports haptics
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else {return}
        var events = [CHHapticEvent]()
        
        //intense sharp tap
        let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 1)
        let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 1)
        let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: 0)
        events.append(event)
        
        //convert into pattern
        
        do {
            let pattern = try CHHapticPattern(events: events, parameters: [])
            let player = try engine?.makePlayer(with: pattern)
            try player?.start(atTime: 0)
        } catch {
            print("failed to play pattern: \(error.localizedDescription)")
        }
    }
}

#Preview {
    AddingHapticEffects()
}
