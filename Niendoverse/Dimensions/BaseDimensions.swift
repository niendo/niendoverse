//
//  ThreeDimensionEngine.swift
//  Niendoverse
//
//  Created by Niendo on 27/02/2020.
//  Copyright © 2020 Niendo's. All rights reserved.
//

import Foundation
class Dimensions {
    var xDimension: Float
    var yDimension: Float
    var zDimension: Float
    
    init(xDimension: Float, yDimension: Float, zDimension: Float) {
        self.xDimension = xDimension
        self.yDimension = yDimension
        self.zDimension = zDimension
    }
    
    static func initWithZero() -> Dimensions {
        return Dimensions(xDimension: 0.0, yDimension: 0.0, zDimension: 0.0)
    }
}

class Scale {
    var unity: Float
    var factor: Float
    var minSpaceValue: Float
    var minTimeValue: Float
  
    
    init(unity: Float, minSpaceValue: Float, minTimeValue: Float, factor: Float) {
        self.unity = unity
        self.minSpaceValue = minSpaceValue
        self.minTimeValue = minTimeValue
        self.factor = factor
    }
    static func initWithBase() -> Scale {
        return Scale(unity: 1, minSpaceValue: 0.0001, minTimeValue: 1, factor: 1)
    }

}



class Coordinates {
    var xCoordinate: Float
    var yCoordinate: Float
    var zCoordinate: Float
    
    init(xCoordinate: Float, yCoordinate: Float, zCoordinate: Float) {
        self.xCoordinate = xCoordinate
        self.yCoordinate = yCoordinate
        self.zCoordinate = zCoordinate

    }

    static func initWithZero() -> Coordinates {
        return Coordinates(xCoordinate: 0.0, yCoordinate: 0.0, zCoordinate: 0.0)
    }
}

class Direction {
    var xAngle: Float
    var yAngle: Float
    var zAngle: Float
    
    init(xAngle: Float, yAngle: Float, zAngle: Float){
        self.xAngle = xAngle
        self.yAngle = yAngle
        self.zAngle = zAngle
    }
    static func initWithZero() -> Direction {
        return Direction(xAngle: 0, yAngle: 0, zAngle: 0)
    }
}

class Vector {
    var xComponent: Float
    var yComponent: Float
    var zComponent: Float
    init(xComponent: Float = 0.0, yComponent: Float = 0.0, zComponent: Float = 0.0) {
        self.xComponent = xComponent
        self.yComponent = yComponent
        self.zComponent = zComponent
    }
    
    
    func add(other: Vector) -> Vector {
        return Vector(xComponent: self.xComponent + other.xComponent, yComponent: self.yComponent + other.yComponent, zComponent: self.zComponent + other.zComponent)
    }
    
    func substract(other: Vector) -> Vector {
        return Vector(xComponent: self.xComponent - other.xComponent, yComponent: self.yComponent - other.yComponent, zComponent: self.zComponent - other.zComponent)
    }
    
    func multiply(other: Vector) -> Vector {
        return Vector(xComponent: self.xComponent * other.xComponent, yComponent: self.yComponent * other.yComponent, zComponent: self.zComponent * other.zComponent)
    }
}
