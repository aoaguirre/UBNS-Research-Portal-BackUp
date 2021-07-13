//
//  SpineExtraViewController.swift
//  UBNS Research Portal
//
//  Created by Alex Aguirre on 6/30/21.
//
import Foundation
import UIKit
import Firebase

class SpineExtraViewController: UIViewController {

    var spineprojects = [SpineProject]()
    
    @IBOutlet weak var projectnameLabel: UILabel!
    @IBOutlet weak var residentnameLabel: UILabel!
    @IBOutlet weak var lengthofprojectLabel: UILabel!

    @IBOutlet weak var IRBhelpLabel: UILabel!
    @IBOutlet weak var LitReviewLabel: UILabel!
    @IBOutlet weak var StatisticsLabel: UILabel!
    @IBOutlet weak var DCUBNSLabel: UILabel!
    @IBOutlet weak var DCKLabel: UILabel!
    @IBOutlet weak var ManuscriptLabel: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    func configureCell(spineproject: SpineProject) {
        projectnameLabel.text = spineproject.projectname
        residentnameLabel.text = spineproject.residentname
    }
}
