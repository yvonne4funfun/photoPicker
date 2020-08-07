//
//  ViewController.swift
//  demo
//
//  Created by fun on 2020/8/6.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    

    
    @IBOutlet weak var button: UIButton!
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func phototPicker(){
        let photoController = UIImagePickerController()
        photoController.delegate = self
        photoController.sourceType = .photoLibrary
        present(photoController, animated: true, completion: nil)
    }
    func camera(){
        let cameraContrller = UIImagePickerController()
        cameraContrller.delegate = self
        cameraContrller.sourceType = .camera
        present(cameraContrller, animated: true, completion: nil)
        
        
        
    }
    
    
    
    

    @IBAction func photoButton(_ sender: UIButton) {
        let controller = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let cameraAction = UIAlertAction(title: "開啟相機拍照", style: .default){
            (_)in
            self.camera()
        }
        let libraryAction = UIAlertAction(title: "開啟相簿選相片", style: .default){
            (_) in
            self.phototPicker()
        }
        let deleteAction = UIAlertAction(title: "刪除", style: .destructive){ (_)in sender.setImage(UIImage(systemName: "photo.fill"),for: .normal)
        }
        
        
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        controller.addAction(cameraAction)
        controller.addAction(libraryAction)
        controller.addAction(deleteAction)
        controller.addAction(cancelAction)

        present(controller, animated: true, completion: nil)}
    
        
        
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as? UIImage
        button.setImage(image, for: .normal)
        dismiss(animated: true, completion: nil)
    }
        
    
        
        
        
    }
    



