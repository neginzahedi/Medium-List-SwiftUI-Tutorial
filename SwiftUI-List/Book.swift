//
//  Book.swift
//  SwiftUI-List
//
//  Created by Negin Zahedi on 2022-08-11.
//

import Foundation

struct Book: Identifiable {
    let id = UUID()
    let cover: String
    let name: String
    let author: String
    let publish_date: String
    let pages: String
    let genre: String
    let summary: String
}
