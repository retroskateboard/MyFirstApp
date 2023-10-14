//
//  imageStaticViewController.swift
//  MyFirstApp
//
//  Created by Diplomado on 29/09/23.
//

import UIKit

class imageStaticViewController: UIViewController {
    
    var showDog = false

    @IBOutlet weak var firstCaptionImage: CaptionImage!
    @IBOutlet weak var secondCaptionImage: CaptionImage!
    @IBOutlet weak var thirdcaptionImage: CaptionImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if showDog {
            firstCaptionImage.imageView.image = UIImage(named: "shiba-1")
            firstCaptionImage.captionLabel.text = "Dogo 1"
            secondCaptionImage.imageView.image = UIImage(named: "shiba-2")
            
            thirdcaptionImage.imageView.image = UIImage(named: "shiba-3")
        } else {
            firstCaptionImage.imageView.image = UIImage(named: "images-2")
            
            secondCaptionImage.imageView.image = UIImage(named: "images-3")
            
            thirdcaptionImage.imageView.image = UIImage(named: "images-4")
        }
        // Do any additional setup after loading the view.
    }
    


}
