//
//  UsefulAnimationView.swift
//  ComposableViewsAndAnimations
//
//  Created by Luke Newbigging on 2022-04-26.
//

import SwiftUI

struct UsefulAnimationView: View {
    @State var xOffset = -100.00
    
    @State var rotation = 0.0
    
    let timer = Timer.publish(every: 0.25, on: .main, in: .common).autoconnect()
    
    
    var body: some View {
        VStack{
            
            HStack{
                
                Image(systemName:"airplane")
                
                    .padding()
            }
            
//            .rotationEffect(.degrees(180.0), anchor: .center)
//            .offset(x: xOffset, y: 0)
//            .animation(
//                Animation.easeInOut(duration: 2)
//                    .repeatForever(autoreverses: true)
//            )
//            .rotationEffect(.degrees(rotation), anchor: .center)
//            .onReceive (timer) { input in
//                //Move the cricle and text over to the right
//                xOffset = 100.00
//                //Turn once
//                rotation = 180.0
//
//                //Turn off Timer
//                timer.upstream.connect().cancel()
                
                
                HStack{
                    
                    Image(systemName: "airplane.departure")
                    
                        .padding()
                    Spacer()
                    
                    
                    Spacer()
                    
                    
                    Image(systemName: "airplane.arrival")
                    
                        .padding()
                    
//                }
                
            }
        }
    }
}

struct UsefulAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        UsefulAnimationView()
    }
}
