//
//  ContentView.swift
//  SwiftUI-List
//
//  Created by Negin Zahedi on 2022-08-06.
//

import SwiftUI

struct ListView: View {

    @State var books: [Book] = [
        Book(cover: "1984", name: "1984", author: "George Orwell", publish_date: "June 8, 1949", summary: "The book is set in 1984 in Oceania, one of three perpetually warring totalitarian states (the other two are Eurasia and Eastasia). Oceania is governed by the all-controlling Party, which has brainwashed the population into unthinking obedience to its leader, Big Brother."),
        Book(cover: "American_Dirt", name: "American Dirt", author: "Jeanine Cummins", publish_date: "June 4, 2018", summary: "American Dirt is a 2020 novel by American author Jeanine Cummins, about the ordeal of a Mexican woman who had to leave behind her life and escape as an undocumented immigrant to the United States with her son."),
        Book(cover: "Atomic_Habits", name: "Atomic Habits", author: "James Clear", publish_date: "October 16, 2018", summary: "Atomic Habits is the definitive guide to breaking bad behaviors and adopting good ones in four steps, showing you how small, incremental, everyday routines compound into massive, positive change over time."),
        Book(cover: "Between_Two_Kingdoms", name: "Between Two Kingdoms", author: "Suleika Jaouad", publish_date: "February 9, 2021", summary: "A searing, deeply moving memoir of illness and recovery that traces one young woman's journey from diagnosis to remission and, ultimately, a road trip of healing and self-discovery."),
        Book(cover: "Cherry_Beach", name: "Cherry Beach", author: "Laura McPhee-Browne", publish_date: "February 4, 2020", summary: "'Laura McPhee-Browne's Cherry Beach is an acute and gripping novel about being made and unmade by first love. In prose reminiscent of Elizabeth Jolley's, McPhee-Browne portrays the helpless entanglement of two friends in their impossible quest for self-determination"),
        Book(cover: "The_Catcher_in_the_Rye", name: "The Catcher in the Rye", author: "J. D. Salinger", publish_date: "July 16, 1951", summary: " The novel details two days in the life of 16-year-old Holden Caulfield after he has been expelled from prep school. Confused and disillusioned, Holden searches for truth and rails against the “phoniness” of the adult world."),
        Book(cover: "The_Little_Prince", name: "", author: "The Little Prince", publish_date: "April 1943", summary: "The Little Prince is an honest and beautiful story about loneliness, friendship, sadness, and love. The prince is a small boy from a tiny planet (an asteroid to be precise), who travels the universe, planet-to-planet, seeking wisdom. On his journey, he discovers the unpredictable nature of adults."),
        Book(cover: "The_Maid", name: "The Maid", author: "Nita Prose", publish_date: "January 4, 2022", summary: "In Nita Prose's The Maid, Molly Gray, a hotel maid quickly finds herself caught in a web of deception when she is targeted as a suspect of the murder of the infamous and wealthy Charles Black. This locked-room mystery reveals that all mysteries can be solved through connection to the human heart."),
        Book(cover: "The_Midnight_Library", name: "The Midnight Library", author: "Matt Haig", publish_date: "August 13, 2020", summary: "Matt Haig's unique novel The Midnight Library ponders the infinite possibilities of life. It is about a young woman named Nora Seed, who lives a monotonous, ordinary life and feels unwanted and unaccomplished. One night, her despair reaches a peak and she commits suicide."),
        Book(cover: "The_Psychology_of_Money", name: "The Psychology of Money", author: "Morgan Housel", publish_date: "September 8, 2020", summary: "The Psychology of Money explores how money moves around in an economy and how personal biases and the emotional factor play an important role in our financial decisions, as well as how to think more rationally and make better decisions when it comes to money."),
        Book(cover: "The_Subtle_Art_of_Not_Giving_a_F*ck", name: "The Subtle Art of Not Giving a F*ck", author: "Mark Manson", publish_date: "September 13, 2016", summary: "The Subtle Art of Not Giving a F*ck is a book that challenges the conventions of self-help by inviting the reader to NOT try, say no often and embrace negative thinking. Not giving a f*ck is about being comfortable with being different and caring about something more important than adversity."),
        Book(cover: "Where_the_Crawdads_Sing", name: "Where the Crawdads Sing", author: "Delia Owens", publish_date: "August 14, 2018", summary: "Where the Crawdads Sing is part bildungsroman and part crime drama, centered around Kya, a wild and unkempt girl. The book follows the ups and downs of her life. She lives a lonely life, but her story is a hopeful one as well. With a little help, she's able to survive and even learn to read.")
    ]
    
    
    var body: some View {
        
        NavigationView{
            List(books){ book in
                Section{
                    NavigationLink {
                        BookView(book: book)
                    } label: {
                        HStack(spacing: 20){
                            Image(book.cover)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .shadow(color: .gray, radius: 5.0)
                            
                            VStack (alignment: .leading ,spacing: 15){
                                Text(book.name)
                                    .font(.headline)
                                Text(book.author)
                                    .font(.headline)
                                    .foregroundColor(.gray)
                                
                            }
                            
                        }
                        
                    }.padding()
                }
                
                
            }
            .navigationTitle("Library")
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
