//  Concurrency - ImageURL.swift
//  Created by zhilly on 2023/02/28

import Foundation

enum ImageURL {
    private static let idArray: [String] = [
        "europe-4k-1369012",
        "europe-4k-1318341",
        "europe-4k-1379801",
        "cool-lion-167408",
        "iron-man-323408"
    ]
    
    static subscript(index: Int) -> URL? {
        guard let id = idArray[safe: index] else { return nil }
        return URL(string: "https://wallpaperaccess.com/download/" + id)
    }
}
