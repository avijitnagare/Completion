//
//  ViewController.swift
//  Completion
//
//  Created by Avijit Nagare on 01/12/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate{
   
    @IBOutlet weak var myTableView: UITableView!
    
    let model = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.makeServerCall {
            self.myTableView.dataSource = model
            self.myTableView.delegate = self
            self.myTableView.reloadData()
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UIAlertView(title: "Alert", message: String("\(model.titleForRowAtIndex(atRow: indexPath.row, index: indexPath))"), delegate: self, cancelButtonTitle:"Ok").show()
    }
   
}

