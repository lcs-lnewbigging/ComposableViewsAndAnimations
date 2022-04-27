//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
//MARK: Stored Properties
   // Horizontal position
    @State var xOffset = -100.00
    
    @State var rotation = 0.0
    
    
    //Trigger to start the animation
    let timer = Timer.publish(every: 0.25, on: .main, in: .common).autoconnect()
    
    
//MARK: Computed Properties
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(-90))
            
            Text("OK")
                .foregroundColor(.white)
//            Image(systemName: "airplane")
        }
        
        .rotationEffect(.degrees(rotation), anchor: .center)
        .offset(x: xOffset, y: 0)
        .animation(
            Animation.easeInOut(duration: 2)
                .repeatForever(autoreverses: true)
        )
        .rotationEffect(.degrees(rotation), anchor: .center)
        .onReceive (timer) { input in
            //Move the cricle and text over to the right
            xOffset = 100.00
            //Turn once
            rotation = 360.0
            
            //Turn off Timer
            timer.upstream.connect().cancel()
        
        
        }
    }
}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
