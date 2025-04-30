//
//  ViewController.swift
//  CodePath_iOS_Development_Prework
//
//  Created by Jean-Luc Antoine on 4/29/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Setting the image initially
        changeImageView.image = UIImage(named: "Embedded_Software_Developper_1")
    }

    // @IBAaction for UIButton changing color
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        
        // Changing text color
        changeTextColor_1.textColor = changeTextColor()
        changeTextColor_2.textColor = changeTextColor()
        changeTextColor_3.textColor = changeTextColor()
        
        // Toggling the image according to the flag
        if image1Visibility {
            changeImageView.image = UIImage(named: "Embedded_Software_Developper_2")
        } else {
            changeImageView.image = UIImage(named: "Embedded_Software_Developper_1")
        }
        
        // Toggling the flag
        image1Visibility.toggle()
        
        
    }
    
    // Changing background color function
    func changeColor() -> UIColor{
        
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    // Changing text color function
    func changeTextColor() -> UIColor{
        
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        
        
    }
   
    // UILabel
    @IBOutlet weak var changeTextColor_1: UILabel!
    @IBOutlet weak var changeTextColor_2: UILabel!
    @IBOutlet weak var changeTextColor_3: UILabel!
    
    // ImageView
    @IBOutlet weak var changeImageView: UIImageView!
    
    // A flag tracking the current image
    var image1Visibility = true
    
    
    
    
}

