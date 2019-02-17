//
//  SecondUIViewController.swift
//  Pro&Delegate
//
//  Created by MD ABDUR RAHMAN on 17/2/19.
//  Copyright © 2019 MD ABDUR RAHMAN. All rights reserved.
//

import UIKit
protocol DataPass{
    func dataPassing(name:String, address:String, city:String)
}
class SecondUIViewController: UIViewController {
    @IBOutlet weak var nameTxtFld: UITextField!
    @IBOutlet weak var addressTxtFld: UITextField!
    @IBOutlet weak var cityTxtFld: UITextField!
    var delegate:DataPass!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func saveClicked(_ sender: Any) {
        if nameTxtFld.text == "" {
            Alert(Title:"Name", Msg: "Enter Name", delegate: self)
        }else if addressTxtFld.text == "" {
            Alert(Title:"Address", Msg: "Enter Address", delegate: self)
        }else if cityTxtFld.text == "" {
            Alert(Title:"City", Msg: "Enter City", delegate: self)
        }else{
            delegate.dataPassing(name: nameTxtFld.text!, address: addressTxtFld.text!, city: cityTxtFld.text!)
            let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.navigationController?.popToRootViewController(animated: true)
        }
       
        
        
    }
    func Alert(Title:String, Msg:String, delegate:AnyObject){
        let alert = UIAlertView()
        alert.title = Title
        alert.message = Msg
        alert.addButton(withTitle: "OK")
        alert.delegate = delegate
        alert.show()
    }
}
