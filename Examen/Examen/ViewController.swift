//
//  ViewController.swift
//  Examen
//
//  Created by Alejandro Rivera on 04/06/20.
//  Copyright © 2020 Alejandro Rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var optionName = ["Cámara", "Foto", "Nombre Completo", "Número de Teléfono", "Fecha de Nacimiento", "Sexo(Masculino/Femenino)", "Color Favorito"]
    var optionCheck = [false,false,false,false,false,false,false]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "SelectCellstoFormVC"){
            let formVC = segue.destination as! FormViewController
            formVC.cells = optionCheck
        }
    }
    
    @IBAction func checkContinue() {
        var oneChecked: Bool = false
        for state in optionCheck {
            oneChecked = oneChecked || state
        }
        if oneChecked {
            self.performSegue(withIdentifier: "SelectCellstoFormVC", sender: self)
            
        } else {
            let optionMenu = UIAlertController(title:nil, message:"Debe marcar almenos una opcion para continuar", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Regresar", style: .cancel)
            optionMenu.addAction(cancelAction)
            present(optionMenu, animated: true, completion: nil)
        }
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        optionCheck[indexPath.row] = !optionCheck[indexPath.row]
        if optionCheck[indexPath.row]{
            cell?.accessoryType = .checkmark
        } else{
            cell?.accessoryType = .none
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return optionName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = optionName[indexPath.row]
        if optionCheck[indexPath.row]{
            cell.accessoryType = .checkmark
        } else{
            cell.accessoryType = .none
        }
        
        return cell
    }
    
    
}
