//
//  ContentView.swift
//  YouAreAwesomeToo
//
//  Created by Karriem Lang on 3/7/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
            
            Button("Press Me!") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                
                message = (message == message1 ? message2 : message1)
                imageName = "image\(imageNumber)"
                
                //TODO:  - Update the imageName variable -
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }
                
                print(imageNumber)
                
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        
        .padding()
        
    }
}

#Preview {
    ContentView()
}
