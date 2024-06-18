//
//  AddVC.swift
//  Ecommerce Ui T311
//
//  Created by webcodegenie on 17/06/24.
//

import UIKit

class AddVC: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var imgAdd: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onClickSelectImg(_ sender: Any) {
        handlepickPicture()
    }
    
    func handlepickPicture() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                    imagePicker.delegate = self
                    imagePicker.sourceType = .photoLibrary
                    imagePicker.allowsEditing = false
                    present(imagePicker, animated: true, completion: nil)
                }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey(rawValue: UIImagePickerController.InfoKey.originalImage.rawValue)] as? UIImage {
            imgAdd.contentMode = .scaleAspectFit
            imgAdd.image = pickedImage
            
            dismiss(animated: true, completion:nil)
        }
    }
}
