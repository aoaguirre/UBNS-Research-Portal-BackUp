//
//  SpineTableViewCell.swift
//  UBNS Research Portal
//
//  Created by Alex Aguirre on 6/29/21.
//

import UIKit
import Firebase

class SpineTableViewCell: UITableViewCell {


    
    @IBOutlet weak var idLabel: UILabel!
    
    @IBOutlet weak var projectnameLabel: UILabel!
    @IBOutlet weak var residentnameLabel: UILabel!
    @IBOutlet weak var numberofStudents: UILabel!
    
    @IBOutlet weak var MS1StudentLabel: UILabel!
    @IBOutlet weak var MS1StudentEmailLabel: UILabel!
    @IBOutlet weak var MS2StudentLabel: UILabel!
    @IBOutlet weak var MS2StudentEmailLabel: UILabel!
    @IBOutlet weak var MS3StudentLabel: UILabel!
    @IBOutlet weak var MS3StudentEmailLabel: UILabel!
    @IBOutlet weak var MS4StudentLabel: UILabel!
    @IBOutlet weak var MS4StudentEmailLabel: UILabel!
    
    
    @IBOutlet weak var IRBhelpL: UILabel!
    @IBOutlet weak var LitReviewL: UILabel!
    @IBOutlet weak var DCUBNSL: UILabel!
    @IBOutlet weak var DCKL: UILabel!
    @IBOutlet weak var ManuscriptL: UILabel!
    @IBOutlet weak var StatsLabel: UILabel!
    
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

    func configureCell(spineproject: SpineProject) {
        projectnameLabel.text = spineproject.projectname
        residentnameLabel.text = spineproject.residentname
        numberofStudents.text = spineproject.numberofstudents
        IRBhelpL.text = spineproject.IRBhelp
        LitReviewL.text = spineproject.LitReview
        StatsLabel.text = spineproject.Stats
        DCUBNSL.text = spineproject.DCUBNS
        DCKL.text = spineproject.DCK
        ManuscriptL.text = spineproject.Manuscript
        idLabel.text = spineproject.documentID
        
        MS1Name.text = spineproject.MS1Name
        MS1StudentLabel.text = spineproject.MS1Name
        
        MS1Email.text = spineproject.MS1Email
        MS1StudentEmailLabel.text = spineproject.MS1Email
        
        MS2Name.text = spineproject.MS2Name
        MS2StudentLabel.text = spineproject.MS2Name
        
        MS2Email.text = spineproject.MS2Email
        MS2StudentEmailLabel.text = spineproject.MS2Email
        
        MS3Name.text = spineproject.MS3Name
        MS3StudentLabel.text = spineproject.MS3Name
        
        MS3Email.text = spineproject.MS3Email
        MS3StudentEmailLabel.text = spineproject.MS3Email
        
        MS4Name.text = spineproject.MS4Name
        MS4StudentLabel.text = spineproject.MS4Name
        
        MS4Email.text = spineproject.MS4Email
        MS4StudentEmailLabel.text = spineproject.MS4Email
    
}
    

    
    

    func displayValueMS0() {
    
        if numberofStudents.text == "0" {
            
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
        if numberofStudents.text == "1" {
            
            if MS1Name.text == "" {
                MS1Title.isHidden = false
                MS1Name.isHidden = false
                MS1Email.isHidden = false
                
                MS1StudentLabel.isHidden = true
                MS1StudentEmailLabel.isHidden = true
                
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
                MS1Title.isHidden = false
                MS1Name.isHidden = true
                MS1Email.isHidden = true
                
                MS1StudentLabel.isHidden = false
                MS1StudentEmailLabel.isHidden = false
                
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
        if numberofStudents.text == "2"{
            
         if MS2Name.text == "" {
            
            if MS1Name.text == "" {
            print("this is bonkers")
            MS1Title.isHidden = false
                MS1Name.isHidden = false
                MS1Email.isHidden = false
                
                MS2Title.isHidden = false
                MS2Name.isHidden = false
                MS2Email.isHidden = false
                
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
                
                MS2Title.isHidden = false
                MS2Name.isHidden = false
                MS2Email.isHidden = false
                
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
        
        if numberofStudents.text == "3" {
            
            
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
                   
                   MS4Title.isHidden = true
                   MS4Name.isHidden = true
                   MS4Email.isHidden = true
               
               }
               else if MS1Name.text != "" {
                   print("this is not working1")
                       MS1Title.isHidden = true
                       MS1Name.isHidden = true
                       MS1Email.isHidden = true
                       
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
               
               MS4Title.isHidden = true
               MS4Name.isHidden = true
               MS4Email.isHidden = true
               
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
            
            MS4Title.isHidden = true
            MS4Name.isHidden = true
            MS4Email.isHidden = true
            
         }
        
        }
        else{return}
    }
    
    func displayValueMS4() {
        if numberofStudents.text == "4" {
           
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
    

    @IBAction func submitButtonPushed(_ sender: Any) {
        
        MSSpot1Submit()
        MSSpot2Submit()
        MSSpot3Submit()
        MSSpot4Submit()
        
        
    }
       
    
        
 

    func MSSpot1Submit() {
        let db = Firestore.firestore()
        let ms1name = MS1Name.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let ms1email = MS1Email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        db.collection("spineprojects").document("\(idLabel.text ?? "")")
            .setData(["MS1Name": ms1name, "MS1Email": ms1email], merge: true)
        MS1Name.isHidden = true
        MS1Email.isHidden = true
    }

    func MSSpot2Submit() {
        let db = Firestore.firestore()
        let ms2name = MS2Name.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let ms2email = MS2Email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        db.collection("spineprojects").document("\(idLabel.text ?? "")")
            .setData(["MS2Name": ms2name, "MS2Email": ms2email,], merge: true)

    }

    func MSSpot3Submit() {
        let db = Firestore.firestore()
        let ms3name = MS3Name.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let ms3email = MS3Email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        db.collection("spineprojects").document("\(idLabel.text ?? "")")
            .setData(["MS3Name": ms3name, "MS3Email": ms3email], merge: true)

    }

    func MSSpot4Submit() {
        let db = Firestore.firestore()
        let ms4name = MS4Name.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let ms4email = MS4Email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        db.collection("spineprojects").document("\(idLabel.text ?? "")")
            .setData(["MS4Name": ms4name, "MS4Email": ms4email], merge: true)

    }








}
