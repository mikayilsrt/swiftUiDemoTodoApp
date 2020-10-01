//
//  TodoViewModel.swift
//  swiftUiDemoTodoApp
//
//  Created by Mikayil SERT on 30/09/2020.
//

import Foundation


class TodoViewModel : ObservableObject {
    
    @Published var todos : [Todo] = []
    
    init() {
        self.fetchAllTodos()
    }
    
    func removeItem(todo: Todo) {
        DispatchQueue.main.async {
            for (index, item) in self.todos.enumerated() {
                if item.id == todo.id {
                    self.todos.remove(at: index)
                }
            }
        }
    }
    
    private func fetchAllTodos() {
        DispatchQueue.main.async {
            TodoService().getAllTodos {
                self.todos = $0
            }
        }
    }
    
}
