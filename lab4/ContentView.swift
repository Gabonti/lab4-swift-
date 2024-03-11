//
//  ContentView.swift
//  lab4
//
//  Created by Gabdilkarim Ata on 02.03.2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        NavigationView {
            VStack {
                Toggle("Dark Mode", isOn: $isDarkMode)
                    .padding()
                
                Spacer()
                
                Text("Hello, World!")
                    .padding()
                    .foregroundColor(isDarkMode ? .white : .black)
            }
            .navigationBarTitle("Theme Switcher", displayMode: .inline)
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
#Preview {
    ContentView()
}
