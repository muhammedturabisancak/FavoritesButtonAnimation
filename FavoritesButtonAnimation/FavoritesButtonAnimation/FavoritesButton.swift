//
//  FavoritesButton.swift
//  FavoritesButtonAnimation
//
//  Created by Muhammed Turabi Sancak on 14.09.2024.
//

import SwiftUI

struct FavoritesButton: View {
  
  @State var Added = false
    var body: some View {
      HStack{
        Image(systemName: Added ? "heart.fill" : "heart")
          .foregroundStyle(Added ? .red : .black)
          .symbolEffect(.bounce,options: .repeat(Added ? 2 : 0), value: Added)
        Group{
          if Added{
            Text("Added to Favorites")
              .transition(.offset(y: 40))
          }else{
            Text("Add to Favorites")
              .transition(.offset(y: -40))
          }
        }
        
        .frame(width: 181, alignment: .leading)
        .foregroundStyle(.black)
      }
      
      .font(.title2).padding(12)
      .background(.white, in: .rect(cornerRadius: 12))
      .clipped()
      .shadow(color: .black.opacity(0.15), radius: 10)
      .onTapGesture {
        withAnimation {
          Added.toggle()
        }
      }
    }
}

#Preview {
    FavoritesButton()
}
//