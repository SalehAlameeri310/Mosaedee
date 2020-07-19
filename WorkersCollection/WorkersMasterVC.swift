//
//  WorkersMasterVC.swift
//  Mosaedee
//
//  Created by Saleh Alameeri on 7/18/20.
//  Copyright © 2020 Saleh Alameeri. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cell2"

class WorkersMasterVC: UICollectionViewController {
    var worker2: Catagory!
    var categoryWorkers : [Worker] = []
    override func viewDidLoad() {
        
        super.viewDidLoad()
        categoryWorkers = catagoryWorkers(worker: workers, catagory: worker2)
        print("categoryWorkers", categoryWorkers)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation


    }
    */

    // MARK: UICollectionViewDataSource

 


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return categoryWorkers.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
    
        // Configure the cell
        var worker = categoryWorkers[indexPath.row]
        cell.nameLabel.text = worker.workerFirstName
        cell.workerImage.image = UIImage(named: "\(worker.workerFirstName)")
        
    
        return cell
    }

    func catagoryWorkers (worker:[Worker], catagory: Catagory) -> [Worker] {
        var workers:  [Worker] = []
        for i in 0..<worker.count{
            if worker[i].typeOfWorker == catagory.catagoryName {
                workers.append(worker[i])
                
            }
            
        }
        return workers
    }

    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let worker = workers[indexPath.row]
        performSegue(withIdentifier: "workerDetailSegue", sender: indexPath.row)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! WorkerDetailVC
        let index = sender as! Int
        let worker = categoryWorkers[index]
        print("worker",worker)
        vc.worker = worker
    }


}
