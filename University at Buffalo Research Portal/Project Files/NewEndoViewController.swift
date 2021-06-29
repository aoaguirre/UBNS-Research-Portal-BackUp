//
//  NewEndoViewController.swift
//  UBNS Research Portal
//
//  Created by Alex Aguirre on 6/29/21.
//

import UIKit
import Firebase

class NewEndoViewController: UIViewController {

    
    @IBOutlet weak var projectnameTextField: UITextField!
    
    @IBOutlet weak var residentnameTextField: UITextField!
    
    @IBOutlet weak var lengthofProjectTextField: UITextField!
    
    @IBOutlet weak var sliderlabel: UILabel!
    @IBOutlet weak var numberofstudents: UISlider!
    
    @IBOutlet weak var submitProject: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBOutlet weak var IRBhelp: UISwitch!
    @IBOutlet weak var IRBhelpL: UILabel!
    var isIRBButtonOn: Bool = false
    
    @IBAction func IRBButtonSwitched(_ sender: Any) {
        isIRBButtonOn.toggle()
        
        if isIRBButtonOn {
            IRBhelpL.text = "No"
        } else {
            IRBhelpL.text = "Yes"
        }
    }
    
    @IBOutlet weak var LitReview: UISwitch!
    @IBOutlet weak var LitReviewL: UILabel!
    var isLitReviewButtonOn: Bool = false
    
    @IBAction func LitReviewButtonSwitched(_ sender: Any) {
        isLitReviewButtonOn.toggle()
        
        if isLitReviewButtonOn {
            LitReviewL.text = "No"
        } else {
            LitReviewL.text = "Yes"
        }
    }
    
    
    @IBOutlet weak var Stats: UISwitch!
    @IBOutlet weak var StatsL: UILabel!
    var isStatsButtonOn: Bool = false
    
    @IBAction func StatsButtonSwitched(_ sender: Any) {
        isStatsButtonOn.toggle()
        
        if isStatsButtonOn {
            StatsL.text = "No"
        } else{
            StatsL.text = "Yes"
        }
        
    }
    
    
    @IBOutlet weak var DCUBNS: UISwitch!
    @IBOutlet weak var DCUBNSL: UILabel!
    var isDCUBNSButtonOn: Bool = false

    @IBAction func DCUBNSButtonSwitched(_ sender: Any) {
        isDCUBNSButtonOn.toggle()
        
        if isDCUBNSButtonOn {
            DCUBNSL.text = "No"
        } else {
            DCUBNSL.text = "Yes"
        }
    }
    
    
    @IBOutlet weak var DCK: UISwitch!
    @IBOutlet weak var DCKL: UILabel!
    var isDCKButtonOn: Bool = false
    
    @IBAction func DCKButtonSwitched(_ sender: Any) {
        isDCKButtonOn.toggle()
        
        if isDCKButtonOn {
            DCKL.text = "No"
        } else {
            DCKL.text = "Yes"
        }
    }
    
    @IBOutlet weak var Manuscript: UISwitch!
    @IBOutlet weak var ManuscriptL: UILabel!
    var isManuscriptButtonOn: Bool = false
    
    @IBAction func ManuscriptButtonSwitched(_ sender: Any) {
        isManuscriptButtonOn.toggle()
        
        if isManuscriptButtonOn {
            ManuscriptL.text = "No"
        } else {
            ManuscriptL.text = "Yes"
        }
    }
    
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        sliderlabel.text = "\(currentValue)"
        
    }
    

    @IBAction func submitButtonTapped(_ sender: Any) {
        let projectname = projectnameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let residentname = residentnameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let lengthofproject = lengthofProjectTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let numberofstudents = sliderlabel.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let irbhelp = IRBhelpL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let litreview = LitReviewL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let statistics = StatsL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let DCUBNS = DCUBNSL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let DCK = DCKL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let manuscript = ManuscriptL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        
        
        let db = Firestore.firestore()
        db.collection("endoprojects").document().setData(["projectname": projectname, "residentname": residentname, "lengthofproject": lengthofproject, "numberofstudents": numberofstudents,"irbhelp": irbhelp,"litreview": litreview,"statistics": statistics, "DCUBNS": DCUBNS, "DCK": DCK, "manuscript": manuscript]) { (error) in
            
            if error != nil {
                print("Project could not be saved")
            }
            
        }
        self.transitionToHome()
    }
    
    func transitionToHome() {
        let homeViewController = storyboard?.instantiateViewController(identifier: "HomeVC")
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
        
    }
}
