//
//  WorkersModel.swift
//  Mosaedee
//
//  Created by Saleh Alameeri on 7/17/20.
//  Copyright © 2020 Saleh Alameeri. All rights reserved.
//

import Foundation
import UIKit

struct Catagory{
    let catagoryName: String
    func catagoryImage () -> UIImage {
    
        return UIImage(named: catagoryName)!
    }
    
    
}

struct Worker{
    let workerFirstName: String
    let workerLastName: String
    let workerExpr: String
    let workerAge: String
    let workerFee: String
    let workerNationality: String
    let typeOfWorker: String
}
var workers: [Worker] = [
    Worker(workerFirstName: "Mohammed", workerLastName: "Khan", workerExpr: "15 years", workerAge: "37", workerFee: "7 kd/day", workerNationality: "Indian", typeOfWorker: "Gardener" ),
   
    Worker(workerFirstName: "Sharu", workerLastName: "Khanii", workerExpr: "12 years", workerAge: "49", workerFee: "5 kd/Day", workerNationality: "Indian", typeOfWorker: "Driver"),
  
    Worker(workerFirstName: "Fayrouz", workerLastName: "Patel", workerExpr: "10 years", workerAge: "29", workerFee: "4 kd/Day", workerNationality: "Indian", typeOfWorker: "Driver"),
   
    Worker(workerFirstName: "Khaled", workerLastName: "Khatri", workerExpr: "15 years", workerAge: "97", workerFee: "7 kd/day", workerNationality: "Indian", typeOfWorker: "Driver"),
   
    Worker(workerFirstName: "Sharu", workerLastName: "Khanii", workerExpr: "12 years", workerAge: "22", workerFee: "5 kd/Day", workerNationality: "Pakistani", typeOfWorker: "Gardener"),
 
    Worker(workerFirstName: "Fayrouz", workerLastName: "Patel", workerExpr: "10 years", workerAge: "49", workerFee: "4 kd/Day", workerNationality: "Indian", typeOfWorker: "Gardener"),
]






var caagories: [Catagory] = [

Catagory(catagoryName: "Driver"),
Catagory(catagoryName: "Maid"),
Catagory(catagoryName: "Cook"),
Catagory(catagoryName: "Gardener")
]

