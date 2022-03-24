//
//  ItemList.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//

import Foundation

let userDefaultsKey = "ITEMS_LIST"

class ItemList{
    static var items = [Item]()
    
     static func addItem(item: Item){
        // complete code
        items.append(item)
         updateUserDefaults()
    }
    
    static func deleteItem(row: Int){
        // complete code
        items.remove(at: row)
        updateUserDefaults()
    }
    
    static func moveItem(from: Int, to: Int){
        // complete code
        let itemToMove = items[from]
        items[to] = itemToMove
        items.remove(at: from)
        updateUserDefaults()
    }
    
    static private func updateUserDefaults()
    {
        UserDefaults.standard.set(items, forKey: userDefaultsKey)
    }
    
}
