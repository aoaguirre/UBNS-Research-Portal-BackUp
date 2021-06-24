//
//  Constants.swift
//  University at Buffalo Research Portal
//
//  Created by Alex Aguirre on 5/2/21.
//

import Foundation
import UIKit

struct Constants {
    
    struct Storyboard {
        
         let TitleHomeViewController = "TitleVC"
        
    }
}

extension UIView {
    public var width: CGFloat {
        return frame.size.width
    }
    public var height: CGFloat {
        return frame.size.height
    }
    public var top: CGFloat {
        return frame.origin.y
    }
    public var bottom: CGFloat {
        return frame.size.height + frame.origin.y
    }
    public var left: CGFloat {
        return frame.origin.x
    }
    public var right: CGFloat {
        return frame.size.width + frame.origin.x
    }
}
