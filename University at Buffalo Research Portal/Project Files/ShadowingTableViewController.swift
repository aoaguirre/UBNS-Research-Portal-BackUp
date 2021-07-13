//
//  ShadowingTableViewController.swift
//  UBNS Research Portal
//
//  Created by Alex Aguirre on 7/9/21.
//
import Foundation
import UIKit
import Firebase

class ShadowingTableViewController: UITableViewController {

    var shadowing =  [ShadowEvent]()
    
    @IBOutlet weak var shadowdate: UILabel!
    @IBOutlet weak var shadowtime: UILabel!
    @IBOutlet weak var doctorname: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let db = Firestore.firestore()
        db.collection("shadowing").getDocuments{(snapshot, error) in
        if let error = error {
            debugPrint("Error fetching document: \(error)")
        }
        else {
            guard let snap = snapshot else
            {return}
            for document in snap.documents {
                let data = document.data()
                let shadowdate = data["shadowdate"] as? String ?? ""
                let shadowtime = data["shadowingtime"] as? String ?? ""
                let doctorname = data["doctortoshadow"] as? String ?? ""
                
                let newElement = ShadowEvent(shadowdate: shadowdate, shadowingtime: shadowtime, shadowingdoctor: doctorname)
                self.shadowing.append(newElement)
            }
            self.tableView.reloadData()
        }
    }

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shadowing.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell =  tableView.dequeueReusableCell(withIdentifier: "ShadowCell", for: indexPath) as? ShadowingTableViewCell {
        
            cell.configureCell(shadowing: shadowing[indexPath.row])
            return cell
        }else{
            return UITableViewCell()
        }
    }

}
