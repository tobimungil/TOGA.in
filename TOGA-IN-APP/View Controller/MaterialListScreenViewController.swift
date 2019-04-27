//
//  MaterialListScreenViewController.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 26/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class MaterialListScreen: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var materials: [Material] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        materials = createArray()
        
        
    }
    
    func createArray() -> [Material]{
        
        var tempMaterials: [Material] = []
        
        let material1 = Material(image: #imageLiteral(resourceName: "dummyImage"), title: "Alang-alang")
        let material2 = Material(image: #imageLiteral(resourceName: "dummyImage"), title: "Aloe Vera")
        let material3 = Material(image: #imageLiteral(resourceName: "dummyImage"), title: "Asparagus")
        let material4 = Material(image: #imageLiteral(resourceName: "dummyImage"), title: "Bawang Putih")
        let material5 = Material(image: #imageLiteral(resourceName: "dummyImage"), title: "Ciplukan")
        
        tempMaterials.append(material1)
        tempMaterials.append(material2)
        tempMaterials.append(material3)
        tempMaterials.append(material4)
        tempMaterials.append(material5)
        
        return tempMaterials
        
    }
}

extension MaterialListScreen: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materials.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let material = materials[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MaterialCell") as! MaterialCell
        
        cell.setMaterial(material: material)
        return cell
    }
    
}
