//
//  Todo.swift
//  swiftUiDemoTodoApp
//
//  Created by Mikayil SERT on 30/09/2020.
//

import Foundation

struct Todo : Identifiable {
    let id = UUID()
    var title: String
    var completed: Bool = false
}
