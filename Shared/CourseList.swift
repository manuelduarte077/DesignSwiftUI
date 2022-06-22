//
//  Courses.swift
//  DesignCodeSwiftUI
//
//  Created by Manuel Duarte on 21/6/22.
//

import SwiftUI

struct Courses: View {
    @ViewBuilder
    var body: some View {
      #if os(iOS)
          content
            .listStyle(InsetGroupedListStyle())
      #else
          content
            .frame(minWidth: 800, minHeight: 600)
      #endif
    }
      
    var content: some View {
      List(0 ..< 20) { item in
        CourseRow()
      }
      .navigationTitle("Courses")
    }
}

struct Courses_Previews: PreviewProvider {
    static var previews: some View {
        Courses()
    }
}
