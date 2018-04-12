//
//  DataSourceCharacter.swift
//  NoDaTa
//
//  Created by dinhphu98 on 3/26/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class DataSourceCharacter  : NSObject , UITableViewDataSource {
    var arrString = ["a","b"]
    var viewController: ViewController?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrString.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrString[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arrString.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            if arrString.count == 0 {
                viewController?.check = true
            }
            else {
                viewController?.check = false
            }
        }
        else if editingStyle == .insert {
            
        }
    }
    
}
