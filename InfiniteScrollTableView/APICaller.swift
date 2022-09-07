//
//  APICaller.swift
//  InfiniteScrollTableView
//
//  Created by marco rodriguez on 07/09/22.
//

import Foundation


class APICaller {
    var isPaginating = false
    func fetchData(pagination: Bool = false, completion: @escaping (Result<[String], Error>) -> Void) {
        
        if pagination {
            isPaginating = true
        }
        
        DispatchQueue.global().asyncAfter(deadline: .now() + (pagination ? 4 : 3), execute: {
            let originalData = [
            "Facebook",
            "Google",
            "Microsoft",
            "Amazon",
            "Apple",
            "Mercado Libre",
            "IBM",
            "Facebook",
            "Google",
            "Microsoft",
            "Amazon",
            "Apple",
            "Mercado Libre",
            "IBM",
            "IBM",
            "Facebook",
            "Google",
            "Microsoft",
            "Amazon",
            "Apple",
            "Mercado Libre",
            "IBM",
            ]
            
            let newData = [
            "Manzanas",
            "Mangos",
            "Peras",
            "Uvas",
            "Pepinos",
            "Sandia",
            "Melon",
            "Manzanas",
            "Mangos",
            "Peras",
            "Uvas",
            "Pepinos",
            "Sandia",
            "Melon",
            "Manzanas",
            "Mangos",
            "Peras",
            "Uvas",
            "Pepinos",
            "Sandia",
            "Melon",
            "Manzanas",
            "Mangos",
            "Peras",
            "Uvas",
            "Pepinos",
            "Sandia",
            "Melon",
            "Manzanas",
            "Mangos",
            "Peras",
            "Uvas",
            "Pepinos",
            "Sandia",
            "Melon",
            "Manzanas",
            "Mangos",
            "Peras",
            "Uvas",
            "Pepinos",
            "Sandia",
            "Melon",
            "Manzanas",
            "Mangos",
            "Peras",
            "Uvas",
            "Pepinos",
            "Sandia",
            "Melon",
            "Manzanas",
            "Mangos",
            "Peras",
            "Uvas",
            "Pepinos",
            "Sandia",
            "Melon",
            "Manzanas",
            "Mangos",
            "Peras",
            "Uvas",
            "Pepinos",
            "Sandia",
            "Melon","Manzanas",
            "Mangos",
            "Peras",
            "Uvas",
            "Pepinos",
            "Sandia",
            "Melon",
            "Manzanas",
            "Mangos",
            "Peras",
            "Uvas",
            "Pepinos",
            "Sandia",
            "Melon",
            "Manzanas",
            "Mangos",
            "Peras",
            "Uvas",
            "Pepinos",
            "Sandia",
            "Melon",
            ]
            
            completion(.success( pagination ? newData : originalData))
            if pagination {
                self.isPaginating = false
            }
        })
    }
}
