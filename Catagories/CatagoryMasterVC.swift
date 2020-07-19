//
//  CatagoryMasterVC.swift
//  Mosaedee
//
//  Created by Saleh Alameeri on 7/17/20.
//  Copyright © 2020 Saleh Alameeri. All rights reserved.
//

import UIKit


class CatagoryMasterVC: UITableViewController {

    override func viewDidLoad() {
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none

        super.viewDidLoad()
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]

    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return caagories.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CatagoryCell
 
        let catagory = caagories[indexPath.row]
        cell.catagroyImage.image = catagory.catagoryImage()
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "collectionSegue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! WorkersMasterVC
        let index = sender as!  Int
        vc.worker2 = caagories[index]
 
    }
    

   
    

}
