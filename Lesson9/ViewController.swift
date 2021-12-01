//
//  ViewController.swift
//  Lesson9
//
//  Created by Владислав Пуцыкович on 27.11.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let patient1 = Patient("Vlad", 36.7, false)
        let patient2 = Patient("Sasha", 38.0, true)
        
        let doctor = Doctor()
        //let doctorFriend = DoctorFriend()
        
        patient1.delegate = doctor
        patient2.delegate = doctor
        
        
        let patients: [Patient] = [patient1, patient2]
        
        patients.forEach { patient in
            print("\(patient.name) are you ok? \(patient.howAreYou() ? "Yes" : "No")")
            patient.feelsWorth()
            patient.tellWhatHurts(PartOfBody.head)
            doctor.addToList(patient, PartOfBody.head)
        }
        
        doctor.raport()
        // Сделать изменение врача
    }
}

