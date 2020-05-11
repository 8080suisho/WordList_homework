//
//  ViewController.swift
//  WordList
//
//  Created by 諸星水晶 on 2020/05/10.
//  Copyright © 2020 諸星水晶. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(sender: UIStoryboardSegue){
        
    }
    
    @IBAction func startButtonTapped(){
        let saveData = UserDefaults.standard
        if saveData.array(forKey: "WORD") != nil{
            if saveData.array(forKey: "WORD")!.count > 0{
                performSegue(withIdentifier: "toQuestionView", sender: nil)
            }
        }else{
            let alert = UIAlertController(
                title: "単語",
                message: "まずは「単語登録」をタップして単語登録してください。",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(
                title: "OK",
                style: .default,
                handler: nil
            ))
            
            self.present(alert,animated: true,completion:nil)
        }
    }


}

