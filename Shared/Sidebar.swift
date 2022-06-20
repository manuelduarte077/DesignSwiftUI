//
//  Sidebar.swift
//  DesignCodeSwiftUI
//
//  Created by Manuel Duarte on 20/6/22.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CoursesView()) {
                    Label("Courses", systemImage: "book.closed")
                }
                NavigationLink(destination: CoursesView()) {
                    Label("Tutorials", systemImage: "list.bullet.rectangle")
                }
                NavigationLink(destination: CoursesView()) {
                    Label("Livestreams", systemImage: "tv")
                }
                NavigationLink(destination: CoursesView()) {
                    Label("Certificates", systemImage: "mail.stack")
                }
                NavigationLink(destination: CoursesView()) {
                    Label("Search", systemImage: "magnifyingglass")
                }
                
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Learn")
            
            
            CoursesView()
            
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
