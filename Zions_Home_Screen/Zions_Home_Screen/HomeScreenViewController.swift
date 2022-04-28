//
//  ViewController.swift
//  Zions_Home_Screen
//
//  Created by Joshua Bunting on 4/20/22.
//

import UIKit

class HomeScreenViewController: UIViewController {

    @IBOutlet weak var whatToSee: SquareView!
    @IBOutlet weak var whatToDo: SquareView!
    @IBOutlet weak var regionUpdates: SquareView!
    @IBOutlet weak var greaterZionRegion: LongRectangle!
    @IBOutlet weak var parking: smallRecView!
    @IBOutlet weak var entrances: smallRecView!
    @IBOutlet weak var trails: smallRecView!
    @IBOutlet weak var shuttle: smallRecView!
    @IBOutlet weak var camping: smallRecView!
    @IBOutlet weak var weather: smallRecView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        whatToSeeDesign()
        whatToDoDesign()
        regionUpdatesDesign()
        greaterZionRegionDesign()
        parkingDesign()
        entrancesDesign()
        trailsDesign()
        shuttleDesign()
        campingDesign()
        weatherDesign()
    }
    
    func whatToSeeDesign() {
        whatToSee.setImage(newImage: "topSquare")
        whatToSee.setLabel(newLabel: "WHAT TO SEE")
    }
    
    func whatToDoDesign() {
        whatToDo.setImage(newImage: "middleSquare")
        whatToDo.setLabel(newLabel: "WHAT TO DO")
    }
    
    func regionUpdatesDesign() {
        regionUpdates.setImage(newImage: "bottomSquare")
        regionUpdates.setLabel(newLabel: "REGION UPDATES")
    }
    func greaterZionRegionDesign() {
        greaterZionRegion.setImage(newImage: "longRectangle")
        greaterZionRegion.setLabel(newLabel: "GREATER ZION REGION")
    }
    func parkingDesign() {
        parking.setImage(newImage: "Parking")
        parking.setlabel(newLabel: "PARKING")
        parking.setLiveImage(newImage: "liveImage")
    }
    func entrancesDesign() {
        entrances.setImage(newImage: "entrances")
        entrances.setlabel(newLabel: "ENTRANCES")
        entrances.setLiveImage(newImage: "liveImage")
    }
    func trailsDesign() {
        trails.setImage(newImage: "trails")
        trails.setlabel(newLabel: "TRAILS")
        trails.setLiveImage(newImage: "liveImage")
    }
    func shuttleDesign() {
        shuttle.setImage(newImage: "shuttle2")
        shuttle.setlabel(newLabel: "SHUTTLE")
        shuttle.setLiveImage(newImage: "liveImage")
    }
    func campingDesign() {
        camping.setImage(newImage: "camping")
        camping.setlabel(newLabel: "CAMPING")
        camping.setLiveImage(newImage: "liveImage")
    }
    func weatherDesign() {
        weather.setImage(newImage: "weather")
        weather.setlabel(newLabel: "WEATHER")
        weather.setLiveImage(newImage: "liveImage")
    }
}

