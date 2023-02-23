//  Concurrency - Array+Extension.swift
//  Created by zhilly on 2023/02/23

extension Array {
    public subscript (safe index: Int) -> Element? {
        return indices ~= index ? self[index] : nil
    }
}
