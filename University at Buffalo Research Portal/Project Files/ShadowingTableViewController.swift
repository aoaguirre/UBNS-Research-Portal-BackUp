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
                let documentID = data["id"] as? String ?? ""
                let shadowdate = data["shadowdate"] as? String ?? ""
                let shadowtime = data["shadowingtime"] as? String ?? ""
                let doctorname = data["doctortoshadow"] as? String ?? ""
                let numberofstudents = data["numberofstudents"] as? String ?? ""
                let endo = data["endo"] as? String ?? ""
                let spine = data["spine"] as? String ?? ""
                let peds = data["peds"] as? String ?? ""
                let funcL = data["funca"] as? String ?? ""
                let resident = data["resident"] as? String ?? ""
                let MS1Name = data["MS1Name"] as? String ?? ""
                let MS1Email = data["MS1Email"] as? String ?? ""
                let MS2Name = data["MS2Name"] as? String ?? ""
                let MS2Email = data["MS2Email"] as? String ?? ""
                let MS3Name = data["MS3Name"] as? String ?? ""
                let MS3Email = data["MS3Email"] as? String ?? ""
                let MS4Name = data["MS4Name"] as? String ?? ""
                let MS4Email = data["MS4Email"] as? String ?? ""
                
                let newElement = ShadowEvent(documentID: documentID, shadowdate: shadowdate, shadowingtime: shadowtime, shadowingdoctor: doctorname, numberofstudents: numberofstudents, EndoL: endo, SpineL: spine, PedsL: peds, FuncL: funcL, ResidentL: resident, MS1Name: MS1Name, MS1Email: MS1Email, MS2Name: MS2Name, MS2Email: MS2Email, MS3Name: MS3Name, MS3Email: MS3Email, MS4Name: MS4Name, MS4Email: MS4Email)
                
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
            
            cell.displayValueMS0()
            cell.displayValueMS1()
            cell.displayValueMS2()
            cell.displayValueMS3()
            cell.displayValueMS4()
            
            cell.typeofshadowing()
            
            return cell
        }else{
            return UITableViewCell()
        }
    }

}
