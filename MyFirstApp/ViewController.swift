//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Eric Rojas Pech on 22/09/23.
//

import UIKit




class ViewController: UIViewController {
    
    
    @IBOutlet weak var photoTypeSwitch: UISwitch!
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    @IBOutlet weak var titleLebel: UILabel!
    
    
    @IBOutlet weak var titelTextLavel: UITextField! {
        didSet{
            titelTextLavel.delegate = self
        }
    }
    @IBOutlet weak var textTypeSwitch: UISwitch!
    
    @IBOutlet weak var swtichTextCustom: UISwitch!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let  destinationViewController = segue.destination as? imageStaticViewController
        else { return segue.destination.title = "Info" }
        
        destinationViewController.showDog = photoTypeSwitch.isOn
        
        if  swtichTextCustom.isOn {
            destinationViewController.title = titelTextLavel.text
        }else {
            return
        }
    }

    @IBAction func nextButtonTapped(_ sender: UIButton){
        if sender.tag == 0 {
            performSegue(withIdentifier: "SegueFromMainToInfo", sender: nil)
        }else {
            performSegue(withIdentifier: "SegueFromMainToPhotos", sender: nil)
        }
    }
    
    @IBAction func photoTypeSwitchValueChanged(_ sender: UISwitch){
        sender.isOn ? nextButton.setTitle("Dogos", for: .normal): nextButton.setTitle("Cats", for: .normal)
    }

    @IBAction func textFieldEditingChange(_ sender: UITextField) {
        titleLebel.text = sender.text
    }
    @IBAction func titleNotSelected(_ sender: UISwitch) {
        if !sender.isOn {
            titleLebel.text = "Custom title not selected"
            titelTextLavel.text = ""
        } else {
            titleLebel.text = titelTextLavel.text
        }
    }
}


extension ViewController:UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == "" { return true }
        if string.rangeOfCharacter(from: .alphanumerics) == nil
            && string != " " {
            return false
        } else  {
            return (textField.text?.count ?? 0 ) + string.count - range.length <= 10
        }
    }
}
