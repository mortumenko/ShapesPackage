//
//  File.swift
//  
//
//  Created by Oleksandr Sulyma on 10/17/19.
//

import Foundation

let explictedCircle = Circle(byType: .circle)
let silentCircle = Circle(radius: 3.5)
let circlePerimetr = silentCircle.perimetr()


class Sandbox {
    
    func startForCircles() {
        let silentCircle = Circle(radius: 3.5)
        let circlePerimetr = silentCircle.perimetr()
        print("circle's perimetr: \(circlePerimetr)")
    }
}
