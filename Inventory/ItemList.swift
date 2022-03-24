//
//  ItemList.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//

import Foundation

class ItemList{
    var items = [Item]()
    
    func addItem(item: Item){
        // complete code
        items.append(item)
    }
    
    func deleteItem(row: Int){
        // complete code
        items.remove(at: row)
    }
    
    func moveItem(from: Int, to: Int){
        // complete code
        let itemToMove = items[from]
        items[to] = itemToMove
        items.remove(at: from)
    }
    
}
