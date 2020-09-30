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
    
}
