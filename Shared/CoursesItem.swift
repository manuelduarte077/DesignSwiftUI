//
//  CoursesItem.swift
//  DesignCodeSwiftUI
//
//  Created by Manuel Duarte on 21/6/22.
//

import SwiftUI

struct CoursesItem: View {
    var body: some View {
      VStack(alignment: .leading, spacing: 4.0) {
        Spacer()
        HStack {
          Spacer()
          Image("Illustration 1")
            .resizable()
            .aspectRatio(contentMode: .fit)
          Spacer()
        }
        Text("SwiftUI for IOS 15")
          .fontWeight(.bold)
          .foregroundColor(Color.white)
        Text("Design AppUI").font(.footnote)
          .foregroundColor(Color.white)
        
      }
      .padding(.all)
      .background(Color.blue)
      .cornerRadius(20.0)
      .shadow(radius: 10)
    }
}

struct CoursesItem_Previews: PreviewProvider {
    static var previews: some View {
        CoursesItem()
    }
}
