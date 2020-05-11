//
//  AddViewController.swift
//  WordList
//
//  Created by 諸星水晶 on 2020/05/11.
//  Copyright © 2020 諸星水晶. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet var englishTextFiled: UITextField!
    @IBOutlet var japaneseTextFiled: UITextField!
    
    var wordArray: [Dictionary<String,String>] = []
    
    let saveData = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if saveData.array(forKey: "WORD") != nil{
            wordArray = saveData.array(forKey: "WORD") as! [Dictionary<String,String>]
        }
    }
    
    @IBAction func saveWord(){
        let wordDictionary = ["english":englishTextFiled.text!,"japanese":japaneseTextFiled.text!]
        
        wordArray.append(wordDictionary)
        saveData.set(wordArray,forKey: "WORD")
        
        let alert = UIAlertController(
            title: "保存完了",
            message: "単語の登録が完了しました",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        ))
        present(alert,animated: true,completion: nil)
        englishTextFiled.text = ""
        japaneseTextFiled.text = ""
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
