//
//  File.swift
//  
//
//  Created by Oleksandr Sulyma on 10/17/19.
//

import Foundation

let silentCircle = Circle(radius: 3.5)
let circlePerimetr = silentCircle.perimeter()

public class Sandbox {
    
    public init() {
        print("[\(self)] init")
    }
    
    public func startForCircles() {
        let silentCircle = Circle(radius: 3.5)
        let circlePerimeter = silentCircle.perimeter()
        print("circle's perimeter: \(circlePerimeter)")
    }
}
