//
//  Patient.swift
//  Lesson9
//
//  Created by Владислав Пуцыкович on 27.11.21.
//

import Foundation

protocol PatientDelegate {
    func hasQuestion (_ question: String, _ patient: Patient)
    func feelsBad (_ patient: Patient)
    func whatHurts (_ patient: Patient, _ partOfBody: PartOfBody)
}

enum PartOfBody{
    case head
    case body
    case leg
    case hand
}

class Patient {
    var name: String
    var temperature: Double
    var appetite: Bool
    var delegate: PatientDelegate?
    
    init (_ name: String, _ temperature: Double, _ appetite: Bool) {
        self.name = name
        self.temperature = temperature
        self.appetite = appetite
    }
    
    func howAreYou () -> Bool {
        let fill = Bool.random()
        
        if !fill {
            delegate?.feelsBad(self)
        }
        return fill
    }
    func feelsWorth () {
        self.goToDoctor()
    }
    func takePill () {
        print("Take patient pill")
    }
    func makeShot () {
        print("Make patient shot")
    }
    func goToDoctor () {
        print("Patient \(self.name) go to doctor")
    }
    func drinkWater() {
        print("Patient only drink water")
    }
    func tellWhatHurts(_ partOfBody: PartOfBody) {
        print("Patient say hurts \(partOfBody)")
        delegate?.whatHurts(self, partOfBody)
    }
}
