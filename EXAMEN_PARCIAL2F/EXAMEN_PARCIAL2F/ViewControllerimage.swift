//
//  ViewControllerimage.swift
//  EXAMEN_PARCIAL2F
//
//  Created by TEMPORAL2 on 05/04/17.
//  Copyright © 2017 EQUIPOBANANA. All rights reserved.
//

import UIKit

class ViewControllerimage: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    
    
    var newimages = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]
    
    var images: [UIImage]!
    
    var newimg = "1"


    override func viewDidLoad() {
        super.viewDidLoad()
        
        images = [UIImage(named:"barrafina")!,UIImage(named:"bourkestreetbakery")!,UIImage(named:"cafedeadend")!,UIImage(named:"cafeloisl")!,UIImage(named:"cafelore")!,UIImage(named:"confessional")!,UIImage(named:"donostia")!,UIImage(named:"fiveleaves")!,UIImage(named:"forkeerestaurant")!,UIImage(named:"grahamavenuemeats")!,UIImage(named:"haighschocolate")!,UIImage(named:"homei")!,UIImage(named:"palominoespresso")!,UIImage(named:"petiteoyster")!,UIImage(named:"posatelier")!,UIImage(named:"royaloak")!,UIImage(named:"teakha")!,UIImage(named:"thaicafe")!,UIImage(named:"traif")!]
        
        
    

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return images.count
    }
    
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        newimg = newimages[row]
        performSegueWithIdentifier("cambiar", sender: self)
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let imgg = images[row]
        let imgView = UIImageView(image: imgg)
        return imgView
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 250 //tamaño de la imagen
    }

}
