//
//  CoursesView.swift
//  DesignCodeSwiftUI
//
//  Created by Manuel Duarte on 20/6/22.
//

import SwiftUI

struct CoursesView: View {
    var body: some View {
        
        List(0 ..< 20) { item in
            CourseRow()
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Courses")
        
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
