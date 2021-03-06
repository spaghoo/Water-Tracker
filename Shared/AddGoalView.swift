//
//  AddGoalView.swift
//  Water Tracker
//
//  Created by lincoln anderson on 7/3/20.
//

import SwiftUI

struct AddGoalView: View {
    
    @ObservedObject var store: WaterTrackerDayDataStore
    
    @Binding var isPresented: Bool
    
    @State var localGoal: String = ""
    
    
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter Goal", text: $localGoal)
                    .keyboardType(.numberPad)
            }

            Button("Add Goal", action: {


                let newDay = WaterTrackerDayData(goal: Int(localGoal)!, progress: 0, date: Date())

                self.addDay(day: newDay)
                
                self.isPresented.toggle()

            })
        }
        
        
    }
    
    
    private func addDay(day: WaterTrackerDayData) {
        
        store.days.append(day)
        
        
    }
    
}



//struct AddGoalView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddGoalView(store: WaterTrackerDayDataStore(), isPresented: )
//    }
//}
