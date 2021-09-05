//
//  EndoTableViewController.swift
//  UBNS Research Portal
//
//  Created by Alex Aguirre on 6/29/21.
//
import Foundation
import UIKit
import Firebase

class EndoTableViewController: UITableViewController {
        
    var endoprojects = [EndoProject]()
    
    @IBOutlet weak var projectnameLabel: UILabel!
    @IBOutlet weak var residentnameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let db = Firestore.firestore()
        db.collection("endoprojects").getDocuments{ (snapshot, error) in
            if let error = error {
                debugPrint("Error fetching documents: \(error)")
            }
            else {
                guard let snap = snapshot else {return}
                for document in snap.documents {
                    let data = document.data()
                    let documentID = data["id"] as? String ?? ""
                    let projectname = data["projectname"] as? String ?? ""
                    let residentname = data["residentname"] as? String ?? ""
                    let numberofstudents = data["numberofstudents"] as? String ?? ""
                    let IRBhelp = data["irbhelp"] as? String ?? ""
                    let LitReview = data["litreview"] as? String ?? ""
                    let Stats = data["statistics"] as? String ?? ""
                    let DCUBNS = data["DCUBNS"] as? String ?? ""
                    let DCK = data["DCK"] as? String ?? ""
                    let Manuscript = data["manuscript"] as? String ?? ""
                    let MS1Name = data["MS1Name"] as? String ?? ""
                    let MS1Email = data["MS1Email"] as? String ?? ""
                    let MS2Name = data["MS2Name"] as? String ?? ""
                    let MS2Email = data["MS2Email"] as? String ?? ""
                    let MS3Name = data["MS3Name"] as? String ?? ""
                    let MS3Email = data["MS3Email"] as? String ?? ""
                    let MS4Name = data["MS4Name"] as? String ?? ""
                    let MS4Email = data["MS4Email"] as? String ?? ""
                
                
                    let newElement = EndoProject(documentID: documentID, projectname: projectname, residentname: residentname, numberofstudents: numberofstudents, IRBhelp: IRBhelp, LitReview: LitReview, Stats: Stats, DCUBNS: DCUBNS, DCK: DCK, Manuscript: Manuscript, MS1Name: MS1Name, MS1Email: MS1Email, MS2Name: MS2Name, MS2Email: MS2Email, MS3Name: MS3Name, MS3Email: MS3Email, MS4Name: MS4Name, MS4Email: MS4Email)
                    self.endoprojects.append(newElement)
                }
                self.tableView.reloadData()
            }
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return endoprojects.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "EndoCell", for: indexPath) as? EndoTableViewCell{
            
            cell.configureCell(endoproject: endoprojects[indexPath.row])
            
            cell.displayValueMS0()
            cell.displayValueMS1()
            cell.displayValueMS2()
            cell.displayValueMS3()
            cell.displayValueMS4()
            
            return cell
        }else{
            return UITableViewCell()
        }
    }

    
}

