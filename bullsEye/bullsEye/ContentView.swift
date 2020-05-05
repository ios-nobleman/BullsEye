//
//  ContentView.swift
//  bullsEye
//
//  Created by Ashley S Willbur on 1/20/20.
//  Copyright © 2020 Ashley S Willbur. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
  // Properties
  // ==========
    
  // User interface views
  @State var alertIsVisible: Bool = false
    
  // User interface content and layout
  var body: some View {
    VStack {
         
      // Target row
      Text("Welcome to my first app!")
        .fontWeight(Font.Weight.black)
        .foregroundColor(.green)
        
      // Slider row
      // TODO: Add views for the slider row here.
        
      // Button row
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
        
      // Score row
      // TODO: Add views for the score, rounds, and start and info buttons here.
    }
  }

  // Methods
  // =======
}


// Preview
// =======

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
