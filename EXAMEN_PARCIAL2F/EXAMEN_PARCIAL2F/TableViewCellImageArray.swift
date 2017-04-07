//
//  TableViewCellImageArray.swift
//  EXAMEN_PARCIAL2F
//
//  Created by TEMPORAL2 on 05/04/17.
//  Copyright © 2017 EQUIPOBANANA. All rights reserved.
//

import UIKit

class TableViewCellImageArray: UITableViewCell, UITableViewDelegate, UITableViewDataSource  {

    

    
    let images = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore",
               "confessional","donostia","fiveleaves","forkeerestaurant",
               "grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster",
               "posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {//devuelve filas en la tabla
        return images.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {//arreglo en la tabla ler cuando usa scroll
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda2") //reutiliza una celda
        
        //if celda == nil{ // para detectar si la tabla esta vacia
        //celda = UITableViewCell(style: .Default, reuseIdentifier: "micelda")
        //}
        
        //celda?.textLabel?.text = misDatos[indexPath.row] // se le da los datos a la celda --- indexPath para saber que fila fue seleccionada
        
        let imFija = UIImage(named: images[indexPath.row])//seleccionar una imagen
        //let imClick = UIImage(named: "star-p")//cuando demos click lo detecta
        celda?.imageView?.image = imFija // asigna la imFija
      //  celda?.imageView?.highlightedImage = imClick //ca
        return celda!
    }


}
