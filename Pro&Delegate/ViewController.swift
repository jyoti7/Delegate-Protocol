//
//  ViewController.swift
//  Pro&Delegate
//
//  Created by MD ABDUR RAHMAN on 17/2/19.
//  Copyright © 2019 MD ABDUR RAHMAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DataPass {
   
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var cityLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func goto2ndVC(_ sender: Any) {
        let sceondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondUIViewController") as! SecondUIViewController
        sceondVC.delegate = self
        self.navigationController?.pushViewController(sceondVC, animated: true)
        
    }
//    func dataPassing(name: String, address: String, city: String) {
//        nameLbl.text = name
//        addressLbl.text = address
//        cityLbl.text = city
    
    func data(object: [String : String]) {
        nameLbl.text = object["name"]
                addressLbl.text = object["address"]
        cityLbl.text = object["city"]
    
    
    }
}

