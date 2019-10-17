//
//  Container.swift
//  
//
//  Created by Oleksandr Sulyma on 10/17/19.
//

import Foundation


protocol MeasuredShape {
    func perimetr() -> CGFloat
    func area() -> CGFloat
}

protocol Measured3dShape {
    func volume() -> CGFloat
}

extension MeasuredShape {
    func perimetr() -> CGFloat { return -1.0 }
    func area() -> CGFloat { return 0.0 }
}

class BaseShape {
    let shapeType: ShapesPackage.Types
    
    required init(byType: ShapesPackage.Types) {
        shapeType = byType
    }
}

class Circle: BaseShape {
    var radius: CGFloat!
    
    convenience init(radius: CGFloat) {
        self.init(byType: ShapesPackage.Types.circle)
        self.radius = radius
    }
    
}


extension Circle: MeasuredShape {
    func perimetr() -> CGFloat {
        return radius * 2.0 * .pi
    }
}
