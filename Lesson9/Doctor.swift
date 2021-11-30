//
//  Doctor.swift
//  Lesson9
//
//  Created by Владислав Пуцыкович on 27.11.21.
//

import Foundation

class Doctor: PatientDelegate {
    var listPatient: [(Patient, PartOfBody)]? = nil
    
    func hasQuestion(_ question: String, _ patient: Patient) {
        print("Patient \(patient.name) has question: \(question)")
    }
    func feelsBad(_ patient: Patient) {
        if patient.temperature >= 37.0 && patient.temperature <= 39.0 {
            patient.takePill()
        } else if patient.temperature > 39.0 {
            patient.makeShot()
        } else {
            print("Passient \(patient.name) should rest")
        }
    }
    func whatHurts(_ patient: Patient, _ partOfBody: PartOfBody) {
        if partOfBody == PartOfBody.head {
            print("Drink pill to head")
        } else if partOfBody == PartOfBody.body {
            print("Drink pill to body")
        } else if partOfBody == PartOfBody.leg {
            print("Drink pill to leg")
        } else if partOfBody == PartOfBody.hand {
            print("Drink pill to hand")
        }
    }
    func raport() {
        self.listPatient?.forEach { (patient, partOfBody) in
            print("\(patient.name) comes, and  tell what hurts \(partOfBody)")
        }
    }
    func addToList(_ patient: Patient, _ partOfBody: PartOfBody) {
        self.listPatient?.append((patient, partOfBody))
    }
    
}
