//
//  ShadowingViewController.swift
//  UBNS Research Portal
//
//  Created by Alex Aguirre on 7/9/21.
//

import UIKit
import Firebase

class ShadowingViewController: UIViewController {

    
    @IBOutlet weak var ShadowingDateTextField: UITextField!
    @IBOutlet weak var ShadowingTimeTextField: UITextField!
    @IBOutlet weak var DoctorNameTextField: UITextField!
    
    @IBOutlet weak var numberofstudentL: UILabel!
    @IBOutlet weak var numberofstudents: UISlider!
    @IBOutlet weak var submitShadowing: UIButton!
    
    @IBOutlet weak var EndoSwitch: UISwitch!
    @IBOutlet weak var EndoSwitchL: UILabel!
    var isEndoSwitchOn: Bool = false
    
    @IBOutlet weak var SpineSwitch: UISwitch!
    @IBOutlet weak var SpineSwitchL: UILabel!
    var isSpineSwitchOn: Bool = false
    
    @IBOutlet weak var PedsSwitch: UISwitch!
    @IBOutlet weak var PedsSwitchL: UILabel!
    var isPedsSwitchOn: Bool = false
    
    @IBOutlet weak var FuncSwitch: UISwitch!
    @IBOutlet weak var FuncSwitchL: UILabel!
    var isFuncSwitchOn: Bool = false
    
    @IBOutlet weak var ResidentSwitch: UISwitch!
    @IBOutlet weak var ResidentSwitchL: UILabel!
    var isResidentSwitchOn: Bool = false
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func EndoSwitched(_ sender: Any) {
        isEndoSwitchOn.toggle()
        
        if isEndoSwitchOn {
            EndoSwitchL.text = "No"
        } else {
            EndoSwitchL.text = "Yes"
        }
    }
    
    @IBAction func SpineSwitched(_ sender: Any) {
        isSpineSwitchOn.toggle()
        
        if isSpineSwitchOn {
            SpineSwitchL.text = "No"
        } else {
            SpineSwitchL.text = "Yes"
        }
    }
    
    @IBAction func PedsSwitched(_ sender: Any) {
        isPedsSwitchOn.toggle()
        
        if isPedsSwitchOn {
            PedsSwitchL.text = "No"
        } else {
            PedsSwitchL.text = "Yes"
        }
    }
    
    @IBAction func FuncSwitched(_ sender: Any) {
        isFuncSwitchOn.toggle()
        
        if isFuncSwitchOn {
            FuncSwitchL.text = "No"
        } else {
            FuncSwitchL.text = "Yes"
        }
    }
    
    @IBAction func ResidentSwitched(_ sender: Any) {
        isResidentSwitchOn.toggle()
        
        if isResidentSwitchOn {
            ResidentSwitchL.text = "No"
        } else {
            ResidentSwitchL.text = "Yes"
        }
    }
    
    
    @IBAction func numberofstudentschanged(_ sender: UISlider) {
        
        let currentValue = Int(sender.value)
        numberofstudentL.text = "\(currentValue)"
    }
    
    
    @IBAction func shadowSubmit(_ sender: Any) {
        
        let shadowdate = ShadowingDateTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let shadowingtime = ShadowingTimeTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let doctortoshadow = DoctorNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let numberofstudents = numberofstudentL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let endo = EndoSwitchL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let spine = SpineSwitchL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let peds = PedsSwitchL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let funca = FuncSwitchL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let resident = ResidentSwitchL.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let MS1Name = ""
        let MS1Email = ""
        let MS2Name = ""
        let MS2Email = ""
        let MS3Name = ""
        let MS3Email = ""
        let MS4Name = ""
        let MS4Email = ""
        
        
        let db = Firestore.firestore()
        let newDocument = db.collection("shadowing").document()
        newDocument.setData(["shadowdate": shadowdate, "shadowingtime": shadowingtime, "doctortoshadow": doctortoshadow, "numberofstudents": numberofstudents, "endo": endo, "spine": spine, "peds": peds, "funca": funca, "resident": resident, "MS1Name": MS1Name, "MS1Email": MS1Email, "MS2Name": MS2Name, "MS2Email": MS2Email, "MS3Name": MS3Name, "MS3Email": MS3Email, "MS4Name": MS4Name, "MS4Email": MS4Email, "id": newDocument.documentID]) {(error) in
        
            
            
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
