//
//  CoursesView.swift
//  DesignCodeSwiftUI
//
//  Created by Manuel Duarte on 20/6/22.
//

import SwiftUI

struct CoursesView: View {
  
  
  @State var show = false

  var body: some View{
    
    ZStack {
      CoursesItem()
        .frame(width: 335, height: 250)
      
      VStack {
        if show {
          CoursesItem()
            .transition(.move(edge: .leading))
            .edgesIgnoringSafeArea(.all)
        }
      }
      
    }
    .onTapGesture {
      withAnimation(.spring()) {
        show.toggle()
      }
    }
    
  }
  
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
