//
//  EndoTableViewController.swift
//  UBNS Research Portal
//
//  Created by Alex Aguirre on 6/29/21.
//

import UIKit

class EndoTableViewController: UITableViewController {
    
    
    @IBOutlet weak var projectnameLabel: UILabel!
    
    @IBOutlet weak var residentnameLabel: UILabel!
    
    @IBOutlet weak var numberofstudentLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }



    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
}
