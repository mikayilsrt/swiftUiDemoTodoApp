//
//  ContentView.swift
//  swiftUiDemoTodoApp
//
//  Created by Mikayil SERT on 30/09/2020.
//

import SwiftUI

struct TodoListView: View {
    
    @ObservedObject var todoViewModel : TodoViewModel = TodoViewModel()
    
    @State private var newTodoText : String = ""
    
    var searchBar: some View {
        HStack {
            TextField("New task", text: self.$newTodoText)
            Spacer()
            Button(action: self.addNewItem, label: {
                Text("Add New")
            })
        }
    }
    
    func addNewItem() {
        if !self.newTodoText.isEmpty {
            todoViewModel.todos.append(Todo(title: self.newTodoText, completed: false))
            self.newTodoText = ""
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                searchBar.padding()
                if self.todoViewModel.todos.isEmpty {
                    Spacer()
                    Text("Your todo list is empty.")
                    Spacer()
                } else {
                    List(todoViewModel.todos) { todo in
                        Text(todo.title)
                        Spacer()
                        Button(action: { self.todoViewModel.removeItem(todo: todo) }, label: {
                            Image("trash_outline")
                        }).padding()
                    }
                    .listStyle(GroupedListStyle())
                }
            }
            .navigationBarTitle("Todo List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
