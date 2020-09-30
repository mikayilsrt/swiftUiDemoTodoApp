//
//  swiftUiDemoTodoAppApp.swift
//  swiftUiDemoTodoApp
//
//  Created by Mikayil SERT on 30/09/2020.
//

import SwiftUI

@main
struct swiftUiDemoTodoAppApp: App {
    var body: some Scene {
        WindowGroup {
            TodoListView()
        }
    }
}

struct swiftUiDemoTodoAppApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
