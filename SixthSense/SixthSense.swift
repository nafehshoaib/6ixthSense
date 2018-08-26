//
//  SixthSense.swift
//  TinyYOLO-CoreML
//
//  Created by Nafeh Shoaib on 2018-08-26.
//  Copyright © 2018 6ixth Sense. All rights reserved.
//

import UIKit
import Piano

class SixthSense: NSObject {
    let person: [🎹.Note] = [
        .tapticEngine(.peek),
        .tapticEngine(.peek),
        .waitUntilFinished,
        .wait(20000)
    ]
    
    let car: [🎹.Note] = [
        .vibration(.alert),
        .waitUntilFinished
    ]
    
    let bird: [🎹.Note] = [
        .tapticEngine(.peek),
        .tapticEngine(.tryAgain),
        .tapticEngine(.cancelled),
        .waitUntilFinished
    ]
    
    func found(type: String) {
        switch type {
        case "person":
            🎹.play(person)
        case "car":
            🎹.play(car)
        case "bird":
            🎹.play(bird)
        default:
            🎹.play([.tapticEngine(.peek)])
        }
        🎹.play(person);
    }
}
