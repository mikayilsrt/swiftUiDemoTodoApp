//
//  TodoItem.swift
//  swiftUiDemoTodoApp
//
//  Created by Mikayil SERT on 30/09/2020.
//

import SwiftUI

struct TodoItem: View {
    
    private var title: String
    @Binding var completed: Bool
    
    var body: some View {
        Toggle(isOn: $completed) {
            Text(title)
        }
    }
}

/*
struct TodoItem_Previews: PreviewProvider {
    static var previews: some View {
        TodoItem()
    }
}
*/
