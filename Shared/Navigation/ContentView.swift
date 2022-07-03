//
//  ContentView.swift
//  Shared
//
//  Created by Manuel Duarte on 19/6/22.
//

import SwiftUI

struct ContentView: View {
	
	#if os(iOS)
		@Environment(\.horizontalSizeClass) var horizontalSizeClass
	#endif
		
		@ViewBuilder
		var body: some View {
			
	#if os(iOS)
			
			if horizontalSizeClass == .compact {
				TabBar()
			} else {
				Sidebar()
			}
			
	#else
			Sidebar()
				.frame(minWidth: 1000, maxWidth: 600)
	#endif
		
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
		
	}
}