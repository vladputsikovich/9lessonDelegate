//
//  Doctor.swift
//  Lesson9
//
//  Created by Владислав Пуцыкович on 27.11.21.
//

import Foundation

class Doctor: PatientDelegate {
    func hasQuestion(_ question: String) {
        print(question)
    }
    func feelsBad(_ patient: Patient) {
        
    }
}
