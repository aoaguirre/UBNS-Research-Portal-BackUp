//
//  NewSpineViewController.swift
//  UBNS Research Portal
//
//  Created by Alex Aguirre on 6/29/21.
//

import UIKit
import Firebase

class NewSpineViewController: UIViewController {
    
  
    @IBOutlet weak var projectnameTextField: UITextField!
    @IBOutlet weak var residentnameTextField: UITextField!
    @IBOutlet weak var lengthofprojectTextField: UITextField!
    
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var numberofstudents: UISlider!
    @IBOutlet weak var submitproject: UIButton!
    
    
    @IBOutlet weak var IRBhelp: UISwitch!
    @IBOutlet weak var IRBHelpL: UILabel!
    var isIRBButtonOn: Bool = false
    
    @IBOutlet weak var LitReview: UISwitch!
    @IBOutlet weak var LitReviewL: UILabel!
    var isLitReviewButtonOn: Bool = false
    
    @IBOutlet weak var Stats: UISwitch!
    @IBOutlet weak var StatsL: UILabel!
    var isStatsButtonOn: Bool = false
    
    @IBOutlet weak var DCUBNS: UISwitch!
    @IBOutlet weak var DCUBNSL: UILabel!
    var isDCUBNSButtonOn: Bool = false
    
    @IBOutlet weak var DCK: UISwitch!
    @IBOutlet weak var DCKL: UILabel!
    var isDCKButtonOn: Bool = false
    
    @IBOutlet weak var Manuscript: UISwitch!
    @IBOutlet weak var ManuscriptL: UILabel!
    var isManuscriptButtonOn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func IRBhelpButtonSwitched(_ sender: Any) {
        isIRBButtonOn.toggle()
        
        if isIRBButtonOn {
            IRBHelpL.text = "No"
        } else {
            IRBHelpL.text = "Yes"
        }
    }
    
    @IBAction func LitReviewButtonSwitched(_ sender: Any) {
        isLitReviewButtonOn.toggle()
        
        if isLitReviewButtonOn {
            LitReviewL.text = "No"
        } else {
            LitReviewL.text = "Yes"
        }
    }
    
    @IBAction func StatsButtonSwitched(_ sender: Any) {
        isStatsButtonOn.toggle()
        
        if isStatsButtonOn {
            StatsL.text = "No"
        } else {
            StatsL.text = "Yes"
        }
    }
    
    @IBAction func DCUBNSButtonSwitched(_ sender: Any) {
        isDCUBNSButtonOn.toggle()
        
        if isDCUBNSButtonOn {
            DCUBNSL.text = "No"
        } else {
            DCUBNSL.text = "Yes"
        }
    }
    
    @IBAction func DCKButtonSwitched(_ sender: Any) {
        isDCKButtonOn.toggle()
        
        if isDCKButtonOn {
            DCKL.text = "No"
        } else {
            DCKL.text = "Yes"
        }
    }
    
    @IBAction func ManuscriptButtonSwitched(_ sender: Any) {
        isManuscriptButtonOn.toggle()
        
        if isManuscriptButtonOn {
            ManuscriptL.text = "No"
        } else {
            ManuscriptL.text = "Yes"
        }
    }
    
    
    @IBAction func numberofStudents(_ sender: UISlider) {
        let currentValue = Int(sender.value)
            sliderLabel.text = "\(currentValue)"
    }
    
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        
        let projectname = projectnameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let residentname = residentnameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let lengthofproject = lengthofprojectTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let numberofstudents = sliderLabel.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let irbhelp = IRBHelpL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let litreview = LitReviewL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let statistics = StatsL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let DCUBNS = DCUBNSL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let DCK = DCKL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let manuscript = ManuscriptL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let MS1Name = ""
        let MS1Email = ""
        let MS2Name = ""
        let MS2Email = ""
        let MS3Name = ""
        let MS3Email = ""
        let MS4Name = ""
        let MS4Email = ""



        let db = Firestore.firestore()
        let newDocument = db.collection("spineprojects").document()
            newDocument.setData(["projectname": projectname, "residentname": residentname, "lengthofproject": lengthofproject, "numberofstudents": numberofstudents,"irbhelp": irbhelp,"litreview": litreview,"statistics": statistics, "DCUBNS": DCUBNS, "DCK": DCK, "manuscript": manuscript,"MS1Name":MS1Name, "MS1Email": MS1Email, "MS2Name": MS2Name, "MS2Email": MS2Email, "MS3Name": MS3Name,"MS3Email": MS3Email, "MS4Name": MS4Name, "MS4Email": MS4Email, "id": newDocument.documentID]) { (error) in
            
                
                
            self.transitionToHome()
            
            if error != nil {
                print("Project could not be saved")
            }

        }
            
    }
    func transitionToHome() {
        let homeViewController = storyboard?.instantiateViewController(identifier: "HomeVC")
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
        
    }
}
