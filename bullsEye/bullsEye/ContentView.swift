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
        HStack {
            Text("Put the bullseye as close as you can to:")
            Text("100")
        }
        
      // Slider row
        HStack {
            Text("1")
            Slider(value: .constant(10))
            Text("100")
        }
        
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
        HStack {
            Text("Placeholder")
        }
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
