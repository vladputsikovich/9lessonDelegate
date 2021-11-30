//
//  DoctorFriend.swift
//  Lesson9
//
//  Created by Владислав Пуцыкович on 28.11.21.
//
import Foundation

class DoctorFriend: PatientDelegate {
    func hasQuestion(_ question: String, _ patient: Patient) {
        print("Patient \(patient.name) has question: \(question)")
    }
    func feelsBad(_ patient: Patient) {
        if patient.appetite {
            patient.drinkWater()
        } else {
            print("Passient \(patient.name) should rest")
        }
    }
    func whatHurts(_ patient: Patient, _ partOfBody: PartOfBody) {
        print("Its your trouble")
    }
}
