//
//  View02ViewController.swift
//  hello
//
//  Created by 林拓実 on 2020/05/02.
//  Copyright © 2020 林拓実. All rights reserved.
//

import UIKit

class View02ViewController: UIViewController {

    @IBOutlet weak var lbGet: UILabel!
    var txtGet = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbGet.text = txtGet
    }
    
}
