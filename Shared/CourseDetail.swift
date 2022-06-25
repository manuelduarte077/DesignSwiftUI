//
//  CourseDetail.swift
//  DesignCodeSwiftUI
//
//  Created by Manuel Duarte on 25/6/22.
//

import SwiftUI

struct CourseDetail: View {
	
	var course: Course = courses[0]
	var namespace: Namespace.ID
	
	
	var body: some View {
		VStack {
			ScrollView {
				CoursesItem(course: course)
					.matchedGeometryEffect(id: course.id, in: namespace)
					.frame(height: 300)
				
				
				VStack {
					ForEach(0 ..< 20) { item in
						CourseRow()
					}
				}
				.padding()
				
			}
			
		}
		.background(Color("Background 1"))
		.clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
		.matchedGeometryEffect(id: "container\(course.id)", in: namespace)
		.edgesIgnoringSafeArea(.all)
		
	}
}

struct CourseDetail_Previews: PreviewProvider {
	@Namespace static var namespace
	static var previews: some View {
		CourseDetail(namespace: namespace)
	}
}
