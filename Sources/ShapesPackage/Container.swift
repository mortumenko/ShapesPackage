//
//  Container.swift
//  
//
//  Created by Oleksandr Sulyma on 10/17/19.
//

import Foundation


protocol MeasuredShape {
    func perimeter() -> CGFloat
    func area() -> CGFloat
}

protocol Measured3dShape {
    func volume() -> CGFloat
}

extension MeasuredShape {
    func perimeter() -> CGFloat { return -1.0 }
    func area() -> CGFloat { return 0.0 }
}

class BaseShape {
    let shapeType: SharedResources.Types
    
    required init(byType: SharedResources.Types) {
        shapeType = byType
    }
}


class Circle: BaseShape {
    var radius: CGFloat!
    
    convenience init(radius: CGFloat) {
        self.init(byType: SharedResources.Types.circle)
        self.radius = radius
    }
    
}


extension Circle: MeasuredShape {
    func perimeter() -> CGFloat {
        return radius * 2.0 * .pi
    }
}
