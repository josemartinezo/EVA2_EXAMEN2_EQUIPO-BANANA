//
//  ViewControlleropinion.swift
//  EXAMEN_PARCIAL2F
//
//  Created by TEMPORAL2 on 05/04/17.
//  Copyright © 2017 EQUIPOBANANA. All rights reserved.
//

import UIKit

protocol DataEnteredDelegate2: class {
    func userDidEnterInformation2(op: String)
}

class ViewControlleropinion: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource ,DataEnteredDelegate2{
    @IBOutlet weak var lblNomR: UILabel!
    @IBOutlet weak var lblDescR: UILabel!
    @IBOutlet weak var lblDireR: UILabel!
    
    
    @IBAction func btnGuardar(sender: AnyObject) {
        delegate2?.userDidEnterInformation2(opinion)
        print(opinion + " algo")
        performSegueWithIdentifier("opinion", sender: self)

    }
    
     weak var delegate2: DataEnteredDelegate2? = nil
    
    func userDidEnterInformation2(op: String) {
        
    }
    
    var nom = ""
    var des = ""
    var dir = ""
    //var sMensa: String
    var opc = ""
    
    var opinion = "1"
    
    var array = ["1 - Malo", "2 - Bueno", "3 - Excelente"]

    


    override func viewDidLoad() {
        super.viewDidLoad()
        lblNomR.text = nom
        lblDescR.text = des
        lblDireR.text = dir
        opinion = opc

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return array[row] //regresa la fila que debe refrescar
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1 //Numero de arreglos u origenes de datos
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {// NOS MOSTRARA EL DATO QUE SE HA SELECCIONADO
        //
        var sMensa: String
        if component == 0{
            sMensa = array[row]
        }else{
            sMensa = array[row]
        }
        if component == 0{
            opinion = array[row]
        }else{
            opinion = array[row]
        }
         // opinion = array[row]
        let acMostrar = UIAlertController(title: "RANKING", message: sMensa, preferredStyle: .Alert)
        let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        acMostrar.addAction(acBoton)
        presentViewController(acMostrar, animated: true, completion: nil)
        
        performSegueWithIdentifier("opinion", sender: self)
      
        
        
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return array.count //Cantidad de datos del componente actual
        
    }

    

}
