//
//  ShadowModel.swift
//  UBNS Research Portal
//
//  Created by Alex Aguirre on 7/9/21.
//

import Foundation

struct ShadowEvent{
    
    let shadowdate: String
    let shadowingtime: String
    let shadowingdoctor: String
    
    var EndoProject: [String: Any] {
    
    ["shadowdate": shadowdate,
     "shadowingtime": shadowingtime,
     "shadowingdoctor": shadowingdoctor]
 
    }
}
