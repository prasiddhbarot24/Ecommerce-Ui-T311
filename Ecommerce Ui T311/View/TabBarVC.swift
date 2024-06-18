//
//  TabBarVC.swift
//  Ecommerce Ui T311
//
//  Created by webcodegenie on 14/06/24.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupMiddleButton()
        // Do any additional setup after loading the view.
    }
    
    let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
    //custom button added
    func setupMiddleButton() {
            
            var menuButtonFrame = menuButton.frame
            menuButtonFrame.origin.y = -20
            menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
            menuButton.center = view.center
            menuButton.autoresizingMask = [.flexibleLeftMargin,.flexibleRightMargin]
            menuButton.frame = menuButtonFrame

            menuButton.backgroundColor = #colorLiteral(red: 0.4745, green: 0.1843, blue: 0.9765, alpha: 1)
            menuButton.layer.cornerRadius = 10
            tabBar.addSubview(menuButton)
            

            menuButton.setImage(UIImage(named: "plus"), for: .normal)
            menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)

            view.layoutIfNeeded()
        }
    
    // for custom button
    @objc func menuButtonAction(sender: UIButton) {
        print("img gallery")

        selectedIndex = 2
        }

}
