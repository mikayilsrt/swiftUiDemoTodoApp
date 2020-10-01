//
//  TodoService.swift
//  swiftUiDemoTodoApp
//
//  Created by Mikayil SERT on 01/10/2020.
//

import Foundation

class TodoService {
    
    func getAllTodos(completion: @escaping ([Todo]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else { fatalError("URL is not correct!") }
    
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            let posts = try! JSONDecoder().decode([Todo].self, from: data!)
            
            DispatchQueue.main.async {
                completion(posts)
            }
        }.resume()
    }
    
}
