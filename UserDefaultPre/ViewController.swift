//
//  ViewController.swift
//  UserDefaultPre
//
//  Created by Vattanac on 12/19/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var person:Person?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.set("kok", forKey: "name")
        UserDefaults.standard.set("001", forKey: "id")
        let name = UserDefaults.standard.string(forKey: "name")
        let id = UserDefaults.standard.integer(forKey: "id")
        print("Name:\(name!) and Id:\(id)")
        
    }
}

class Person{
    var name:String?
    var id:Int?
    
    init(_ id:Int? ,_ name: String?){
        self.id = id
        self.name = name
    }
    
}

