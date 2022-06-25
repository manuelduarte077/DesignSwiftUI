//
//  SwiftUIView.swift
//  DesignCodeSwiftUI
//
//  Created by Manuel Duarte on 25/6/22.
//

import SwiftUI

struct TabBar: View {
	var body: some View {
		TabView {
			NavigationView {
				CoursesView()
			}
			.tabItem {
				Image(systemName: "book.closed")
				Text("Courses")
			}
			
			NavigationView {
				Courses()
			}
			.tabItem {
				Image(systemName: "list.bullet.rectangle")
				Text("Tutorials")
			}
			
			NavigationView {
				Courses()
			}
			.tabItem {
				Image(systemName: "tv")
				Text("Livestreams")
			}
			
			NavigationView {
				Courses()
			}
			.tabItem {
				Image(systemName: "mail.stack")
				Text("Certificates")
			}
			
			NavigationView {
				Courses()
			}
			.tabItem {
				Image(systemName: "magnifyingglass")
				Text("Search")
			}
		}
	}
}

struct TabBar_Previews: PreviewProvider {
	static var previews: some View {
		TabBar()
	}
}
