//
//  AddView.swift
//  To Do List
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct AddView: View {
    @State var textFiledString:String = ""
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here...",text:$textFiledString)
                    .padding(.horizontal)
                    .frame(height: 50)
                    .background(Color.gray.brightness(0.35))
                    .cornerRadius(10)
                
                Button(
                    action:{
                        
                    }, label:{
                        Text("Save".uppercased())
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                    }
                )
                
            }.padding(16)
        }
        .navigationTitle("Add an Item 🖋️")
    }
}

#Preview {
    NavigationStack{
        AddView()
    }
}
