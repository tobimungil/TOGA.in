//
//  ResepListScreen.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 27/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class ResepListScreen: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var reseps: [Resep] = []
    var searchResep: [Resep] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        reseps = createArray()
       
    }
    
    func createArray() -> [Resep]{
        
        let resep1 = Resep(image: #imageLiteral(resourceName: "dummyImage"), title: "Obat Batuk Alami", contributor: "Charlie Chaplin", ratingAsli: "4", ratingDari5: "/ 5", bintang: #imageLiteral(resourceName: "bintang"))
        
        reseps.append(resep1)
        
        searchResep = reseps
        
        return searchResep
    }
    

}

extension ResepListScreen: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResep.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let resep = searchResep[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResepCell") as! ResepCell
        
        cell.setResep(resep: resep)
        
        return cell
    }
}

extension ResepListScreen: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else {
            searchResep = reseps
            tableView.reloadData()
            return
        }
        
        searchResep = reseps.filter({ Resep -> Bool in
            
            Resep.title.contains(searchText)
        })
        tableView.reloadData()
    }
}
