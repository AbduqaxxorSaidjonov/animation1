//
//  HomeScreen.swift
//  animation
//
//  Created by Abduqaxxor on 21/2/22.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var tower = false
    @State var towerSize = false
    
    var body: some View {
        Image("tower")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaleEffect(towerSize ? 0.5 : 1.0)
            .blur(radius: tower ? 5 : 0)
            .animation(.easeInOut(duration: 1.0))
            .onTapGesture {
                tower.toggle()
                towerSize.toggle()
            }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
