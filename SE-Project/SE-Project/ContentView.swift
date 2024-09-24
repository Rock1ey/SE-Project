//
//  ContentView.swift
//  SE-Project
//
//  Created by admin on 2024/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            
            ForecastView(day: "Mon", isRainy: true, high: 70, low: 50)
            
            ForecastView(day: "Tue", isRainy: false, high: 60, low: 40)
            
        }
    }
}

#Preview {
    ContentView()
}

struct ForecastView: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy{
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy{
            return Color.blue
        } else {
            return Color.yellow
        }
        
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}

