//
//  PracticeEndoFile.swift
//  University at Buffalo Research Portal
//
//  Created by Alex Aguirre on 6/7/21.
//

import Foundation
import FirebaseFirestore



protocol DocumentSerializable {
    
    init?(dictionary:[String:Any])
}


struct Endo {
    
    var resident:String
    var project:String
    var students:Int
    
    var dictionary:[String:Any] {
        
        return [
            "resident":resident,
            "project":project,
            "students":students]
    }
}

extension Endo : DocumentSerializable {
    init?(dictionary: [String: Any]) {
        guard  let name = dictionary["resident"] as? String,
               let project = dictionary["project"] as? String,
               let students = dictionary["students"] as? Int else {return nil}
        
        self.init(resident: resident, project: project, students: students)
    }
}
