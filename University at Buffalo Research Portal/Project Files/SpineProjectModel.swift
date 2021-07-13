//
//  SpineProjectModel.swift
//  UBNS Research Portal
//
//  Created by Alex Aguirre on 6/29/21.
//

import Foundation

struct SpineProject{

    let documentID: String
    let projectname: String
    let residentname: String
    let numberofstudents: String
    let IRBhelp: String
    let LitReview: String
    let Stats: String
    let DCUBNS: String
    let DCK: String
    let Manuscript: String
    let MS1Name: String
    let MS1Email: String
    let MS2Name: String
    let MS2Email: String
    let MS3Name: String
    let MS3Email: String
    let MS4Name: String
    let MS4Email: String
    
    var SpineProject: [String: Any] {
    
        ["id": documentID,
         "projectname": projectname,
     "residentname": residentname,
     "numberofstudents": numberofstudents,
     "IRBhelp": IRBhelp,
     "LitReview": LitReview,
     "Stats": Stats,
     "DCUBNS": DCUBNS,
     "DCK": DCK,
     "manuscript": Manuscript,
     "MS1Name": MS1Name,
     "MS1Email": MS1Email,
     "MS2Name": MS2Name,
     "MS2Email": MS2Email,
     "MS3Name": MS3Name,
     "MS3Email": MS3Email,
     "MS4Name": MS4Name,
     "MS4Email": MS4Email,
    ]
 
    }
}

struct MS1Student {
    let MS1Name: String
    let MS1Email: String
    
    var MS1Student: [String: Any] {
        
        ["MS1Name": MS1Name,
         "MS1Email": MS1Email]
    }
}

struct MS2Student {
    let MS2Name: String
    let MS2Email: String
    
    var MS2Student: [String: Any] {
        
        ["MS2Name": MS2Name,
         "MS2Email": MS2Email]
    }
}

struct MS3Student {
    let MS3Name: String
    let MS3Email: String
    
    var MS3Student: [String: Any] {
        
        ["MS3Name": MS3Name,
         "MS3Email": MS3Email]
    }
}

struct MS4Student {
    let MS4Name: String
    let MS4Email: String
    
    var MS4Student: [String: Any] {
        
        ["MS4Name": MS4Name,
         "MS4Email": MS4Email]
    }
}
