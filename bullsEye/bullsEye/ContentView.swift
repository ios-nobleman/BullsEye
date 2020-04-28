//
//  ContentView.swift
//  bullsEye
//
//  Created by Ashley S Willbur on 1/20/20.
//  Copyright © 2020 Ashley S Willbur. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var alertIsVisible: Bool = false
    
    
    var body: some View {
        VStack {
         Text("Welcome to my first app!")
            .fontWeight(Font.Weight.black)
           .foregroundColor(.green)
        Button(action: {
            print("Button Pressed!")
            self.alertIsVisible = true
        }) {
         Text("Hit Me!")
        }
        .alert(isPresented: self.$alertIsVisible) {
            Alert(title: Text("Hello there!"),
                  message: Text("This is my first Pop-up."),
                  dismissButton: .default(Text("Awesome")))
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
