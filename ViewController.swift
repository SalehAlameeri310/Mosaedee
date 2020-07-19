//
//  ViewController.swift
//  Mosaedee
//
//  Created by Saleh Alameeri on 7/18/20.
//  Copyright © 2020 Saleh Alameeri. All rights reserved.
//

import UIKit
 var workerCart: [Worker] = []
class WorkerDetailVC: UIViewController { 
    var worker: Worker!
    @IBOutlet weak var workerImage2: UIImageView!
    @IBOutlet weak var workerNameLabel: UILabel!
    @IBOutlet weak var workerNationalityLabel: UILabel!
    @IBOutlet weak var workerAgeLabel: UILabel!
    @IBOutlet weak var workerExperienceLabel: UILabel!
    @IBOutlet weak var workerFeeLabel: UILabel!
    
    override func viewDidLoad() {
        workerAgeLabel.text = worker.workerAge
        workerNameLabel.text = worker.workerFirstName 
        workerNationalityLabel.text = worker.workerNationality
        workerExperienceLabel.text = worker.workerExpr
        workerNationalityLabel.text = worker.workerNationality
        workerFeeLabel.text = worker.workerFee
        
      
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func hireBtn(_ sender: Any) {
        workerCart.append(worker)
        print("added")
        performSegue(withIdentifier: "added", sender: Cart.self)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
