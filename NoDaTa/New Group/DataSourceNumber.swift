//
//  dataSourceNumber.swift
//  NoDaTa
//
//  Created by dinhphu98 on 3/26/18.
//


import UIKit

class DataSourceNumber : NSObject , UITableViewDataSource {
    var arr = Array(1...2)
    var viewController: ViewController?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(arr[indexPath.row])"
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arr.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            if arr.count == 0 {
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

