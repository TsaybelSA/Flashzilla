//
//  ContentView.swift
//  Flashzilla
//
//  Created by Сергей Цайбель on 23.05.2022.
//

import SwiftUI


extension View {
	func stacked(at position: Int, in total: Int) -> some View {
		let offset = Double(total - position)
		return self.offset(x: 0, y: offset * 10)
	}
}

struct ContentView: View {

	let cards = Array<Card>(repeating: Card.example, count: 10)
	var body: some View {
		ZStack {
			Image("background")
				.resizable()
				.ignoresSafeArea()
			VStack {
				ZStack {
					ForEach(0..<cards.count, id: \.self) { index in
						CardView(card: cards[index])
							.stacked(at: index, in: cards.count)
					}
				}
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
