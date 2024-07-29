//
//  ContentView.swift
//  Bookworm
//
//  Created by Joao Leal on 7/29/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var context
    @Query var books: [Book]

    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(books) { book in
                    NavigationLink(value: book) {
                        HStack{
                            EmojiRatingView(rating: book.rating)
                                .font(.largeTitle)
                        }
                    }}
            }
                .navigationTitle("BookWorm")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing)
                                {
                        Button("Add Book", systemImage: "plus") {
                            showingAddScreen.toggle()
                        }}
                }
                .sheet(isPresented: $showingAddScreen) {
                    AddBookView()
                }
           
    
        }
    }
}

#Preview {
    ContentView()
}
