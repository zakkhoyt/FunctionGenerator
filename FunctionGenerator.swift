//
//  FunctionGenerator.swift
//
//  Created by Zakk Hoyt on 8/28/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import Foundation

private let RMS = Double(0.707)

func sine(phase: Double) -> Double {
    return sin(phase)
}

func square(phase: Double) -> Double {
    var amplitude = Double(0.0)
    if sin(phase) > 0 {
        amplitude = RMS
    } else {
        amplitude = -RMS
    }
    return amplitude
}

func triangle(phase: Double) -> Double {
    var amplitude = Double(0.0)
    amplitude = 2 * phase / Double(2*M_PI) // 0.0 ... 2.0
    if amplitude > 1.0 {
        amplitude = 2.0 - amplitude
    }
    amplitude = amplitude * 2.0 - 1.0 // -1.0 ... 1.0
    return amplitude
}

func sawtooth(phase: Double) -> Double {
    var amplitude = Double(0.0)
    amplitude = phase / Double(2*M_PI) // 0.0 ... 1.0
    amplitude = amplitude * 2.0 - 1.0 // -1.0 ... 1.0
    return amplitude
}

func reverseSawtooth(phase: Double) -> Double {
    var amplitude = Double(0.0)
    amplitude = (2 * M_PI - phase) / Double(2*M_PI) // 0.0 ... 1.0
    amplitude = amplitude * 2.0 - 1.0 // -1.0 ... 1.0
    return amplitude
}

func invert(amplitude: Double) -> Double {
    return amplitude * -1.0
}



