//
//  ShadowModel.swift
//  UBNS Research Portal
//
//  Created by Alex Aguirre on 7/9/21.
//

import Foundation

struct ShadowEvent{
    
    
    let documentID: String
    let shadowdate: String
    let shadowingtime: String
    let shadowingdoctor: String
    let numberofstudents: String
    let EndoL : String
    let SpineL: String
    let PedsL: String
    let FuncL: String
    let ResidentL: String
    
    let MS1Name: String
    let MS1Email: String
    let MS2Name: String
    let MS2Email: String
    let MS3Name: String
    let MS3Email: String
    let MS4Name: String
    let MS4Email: String
    
    var EndoProject: [String: Any] {
    
        ["documentID":documentID,
     "shadowdate": shadowdate,
     "shadowingtime": shadowingtime,
     "shadowingdoctor": shadowingdoctor,
     "numberofstudents": numberofstudents,
     "EndoL": EndoL,
     "SpineL": SpineL,
     "PedsL": PedsL,
     "FuncL": FuncL,
     "ResidentL": ResidentL,
     "MS1Name": MS1Name,
     "MS1Email": MS1Email,
     "MS2Name": MS2Name,
     "MS2Email": MS2Email,
     "MS3Name": MS3Name,
     "MS3Email": MS3Email,
     "MS4Name": MS4Name,
     "MS4Email": MS4Email]
 
    }
}
