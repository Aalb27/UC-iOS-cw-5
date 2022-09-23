//
//  ContentView.swift
//  emoji
//
//  Created by Abdulaziz Albalool on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var emojis = ["🥳", "😱", "😎", "😇", "😡", "😱", "😳", "😍"]
    @State var img = ""
    
    var body: some View {
        VStack{
            Text("اختار الايموجي الي يناسبك")
          Spacer(minLength: 200)
            
                Text(img)
        ScrollView(.horizontal) {
        HStack{
                    ForEach(emojis, id: \.self){ emoji in
                        Text(emoji)  .onTapGesture {
                            img = emoji
                    
                        }} .multilineTextAlignment(.center)
                .padding(5)
             
            
                  
            
            }
            Spacer()
    }
        }
    
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
