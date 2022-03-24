//
//  ItemList.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//

import Foundation

let itemsKey = "ITEMS_LIST"

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
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(items)

            UserDefaults.standard.set(data, forKey: itemsKey)
        } catch {
            print("Unable to Encode Note (\(error))")
        }
        
    }
    
    static func loadItemsFromUserDefaults()
    {
        if let data = UserDefaults.standard.data(forKey: itemsKey) {
            do {
                let decoder = JSONDecoder()
                items = try decoder.decode([Item].self, from: data)
            } catch {
                print("Unable to Decode Note (\(error))")
            }
        }
    }
}
