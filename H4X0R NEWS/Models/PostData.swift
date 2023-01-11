//
//  PostData.swift
//  H4X0R NEWS
//
//  Created by Atakan Cicek on 1/10/23.
//

import Foundation


struct Results: Decodable {
    let hits: [Post]
}


struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
