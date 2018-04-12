//
//  ViewController.swift
//  NoDaTa
//
//  Created by dinhphu98 on 3/26/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dataNumber = DataSourceNumber()
    var dataCharacter = DataSourceCharacter()
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var viewHeader: UIView!
    @IBOutlet var viewFooter: UIView!
    
    var check: Bool = false {
        didSet {
            tableView.tableFooterView = check ? viewHeader : viewFooter
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dataNumber
        dataNumber.viewController = self
        dataCharacter.viewController = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func switchButton(_ sender: UISwitch) {
        if sender.isOn {
            tableView.dataSource = dataNumber
            if dataNumber.arr.count == 0 {
                check = true
            }
            else {
                 check = false
            }
        }
        else {
            tableView.dataSource = dataCharacter
            if dataCharacter.arrString.count == 0 {
                check = true
            }
            else {
                check = false
            }
        }
        tableView.reloadData()
    }
    
}



