//
//  Core.swift
//  Niendoverse
//
//  Created by Niendo on 27/02/2020.
//  Copyright © 2020 Niendo's. All rights reserved.
//

import Foundation


class Niendoverse {
    var id: Int?
    let god = "Niendo"
    var scale = Scale.initWithBase()
    var dimension: Dimensions?
    var space: SpaceTimeInterface
    var time: SpaceTimeInterface
    init(space: SpaceTimeInterface, time: SpaceTimeInterface){
        
        self.dimension = Dimensions(xDimension: scale.minSpaceValue, yDimension: scale.minSpaceValue, zDimension: scale.minSpaceValue)
        
        self.space = space
        self.time = time
    }
    
    func doBigBang(mass: Float, size: Dimensions) {

        self.time.initOfTimeAndSpace()
        self.space.initOfTimeAndSpace()
    }
    
    func changeDimensions() {
        
    }
    func compileNiendoverseRules() {
        
    }
}


protocol SpaceTimeInterface {
    func initOfTimeAndSpace()
}

class Space: SpaceTimeInterface {
    var dimensions: Dimensions?
    var time: Time?
    init() {
        
    }
    func initOfTimeAndSpace() {
        
    }
    func expandSpace(rate: Float){
        
    }
    
    func collapseSpace(rate: Float) {
        
    }
    
    func makeSpaceComplyTo(dimensions: Dimensions) {
        
    }
    
}

class Time: SpaceTimeInterface {
    var timeEnlapsed: Float
    var timer: Timer?
    var scale: Scale
    
    init(scale: Scale) {
        self.timeEnlapsed = 0
        self.scale = scale
    }
    
    func initOfTimeAndSpace() {
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(scale.minTimeValue), target: self, selector: #selector(increaseTimeEnlapsed(timer:)), userInfo: nil, repeats: true)

    }
    @objc func increaseTimeEnlapsed(timer: Timer) {
        
        self.timeEnlapsed = self.timeEnlapsed + 1
        print("the time is \(self.timeEnlapsed) units")
        
    }
}
