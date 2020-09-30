//
//  ContentView.swift
//  swiftUiDemoTodoApp
//
//  Created by Mikayil SERT on 30/09/2020.
//

import SwiftUI

struct TodoListView: View {
    
    @ObservedObject var todoViewModel : TodoViewModel = TodoViewModel()
    
    var searchBar: some View {
        HStack {
            Spacer()
            Button(action: self.addNewItem, label: {
                Text("Add New")
            })
        }
    }
    
    func addNewItem() {
        todoViewModel.todos.append(Todo(title: "New Item", completed: false))
    }
    
    var body: some View {
        NavigationView {
            VStack {
                searchBar.padding()
                List(todoViewModel.todos) { todo in
                    Text(todo.title)
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
