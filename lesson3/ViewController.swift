//
//  ViewController.swift
//  lesson3
//
//  Created by macbook on 15.09.2020.
//  Copyright © 2020 Iskander Nizamov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        struct SportCar {
            let mark: String
            let year: Int
            let trunkVolume: Int
            var trunkVolumeFill: Int
            var engineState: EngineState
            var windowState: WindowState
            
            mutating func engineCheck (check: EngineState) {
                switch check {
                case .started:
                    engineState = .started
                    print("engine started")
                case .stoped:
                    engineState = .stoped
                    print("engine stoped")
                }
            }
            
            mutating func windowCheck (check: WindowState) {
                switch check {
                case .open:
                    windowState = .open
                    print("window opened")
                case .close:
                    windowState = .close
                    print("window closed")
                }
            }
            
            mutating func volumeCheck (check: TrunkVolumeState, volume: Int) {
                switch check {
                case .fill:
                    if trunkVolumeFill - volume > 0
                    {
                        print("trunk already filled")
                    } else {
                        trunkVolumeFill += volume
                    }
                case .unfill:
                    if volume - trunkVolumeFill > 0
                    {
                        print("trunk already unfilled")
                    } else {
                        trunkVolumeFill -= volume
                    }
                }
            }
            
            init(mark: String, year: Int, trunkVolume: Int) {
                self.mark = mark
                self.year = year
                self.trunkVolume = trunkVolume
                self.trunkVolumeFill = 0
                self.engineState = .stoped
                self.windowState = .close
            }
        }
        
        struct TruckCar {
            let mark: String
            let year: Int
            let trunkVolume: Int
            var trunkVolumeFill: Int
            var engineState: EngineState
            var windowState: WindowState
            
            mutating func engineCheck (check: EngineState) {
                switch check {
                case .started:
                    engineState = .started
                    print("engine started")
                case .stoped:
                    engineState = .stoped
                    print("engine stoped")
                }
            }
            
            mutating func windowCheck (check: WindowState) {
                switch check {
                case .open:
                    windowState = .open
                    print("window opened")
                case .close:
                    windowState = .close
                    print("window closed")
                }
            }
            
            mutating func volumeCheck (check: TrunkVolumeState, volume: Int) {
                switch check {
                case .fill:
                    if trunkVolumeFill - volume > 0
                    {
                        print("trunk already filled")
                    } else {
                        trunkVolumeFill += volume
                    }
                case .unfill:
                    if volume - trunkVolumeFill > 0
                    {
                        print("trunk already unfilled")
                    } else {
                        trunkVolumeFill -= volume
                    }
                }
            }
            
            init(mark: String, year: Int, trunkVolume: Int) {
                self.mark = mark
                self.year = year
                self.trunkVolume = trunkVolume
                self.trunkVolumeFill = 0
                self.engineState = .stoped
                self.windowState = .close
            }
        }
        
        enum WindowState {
            case open, close
        }
        
        enum EngineState {
            case started, stoped
        }
        
        enum TrunkVolumeState {
            case fill, unfill
        }
        
        var ferrari = SportCar(mark: "Ferrari", year: 2010, trunkVolume: 170)
        var kamaz = TruckCar(mark: "Kamaz", year: 1999, trunkVolume: 22000)
        
        ferrari.engineCheck(check: .started)
        ferrari.windowCheck(check: .open)
        
        kamaz.volumeCheck(check: .fill, volume: 15000)
    }
    
    
}
