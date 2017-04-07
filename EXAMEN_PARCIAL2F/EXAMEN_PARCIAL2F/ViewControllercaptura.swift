//
//  ViewControllercaptura.swift
//  EXAMEN_PARCIAL2F
//
//  Created by TEMPORAL2 on 05/04/17.
//  Copyright © 2017 EQUIPOBANANA. All rights reserved.
//

import UIKit

protocol DataEnteredDelegate: class {
    func userDidEnterInformation(nombre: String, descripcion: String, dire: String, img: String)
}

class ViewControllercaptura: UIViewController ,DataEnteredDelegate {

    
   
    @IBOutlet weak var myImg: UIImageView!
    @IBOutlet weak var nomF: UITextField!
    @IBOutlet weak var descF: UITextField!
    @IBOutlet weak var dirF: UITextField!
    
    var fNom = ""
    var fDesc = ""
    var fDir = ""
    var imgg = ""
    weak var delegate: DataEnteredDelegate? = nil
    
    func userDidEnterInformation(nombre: String, descripcion: String, dire: String, img: String) {
        
    }

    @IBAction func captura(sender: AnyObject) {
        delegate?.userDidEnterInformation(nomF.text!, descripcion: descF.text!, dire: dirF.text!, img: imgg )

    }

    var newimages = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]

   
  
   // @IBAction func captura(sender: AnyObject) {
        //let alertController = UIAlertController(title: "PANTALLAS", message: "Mostrar Pantallas", preferredStyle: .Alert) //CREA UN ALERT CONTROLER
        //let actionVerde = UIAlertAction(title: "VERDE", style: .Default, handler: {action in self.performSegueWithIdentifier("cambiar", sender: self)}) //ALERTA PARA EL BOTON VERDE
        
        //alertController.addAction(actionVerde) //AGREGA LA ACCION DEL BOTON VERDE
          //     presentViewController(alertController, animated: true, completion: nil) //PRESENTA EL CONTROLADOR

    //}
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nomF.text = fNom
        descF.text = fDesc
        dirF.text = fDir
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) { //MANDA LA INFORMACION ANTES DE QUE SEA VISIBLE LA SIGUIENTE INTERFAZ
        if segue.identifier == "cambiar" { //DETECTA CUAL SEGUE ESTAMOS UTILIZANDO
            let miViewController = segue.destinationViewController as! ViewControllerimage //OBTENEMOS LA INFO DEL SEGUE DESDE VERDEVIEWCONTROLLER
          //  miViewController.images = newimages // EL TEXTO QUE SE MOSTRARA EN NUESTRA PANTALLA VERDE
        }
    }
    
    @IBAction func unwindImages(segue:UIStoryboardSegue){
        let sourceViewController = segue.sourceViewController as! ViewControllerimage
        myImg.image = UIImage(named: sourceViewController.newimg)
        imgg = sourceViewController.newimg
    }

}
