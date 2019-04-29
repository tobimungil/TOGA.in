//
//  BeritaListScreen.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 27/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class BeritaListScreen: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    var sections: [String] = ["Berita Populer","Berita Terbaru"]
//    var beritas: [Berita] = []
    var jdlBerita = ["Berita A", "Berita B", "Berita C"]
    var descBerita = ["DBeritaA","DBeritaB","DBeritaC"]
    var thumbBerita = ["dummyImage","dummyImage","dummyImage"]
    
    let cellSpacingHeight: CGFloat = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var nav = self.navigationController?.navigationBar
        nav?.tintColor = UIColor.white
        nav?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.shadowImage = UIImage()
        self.title = "Berita"
        
        
//        beritas = createArray()

    }
    
    func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        context.previouslyFocusedView?.backgroundColor = UIColor.clear
        context.nextFocusedView?.backgroundColor = UIColor.clear
    }
    
    // Set the spacing between sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }

    
//    func createArray() -> [Berita]{
//
//        var tempBerita: [Berita] = []
//
//        let berita1 = Berita(image: #imageLiteral(resourceName: "dummyImage"), title: "BPOM melakukan razia terhadap beberapa Rumah Sakit di Jakarta - Tribunnews")
//        let berita2 = Berita(image: #imageLiteral(resourceName: "dummyImage"), title: "Tanaman ini dapat menekan keinginan anda untuk merokok - KASKUS.id")
//        let berita3 = Berita(image: #imageLiteral(resourceName: "dummyImage"), title: "Tanaman Obat Keluarga dapat membantu persalinan - Kompas.com")
//        let berita4 = Berita(image: #imageLiteral(resourceName: "dummyImage"), title: "BPOM melakukan razia terhadap beberapa Rumah Sakit di Jakarta - Tribunnews")
//        let berita5 = Berita(image: #imageLiteral(resourceName: "dummyImage"), title: "BPOM melakukan razia terhadap beberapa Rumah Sakit di Jakarta - Tribunnews")
//
//        tempBerita.append(berita1)
//        tempBerita.append(berita2)
//        tempBerita.append(berita3)
//        tempBerita.append(berita4)
//        tempBerita.append(berita5)
//
//        return tempBerita
//    }
    
}

extension BeritaListScreen: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sections[section]
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jdlBerita.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let jdlBeritaa = jdlBerita[indexPath.row]
        let thumbBeritaa = thumbBerita[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeritaCell") as! BeritaCell
        
        cell.beritaJudul.text = "\(jdlBeritaa)"
        cell.beritaGambar.image = UIImage(named: "\(thumbBeritaa)")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let judulBerita = jdlBerita[indexPath.row]
        let thumbBeritaa = thumbBerita[indexPath.row]
        
        let viewController = storyboard?.instantiateViewController(withIdentifier: "DetailBeritaViewController") as! DetailBeritaViewController
        
        viewController.tmpJudulBerita = judulBerita
        viewController.tmpThumbnailBerita = thumbBeritaa
        
        
        self.navigationController?.pushViewController(viewController, animated: true)
        print("Di Tekan Index yang ke \(judulBerita)")
        
    }
}
