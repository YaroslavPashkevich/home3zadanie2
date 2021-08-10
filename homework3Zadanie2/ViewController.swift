//
//  ViewController.swift
//  homework3Zadanie2
//
//  Created by  Yaroslav on 10.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
  var knopka: UIButton = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        knopka = UIButton(frame: CGRect(x: Int.random(in: 0...300), y: Int.random(in: 0...770), width: 70, height: 70))
        
 
        
       
                            
        
                            
        knopka.backgroundColor = .black
        //        добавляет нашу созданную вью в ту вью в которую мы хотим ее добавить, в данном случае во View
        
        
        knopka.layer.cornerRadius = 70/2
        
        knopka.addTarget(self, action: #selector(selectorFunc) , for: .touchUpInside)
        knopka.tag = 1
               
        view.addSubview(knopka)
        
        
}

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
     
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { knopka.addTarget(self, action: #selector(selectorFunc) , for: .touchUpInside)
        knopka.tag = 1

        view.addSubview(knopka)
    
    
}
    @IBAction func selectorFunc(sender:UIButton){
        
        knopka.frame = CGRect(x: Int.random(in: 0...300), y: Int.random(in: 0...770), width: 70, height: 70)
    }
}


