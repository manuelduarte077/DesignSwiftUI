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
	
	#if os(iOS)
		var cornerRadius: CGFloat = 22
	#else
		var cornerRadius: CGFloat = 10
	#endif
	
	@ViewBuilder
	var body: some View {
		VStack {
			
		#if os(iOS)
					content
						.edgesIgnoringSafeArea(.all)
		#else
					content
		#endif
		}
	}
	
	var content: some View {
		ScrollView {
			CoursesItem(course: course, cornerRadius: 0)
				.matchedGeometryEffect(id: course.id, in: namespace)
				.frame(height: 300)
			
			VStack {
				ForEach(courseSections) { item in
					CourseRow()
				}
			}
			.padding()
			
		}
		.background(Color("Background 1"))
		.clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
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
