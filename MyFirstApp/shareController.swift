//
//  shareController.swift
//  MyFirstApp
//
//  Created by Diplomado on 29/09/23.
//

import UIKit

class shareController: UIViewController {

    
    @IBOutlet weak var textArea: UITextView! {
        didSet {
            textArea.delegate = self
        }
    }
    @IBOutlet weak var ShareButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func shareAction(_ sender: UIButton) {
        guard let text = textArea.text else {
            return
        }
        print(text)
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
extension shareController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        return(textView.text?.count ?? 0) + text.count - range.length <= 10
    }
}
