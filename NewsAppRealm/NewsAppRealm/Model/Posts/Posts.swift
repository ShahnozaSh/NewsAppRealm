//
//  Posts.swift
//  NewsAppRealm
//
//  Created by Shahnoza on 14/3/22.
//

import Foundation
import RealmSwift

protocol Requestable: Codable {
    static var urlRequest: URLRequest { get }
}

class Posts: Object, Requestable {
    @objc dynamic var userId: Int
    @objc dynamic var postId: Int
    @objc dynamic var title: String
    @objc dynamic var desc: String
    
    enum CodingKeys: String, CodingKey {
        case title, userId
        case postId = "id"
        case desc = "body"
    }
    
    static var urlRequest: URLRequest {
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        let request = URLRequest(url: url)
        return request
    }
}
© 2022 GitHub, Inc.
