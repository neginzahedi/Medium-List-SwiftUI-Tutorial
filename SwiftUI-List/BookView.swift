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
        VStack(){
            Image(book.cover)
                .resizable()
                .scaledToFit()
                .frame(width: 150)
            
            VStack{
                Text(book.name)
                    .font(.title3)
                    .fontWeight(.bold)
                Text(book.author)
                    .font(.body)
                    .foregroundColor(Color.gray)
            }.padding()
            
            HStack(alignment: .center,spacing: 20){
                VStack(){
                    Text(book.pages)
                        .fontWeight(.bold)
                        .font(.footnote)
                        .padding(.bottom,1)

                    Text("Pages")
                        .foregroundColor(Color.gray)
                        .font(.footnote)
                }
                
                Divider().frame(height: 40)
                
                VStack{
                    Text(book.genre)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .padding(.bottom,1)
                    Text("Genre")
                        .foregroundColor(Color.gray)
                        .font(.footnote)
                }
                
                Divider().frame(height: 40)
                
                VStack{
                    Text(book.publish_date)
                        .fontWeight(.bold)
                        .font(.footnote)
                        .padding(.bottom,1)

                    Text("Release")
                        .foregroundColor(Color.gray)
                        .font(.footnote)
                }
            }.padding()
            
            Divider()
            
            ScrollView{
                VStack(alignment: .leading, spacing: 10){
                    Text("Summary")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text(book.summary)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                    
                    
                }.padding()
            }
        }.padding()
        
    }
}

struct BookView_Previews: PreviewProvider {
    
    static let book = Book(cover: "1984", name: "1984", author: "George Orwell", publish_date: "1949",pages: "200", genre:"Novel" , summary: "The book is set in 1984 in Oceania, one of three perpetually warring totalitarian states (the other two are Eurasia and Eastasia). Oceania is governed by the all-controlling Party, which has brainwashed the population into unthinking obedience to its leader, Big Brother.")
    
    static var previews: some View {
        BookView(book: book)
    }
}
