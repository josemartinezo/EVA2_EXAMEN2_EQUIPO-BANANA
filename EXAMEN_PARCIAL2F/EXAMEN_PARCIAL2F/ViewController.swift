//
//  ViewController.swift
//  EXAMEN_PARCIAL2F
//
//  Created by TEMPORAL2 on 05/04/17.
//  Copyright © 2017 EQUIPOBANANA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, DataEnteredDelegate , DataEnteredDelegate2 {
    
    @IBOutlet weak var TableVie: UITableView!
    
  
    var indice = 0
    
    var opcion = ""
    var opcion2 = ""
    
    var n = 0
    
    
    let Datos = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore",
                 "confessional","donostia","fiveleaves","forkeerestaurant",
                 "grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster",
                 "posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]
    
    var aimg = ["barrafina","barrafina","barrafina","barrafina","barrafina","barrafina","barrafina","barrafina","barrafina","barrafina","barrafina","barrafina","barrafina",
                "barrafina","barrafina","barrafina","barrafina","barrafina","barrafina","barrafina",]
    
    var aNombres = ["NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE",
                    "NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE",
                    "NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE",
                    "NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE","NOMBRE DEL RESTAURANTE"]
    
    
    var aDescri = ["DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE",
                   "DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE",
                   "DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE",
                   "DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE","DESCRIPCION DEL RESTAURANTE"]
    
    
    var aDirec = ["DIRECCION Y TELEFONO","DIRECCION Y TELEFONO","DIRECCION Y TELEFONO","DIRECCION Y TELEFONO","DIRECCION Y TELEFONO",
                  "DIRECCION Y TELEFONO","DIRECCION Y TELEFONO","DIRECCION Y TELEFONO","DIRECCION Y TELEFONO","DIRECCION Y TELEFONO",
                  "DIRECCION Y TELEFONO","DIRECCION Y TELEFONO","DIRECCION Y TELEFONO","DIRECCION Y TELEFONO","DIRECCION Y TELEFONO",
                  "DIRECCION Y TELEFONO","DIRECCION Y TELEFONO","DIRECCION Y TELEFONO","DIRECCION Y TELEFONO","DIRECCION Y TELEFONO"]
    
    var opi = ["star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b"]
    
    var opi2 = ["star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b"]
    
    var opi3 = ["star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b","star-b"]
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {//devuelve filas en la tabla
        return aNombres.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {//arreglo en la tabla ler cuando usa scroll
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellmia
        celda.nombre.text = aNombres[indexPath.row] //index path indice de la tabla saber que fila estas
        celda.descripcion.text = aDescri[indexPath.row]
        celda.direccion.text = aDirec[indexPath.row]
        let imgd = UIImage(named: aimg[indexPath.row]) //llamar al arreglo
        celda.imagen.image = imgd
        
        //while n < 20 {
        
        
        
        if indice == indexPath.row{
        
        if opcion2 == "1 - Malo"{
            
            opi[indexPath.row] = "star-p"
            opi2[indexPath.row] = "star-b"
            opi3[indexPath.row] = "star-b"
            var uno = opi[indexPath.row]
            var dos = opi2[indexPath.row]
            var tres = opi2[indexPath.row]
            celda.oneStar.image = UIImage(named: uno)
            celda.twoStar.image = UIImage(named: dos)
            celda.threeStar.image = UIImage(named: tres)
            //opi[indexPath.row] = "star-p"
            //opi2[indexPath.row] = "star-b"
            //opi3[indexPath.row] = "star-b"
            //celda.oneS = opi[indexPath.row]
            //celda.twoS = opi2[indexPath.row]
            //celda.threeS = opi3[indexPath.row]
            actualizar()
            
        }else if opcion2 == "2 - Bueno"{
            
            celda.oneStar.image = UIImage(named: "star-p")
            celda.twoStar.image = UIImage(named: "star-p")
            celda.threeStar.image = UIImage(named: "star-b")
            //opi[indexPath.row] = "star-p"
            //opi2[indexPath.row] = "star-p"
            //opi3[indexPath.row] = "star-b"
            //celda.oneS = opi[indexPath.row]
            //celda.twoS = opi2[indexPath.row]
            //celda.threeS = opi3[indexPath.row]
            actualizar()
            
        }else if opcion2 == "3 - Excelente"{
            
            celda.oneStar.image = UIImage(named: "star-p")
            celda.twoStar.image = UIImage(named: "star-p")
            celda.threeStar.image = UIImage(named: "star-p")
            //opi[indexPath.row] = "star-p"
            //opi2[indexPath.row] = "star-p"
            //opi3[indexPath.row] = "star-p"
            //celda.oneS = opi[indexPath.row]
            //celda.twoS = opi2[indexPath.row]
           //celda.threeS = opi3[indexPath.row]
            actualizar()
            
        }else{
            
            celda.oneStar.image = UIImage(named: "star-b")
            celda.twoStar.image = UIImage(named: "star-b")
            celda.threeStar.image = UIImage(named: "star-b")
            //opi[indexPath.row] = "star-b"
            //opi2[indexPath.row] = "star-b"
            //opi3[indexPath.row] = "star-b"
            //celda.oneS = opi[indexPath.row]
            //celda.twoS = opi2[indexPath.row]
            //celda.threeS = opi3[indexPath.row]
            actualizar()
            
            
        }
        }
      //  }
        
        return celda
        
    }
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let compartirAct = UITableViewRowAction(style: .Default, title: "Compartir", handler: comparteRest)
        let capturarAct = UITableViewRowAction(style: .Default, title: "Capturar", handler: {action in self.performSegueWithIdentifier("captura", sender: self)})
        let opinionAct = UITableViewRowAction(style: .Default, title: "Opinion", handler: {action in self.performSegueWithIdentifier("captura2", sender: self)})
        
        compartirAct.backgroundColor = UIColor.blackColor()
        capturarAct.backgroundColor = UIColor.blueColor()
        indice = indexPath.row
        return [opinionAct,capturarAct,compartirAct]
        
        
    }
    func comparteRest(action: UITableViewRowAction, indexPath: NSIndexPath) -> Void {
        let miTexto = "Vine a comer en " + aNombres[indexPath.row] + " Calificado como " + opcion2
        let miImagen = UIImage(named: aimg[indexPath.row])
        let actiController = UIActivityViewController(activityItems: [miTexto, miImagen!], applicationActivities: nil)
        presentViewController(actiController,animated: true, completion : nil)
    }
    
    
    
    
    
    func capturaRest(action: UITableViewRowAction, indexPath: NSIndexPath) -> Void {
        
    }
    
    
    
    func opinionRest(action: UITableViewRowAction, indexPath: NSIndexPath) -> Void {
        let miTexto = "Vine a comer en " + aimg[indexPath.row]
        let miImagen = UIImage(named: aimg[indexPath.row])
        let actiController = UIActivityViewController(activityItems: [miTexto, miImagen!], applicationActivities: nil)
        presentViewController(actiController,animated: true, completion : nil)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "captura" {
            let secondViewController = segue.destinationViewController as! ViewControllercaptura
             secondViewController.delegate = self
            secondViewController.fNom = aNombres[indice]
            secondViewController.fDesc = aDescri[indice]
            secondViewController.fDir = aDirec[indice]
        }else if segue.identifier == "captura2"{
                let miView = segue.destinationViewController as! ViewControlleropinion
                miView.nom = aNombres[indice]
                miView.des = aDescri[indice]
                miView.dir = aDirec[indice]
            }
        }
    
    func userDidEnterInformation(nombre: String, descripcion: String, dire: String, img: String) {
       // label.text = info
        aNombres[indice] = nombre
        aDescri[indice] = descripcion
        aDirec[indice] = dire
        aimg[indice] = img
        TableVie.beginUpdates()
        TableVie.reloadRowsAtIndexPaths(TableVie.indexPathsForVisibleRows!, withRowAnimation: .None)
        TableVie.endUpdates()
        print(nombre)
    }



    @IBAction func unwindImages(segue:UIStoryboardSegue){
        let sourceViewController = segue.sourceViewController as! ViewControlleropinion
        opcion = sourceViewController.opinion
        opcion2 = sourceViewController.opinion
        actualizar()
    }
    
    func actualizar(){
        //indice = 0
        TableVie.beginUpdates()
        TableVie.reloadRowsAtIndexPaths(TableVie.indexPathsForVisibleRows!, withRowAnimation: .None)
        TableVie.endUpdates()
    }
    
    
    func userDidEnterInformation2(op: String) {
        opcion2 = op
    }



}

