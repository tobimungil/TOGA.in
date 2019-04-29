//
//  DetailBeritaViewController.swift
//  TOGA-IN-APP
//
//  Created by Pramahadi Tama Putra on 28/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class DetailBeritaViewController: UIViewController {
    @IBOutlet weak var judulBerita: UILabel!
    @IBOutlet weak var thumbnailBerita: UIImageView!
    
    var tmpJudulBerita = ""
    var tmpThumbnailBerita = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        judulBerita.text = tmpJudulBerita
        thumbnailBerita.image = UIImage(named: "\(tmpThumbnailBerita)")

        // Do any additional setup after loading the view.
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
