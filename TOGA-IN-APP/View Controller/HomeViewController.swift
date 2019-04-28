//
//  HomeViewController.swift
//  TOGA-IN-APP
//
//  Created by Ricky Effendi on 28/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var imgTanaman = ["thumbnailTanaman", "thumbnailTanaman", "thumbnailTanaman", "thumbnailTanaman"]
    
    var lblTanaman = ["Jahe", "Sirih", "Kunyit", "Lengkuas"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgTanaman.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "identTanaman", for: indexPath) as! HomeCollectionViewCell
        
        cell.imgTanaman.image = UIImage(named: imgTanaman[indexPath.row])
        cell.lblTanaman.text = lblTanaman[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let namaTanamanObat: String = lblTanaman[indexPath.row]
        
        let viewController = storyboard?.instantiateViewController(withIdentifier: "detailTanamanViewController") as! DetailTanamanViewController
        
        viewController.lblJudulTanaman = namaTanamanObat
        
        self.navigationController?.pushViewController(viewController, animated: true)
        print("Di Tekan Index yang ke \(namaTanamanObat)")
        
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
