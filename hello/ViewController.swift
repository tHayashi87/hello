//
//  ViewController.swift
//  hello
//
//  Created by 林拓実 on 2020/05/01.
//  Copyright © 2020 林拓実. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var txtName = ""

    
    @IBAction func btPush(_ sender: Any) {
    
        txtName = tfName.text!
        if txtName == "" {
            let alt = UIAlertController(title: "入力エラー",
                                        message: "文字を入力してください",
                                        preferredStyle: .alert)
            alt.addAction(UIAlertAction(title: "OK",
                                        style: .default,
                                        handler: nil))
            present(alt, animated: true)
            return
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let view02 = segue.destination as! View02ViewController
        view02.txtGet = txtName
    }
    
    @IBAction func tfName(_ sender: Any) {
    }
    
    @IBAction func unwindToView02(_ unwindSegue: UIStoryboardSegue) {
        
        tfName.text = nil
    }
}

