//
//  BookView.swift
//  SwiftUI-List
//
//  Created by Negin Zahedi on 2022-08-11.
//

import SwiftUI

struct BookView: View {
    
    let book: Book

    var body: some View {
        VStack(spacing: 30){
            Image(book.cover)
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            Text(book.name)
            Text("by " + book.author)
            Text(book.publish_date)
            Text(book.summary)
        }.padding()
       
    }
}

struct BookView_Previews: PreviewProvider {
    
    static let book = Book(cover: "image", name: "name", author: "author", publish_date: "date", summary: "summary")
    
    static var previews: some View {
        BookView(book: book)
    }
}
