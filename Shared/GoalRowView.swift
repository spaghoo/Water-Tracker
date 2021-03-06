//
//  GoalRowView.swift
//  Water Tracker
//
//  Created by lincoln anderson on 7/3/20.
//

import SwiftUI

struct GoalRowView: View {
    static let myFormatter: DateFormatter = {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd, yyyy"
        return formatter
    }()
    var goal: Int
    var progress: Int
    var date: Date
    

    var body: some View {
        
        
        
        HStack {
            VStack {
                Text("\(goal) Ounces")
                    .bold()
                    .font(.title)
                    .padding(.trailing,200)
                    
                
                HStack {
                    Text("Ounces left \(goal-progress)")
                        .multilineTextAlignment(.trailing)
                        .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    Spacer()
                    
                    
                    
                    Text("\(date, formatter: Self.myFormatter)")
                        .foregroundColor(.secondary)
                        .padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                }
            }
            Spacer()
        }
    }
}

struct GoalRowView_Previews: PreviewProvider {
    static var previews: some View {
        GoalRowView(goal: 120, progress: 5, date: Date())
    }
}
