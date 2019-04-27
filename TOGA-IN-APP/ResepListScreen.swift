//
//  ResepListScreen.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 27/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class ResepListScreen: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var reseps: [Resep] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        reseps = createArray()
       
    }
    
    func createArray() -> [Resep]{
        
        var tempResep: [Resep] = []
        
        let resep1 = Resep(image: #imageLiteral(resourceName: "dummyImage"), title: "Obat Batuk Alami", contributor: "Charlie Chaplin", ratingAsli: "4", ratingDari5: "/ 5", bintang: #imageLiteral(resourceName: "bintang"))
        
        tempResep.append(resep1)
        
        return tempResep
    }
    

}

extension ResepListScreen: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reseps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let resep = reseps[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResepCell") as! ResepCell
        
        cell.setResep(resep: resep)
        
        return cell
    }
}
