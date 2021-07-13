//
//  EndoProjectViewController.swift
//  UBNS Research Portal
//
//  Created by Alex Aguirre on 6/29/21.
//

import UIKit
import Firebase

class EndoProjectViewController: UIViewController {

        var projectArray = [EndoProject]()
    
        @IBOutlet weak var projectnameLabel: UILabel!
    
        @IBOutlet weak var residentnameLabel: UILabel!
    
        @IBOutlet weak var numberofstudentLabel: UILabel!
    
 
    @IBOutlet weak var tableView: UITableView!
    

    
    private let noProjectsLabel: UILabel = {
        let label = UILabel()
        label.text = "No Projects!"
        label.textAlignment = .center
        label.textColor = .gray
        label.font = .systemFont(ofSize: 21, weight: .medium)
        label.isHidden = true
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        setupTableView()
        tableView.register(EndoTableViewCell.self,
                       forCellReuseIdentifier: EndoTableViewCell.identifier)
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }

    
    
    override func viewDidAppear(_ animated: Bool) {


        let db = Firestore.firestore()
        db.collection("endoprojects").getDocuments{ (snapshot, error) in
            if let error = error {
                debugPrint("Error fetching documents: \(error)")
            }
            else {
                guard let snap = snapshot else {return}
                for document in snap.documents {
                    let data = document.data()
                    let projectname = data["projectname"] as? String ?? ""
                    let residentname = data["residentname"] as? String ?? ""
                    let numberofstudents = data["numberofstudents"] as? String ?? ""

                    let newElement = EndoProject(projectname: projectname, residentname: residentname, numberofstudents: numberofstudents)

                    self.projectArray.append(newElement)
                }
            }
        }
        self.tableView.reloadData()
        print("print\(String(describing: projectnameLabel))")
    }

  

}


extension EndoProjectViewController: UITableViewDelegate, UITableViewDataSource {

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projectArray.count
    }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: EndoTableViewCell.identifier, for: indexPath) as! EndoTableViewCell

            cell.configureCell(endoproject: projectArray[indexPath.row])
            return cell
    }

     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }



}
