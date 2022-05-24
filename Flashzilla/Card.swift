//
//  Card.swift
//  Flashzilla
//
//  Created by Сергей Цайбель on 24.05.2022.
//

import Foundation

struct Card {
	let prompt: String
	let answer: String
	
	static let example = Card(prompt: "Who played John Snow in the \"A Song of Ice and Fire\" series?", answer: "Kit Harington")
}
