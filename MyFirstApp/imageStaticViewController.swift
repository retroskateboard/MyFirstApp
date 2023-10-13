//
//  imageStaticViewController.swift
//  MyFirstApp
//
//  Created by Diplomado on 29/09/23.
//

import UIKit

class imageStaticViewController: UIViewController {
    
    var showDog = false

    @IBOutlet weak var firstCaptionedImage: CaptionImage!
    @IBOutlet weak var secondCaptionedImage: CaptionImage!
    @IBOutlet weak var thirdCaptionedImage: CaptionImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if showDog {
            firstCaptionedImage.imageView.image = UIImage(named: "shiba-1")
            
            secondCaptionedImage.imageView.image = UIImage(named: "shiba-2")
            
            thirdCaptionedImage.imageView.image = UIImage(named: "shiba-3")
        } else {
            firstCaptionedImage.imageView.image = UIImage(named: "images-2")
            
            secondCaptionedImage.imageView.image = UIImage(named: "images-3")
            
            thirdCaptionedImage.imageView.image = UIImage(named: "images-4")
        }
        // Do any additional setup after loading the view.
    }
    


}
