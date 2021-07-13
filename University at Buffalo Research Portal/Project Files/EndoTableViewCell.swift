//
//  EndoTableViewCell.swift
//  UBNS Research Portal
//
//  Created by Alex Aguirre on 6/29/21.
//

import UIKit
import Firebase

class EndoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var idLabel: UILabel!
    
    @IBOutlet weak var projectnameLabel: UILabel!
    @IBOutlet weak var residentnamelabel: UILabel!
    @IBOutlet weak var numberofstudentsLabel: UILabel!
    
    
    @IBOutlet weak var IRBHelpL: UILabel!
    @IBOutlet weak var LitReviewL: UILabel!
    @IBOutlet weak var StatsL: UILabel!
    @IBOutlet weak var DCUBNSL: UILabel!
    @IBOutlet weak var DCKL: UILabel!
    @IBOutlet weak var ManuscriptL: UILabel!
    
    @IBOutlet weak var MS1Title: UILabel!
    @IBOutlet weak var MS1Name: UITextField!
    @IBOutlet weak var MS1Email: UITextField!
    
    @IBOutlet weak var MS2Title: UILabel!
    @IBOutlet weak var MS2Name: UITextField!
    @IBOutlet weak var MS2Email: UITextField!
    
    @IBOutlet weak var MS3Title: UILabel!
    @IBOutlet weak var MS3Name: UITextField!
    @IBOutlet weak var MS3Email: UITextField!
    
    @IBOutlet weak var MS4Title: UILabel!
    @IBOutlet weak var MS4Name: UITextField!
    @IBOutlet weak var MS4Email: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    
    func configureCell(endoproject: EndoProject) {
        projectnameLabel.text = endoproject.projectname
        residentnamelabel.text = endoproject.residentname
        numberofstudentsLabel.text = endoproject.numberofstudents
        IRBHelpL.text = endoproject.IRBhelp
        LitReviewL.text = endoproject.LitReview
        StatsL.text = endoproject.Stats
        DCUBNSL.text = endoproject.DCUBNS
        DCKL.text = endoproject.DCK
        ManuscriptL.text = endoproject.Manuscript
        idLabel.text = endoproject.documentID
        MS1Name.text = endoproject.MS1Name
        MS1Email.text = endoproject.MS1Email
        MS2Name.text = endoproject.MS2Name
        MS2Email.text = endoproject.MS2Email
        MS3Name.text = endoproject.MS3Name
        MS3Email.text = endoproject.MS3Email
        MS4Name.text = endoproject.MS4Name
        MS4Email.text = endoproject.MS4Email
    }
    
    
    func displayValueMS0() {
    
        if numberofstudentsLabel.text == "0" {
            
            MS1Title.isHidden = true
            MS1Name.isHidden = true
            MS1Email.isHidden = true
            
            MS2Title.isHidden = true
            MS2Name.isHidden = true
            MS2Email.isHidden = true
            
            MS3Title.isHidden = true
            MS3Name.isHidden = true
            MS3Email.isHidden = true
            
            MS4Title.isHidden = true
            MS4Name.isHidden = true
            MS4Email.isHidden = true
        }
        else{return}
    }
    
    func displayValueMS1() {
        if numberofstudentsLabel.text == "1" {
            
            if MS1Name.text == "" {
                MS1Title.isHidden = false
                MS1Name.isHidden = false
                MS1Email.isHidden = false
                
                MS2Title.isHidden = true
                MS2Name.isHidden = true
                MS2Email.isHidden = true
                
                MS3Title.isHidden = true
                MS3Name.isHidden = true
                MS3Email.isHidden = true
                
                MS4Title.isHidden = true
                MS4Name.isHidden = true
                MS4Email.isHidden = true
                
            }
            
            else if MS1Name.text != "" {
                
                print ("this is the wrong one")
                MS1Title.isHidden = true
                MS1Name.isHidden = true
                MS1Email.isHidden = true
                
                MS2Title.isHidden = true
                MS2Name.isHidden = true
                MS2Email.isHidden = true
                
                MS3Title.isHidden = true
                MS3Name.isHidden = true
                MS3Email.isHidden = true
                
                MS4Title.isHidden = true
                MS4Name.isHidden = true
                MS4Email.isHidden = true
            }
        }
        
        else{return}
    }
    
    func displayValueMS2() {
        if (numberofstudentsLabel.text == "2"){
            
         if MS2Name.text == "" {
            
            MS2Title.isHidden = false
            MS2Name.isHidden = false
            MS2Email.isHidden = false
            
            if MS1Name.text == "" {
            print("this is bonkers")
            MS1Title.isHidden = false
                MS1Name.isHidden = false
                MS1Email.isHidden = false
                
                MS3Title.isHidden = true
                MS3Name.isHidden = true
                MS3Email.isHidden = true
                
                MS4Title.isHidden = true
                MS4Name.isHidden = true
                MS4Email.isHidden = true
            
            }
            else if MS1Name.text != "" {
                print("this is not working")
                    MS1Title.isHidden = true
                    MS1Name.isHidden = true
                    MS1Email.isHidden = true
                
                    MS3Title.isHidden = true
                    MS3Name.isHidden = true
                    MS3Email.isHidden = true
                    
                    MS4Title.isHidden = true
                    MS4Name.isHidden = true
                    MS4Email.isHidden = true
                }
            }
         else if MS2Name.text != "" {
            print("this is crazy")
            MS1Title.isHidden = true
            MS1Name.isHidden = true
            MS1Email.isHidden = true
            
            MS2Title.isHidden = true
            MS2Name.isHidden = true
            MS2Email.isHidden = true
            
            MS3Title.isHidden = true
            MS3Name.isHidden = true
            MS3Email.isHidden = true
            
            MS4Title.isHidden = true
            MS4Name.isHidden = true
            MS4Email.isHidden = true
            
         }

            
         }
        else {return}
    }
           
    
    func displayValueMS3() {
        
        if numberofstudentsLabel.text == "3" {
            
            MS4Title.isHidden = true
            MS4Name.isHidden = true
            MS4Email.isHidden = true
            
         if MS3Name.text == "" {
            
            MS3Title.isHidden = false
            MS3Name.isHidden = false
            MS3Email.isHidden = false
            
            if MS2Name.text == "" {
               
               MS2Title.isHidden = false
               MS2Name.isHidden = false
               MS2Email.isHidden = false
               
               if MS1Name.text == "" {
               print("this is bonkers")
               MS1Title.isHidden = false
                   MS1Name.isHidden = false
                   MS1Email.isHidden = false
                   
               
               }
               else if MS1Name.text != "" {
                   print("this is not working1")
                       MS1Title.isHidden = true
                       MS1Name.isHidden = true
                       MS1Email.isHidden = true
                       
                   }
               }
            else if MS2Name.text != "" {
               print("this is crazy")
               MS1Title.isHidden = true
               MS1Name.isHidden = true
               MS1Email.isHidden = true
               
               MS2Title.isHidden = true
               MS2Name.isHidden = true
               MS2Email.isHidden = true
               
            }
            }
         
         else if MS3Name.text != "" {
            print("this is crazy")
            MS1Title.isHidden = true
            MS1Name.isHidden = true
            MS1Email.isHidden = true
            
            MS2Title.isHidden = true
            MS2Name.isHidden = true
            MS2Email.isHidden = true
            
            MS3Title.isHidden = true
            MS3Name.isHidden = true
            MS3Email.isHidden = true
            
            
         }
        
        }
        else{return}
    }
    
    func displayValueMS4() {
        if numberofstudentsLabel.text == "4" {
           
            if MS4Name.text == "" {
            
                MS4Title.isHidden = false
                MS4Name.isHidden = false
                MS4Email.isHidden = false
                
                if MS3Name.text == "" {
                   
                   MS3Title.isHidden = false
                   MS3Name.isHidden = false
                   MS3Email.isHidden = false
                   
                   if MS2Name.text == "" {
                      
                      MS2Title.isHidden = false
                      MS2Name.isHidden = false
                      MS2Email.isHidden = false
                      
                      if MS1Name.text == "" {
                      print("this is bonkers")
                      MS1Title.isHidden = false
                          MS1Name.isHidden = false
                          MS1Email.isHidden = false
                        
                      
                      }
                      else if MS1Name.text != "" {
                          print("this is not working1")
                              MS1Title.isHidden = true
                              MS1Name.isHidden = true
                              MS1Email.isHidden = true
                              
                          }
                      }
                   else if MS2Name.text != "" {
                      print("this is crazy")
                      MS1Title.isHidden = true
                      MS1Name.isHidden = true
                      MS1Email.isHidden = true
                      
                      MS2Title.isHidden = true
                      MS2Name.isHidden = true
                      MS2Email.isHidden = true

                      
                   }
                }
                   else if MS3Name.text != "" {
                      print("this is crazy")
                      MS1Title.isHidden = true
                      MS1Name.isHidden = true
                      MS1Email.isHidden = true
                      
                      MS2Title.isHidden = true
                      MS2Name.isHidden = true
                      MS2Email.isHidden = true
                      
                      MS3Title.isHidden = true
                      MS3Name.isHidden = true
                      MS3Email.isHidden = true
                    
                      
                   
                   }
           
           }
            else if MS4Name.text != ""{
                print("this is crazy")
                MS1Title.isHidden = true
                MS1Name.isHidden = true
                MS1Email.isHidden = true
                
                MS2Title.isHidden = true
                MS2Name.isHidden = true
                MS2Email.isHidden = true
                
                MS3Title.isHidden = true
                MS3Name.isHidden = true
                MS3Email.isHidden = true
                
                MS4Title.isHidden = true
                MS4Name.isHidden = true
                MS4Email.isHidden = true
            }
            }
           else{return}
       }
    
    
    
    @IBAction func buttonSubmitted(_ sender: Any) {
        MSSpot1Submit()
        MSSpot2Submit()
        MSSpot3Submit()
        MSSpot4Submit()
    }
    
    
    
    func MSSpot1Submit() {
        let db = Firestore.firestore()
        let ms1name = MS1Name.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let ms1email = MS1Email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        db.collection("endoprojects").document("\(idLabel.text ?? "")")
            .setData(["MS1Name": ms1name, "MS1Email": ms1email], merge: true)
        MS1Name.isHidden = true
        MS1Email.isHidden = true
    }

    func MSSpot2Submit() {
        let db = Firestore.firestore()
        let ms2name = MS2Name.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let ms2email = MS2Email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        db.collection("endoprojects").document("\(idLabel.text ?? "")")
            .setData(["MS2Name": ms2name, "MS2Email": ms2email,], merge: true)

    }

    func MSSpot3Submit() {
        let db = Firestore.firestore()
        let ms3name = MS3Name.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let ms3email = MS3Email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        db.collection("endoprojects").document("\(idLabel.text ?? "")")
            .setData(["MS3Name": ms3name, "MS3Email": ms3email], merge: true)

    }

    func MSSpot4Submit() {
        let db = Firestore.firestore()
        let ms4name = MS4Name.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let ms4email = MS4Email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        db.collection("endoprojects").document("\(idLabel.text ?? "")")
            .setData(["MS4Name": ms4name, "MS4Email": ms4email], merge: true)

    }

}
