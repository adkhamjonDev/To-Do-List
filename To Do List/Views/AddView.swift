//
//  AddView.swift
//  To Do List
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct AddView: View {
    
    @Environment(TodoListViewModel.self) var viewModel
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var textFiledString:String = ""
    
    @State var alertTitle: String = ""
    
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here...",text:$textFiledString)
                    .padding(.horizontal)
                    .frame(height: 50)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                
                Button(
                    action: saveButtonPressed,
                    label:{
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
            }
            .padding(16)
        }
        .navigationTitle("Add an Item 🖋️")
        .alert(
            isPresented: $showAlert) {
                returnAlert()
            }
    }
    
    func saveButtonPressed(){
        if textIsAppropriate() {
            viewModel.addItem(title: textFiledString)
            presentationMode.wrappedValue.dismiss()
        }
        
    }
    
    func textIsAppropriate() -> Bool{
        if textFiledString.count<3{
            alertTitle = "Your new todo item must be at least 3 characters 🤨😒"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func returnAlert() -> Alert {
        return Alert(
            title: Text(alertTitle)
        )
    }
}

#Preview {
    NavigationStack{
        AddView()
    }.environment(TodoListViewModel())
}
