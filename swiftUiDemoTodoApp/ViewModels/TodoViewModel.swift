//
//  TodoViewModel.swift
//  swiftUiDemoTodoApp
//
//  Created by Mikayil SERT on 30/09/2020.
//

import Foundation


class TodoViewModel : ObservableObject {
    
    @Published var todos : [Todo] = [
        Todo(title: "delectus aut autem", completed: true),
        Todo(title: "delectus aut autem", completed: false),
        Todo(title: "delectus aut autem", completed: false),
        Todo(title: "delectus aut autem", completed: false)
    ]
    
    func removeItem(todo: Todo) {
        DispatchQueue.global().async {
            for (index, item) in self.todos.enumerated() {
                if item.id == todo.id {
                    self.todos.remove(at: index)
                }
            }
        }
    }
    
}
