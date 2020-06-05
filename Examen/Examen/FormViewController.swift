//
//  FormViewController.swift
//  Examen
//
//  Created by Alejandro Rivera on 04/06/20.
//  Copyright © 2020 Alejandro Rivera. All rights reserved.
//

import UIKit

class FormViewController: UITableViewController {
    var cells: [Bool]?
    var items = [FormViewModelCell]()
    var colors = ["Rojo", "Verde", "Azul", "Cyan", "Magenta"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setItems()
        registerCell()
        tableView.rowHeight = UITableView.automaticDimension
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return items.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items[section].rowCount
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.section]
        switch item.type {
        case .camara:
            if let cell = tableView.dequeueReusableCell(withIdentifier: ImageViewCell.identifier, for: indexPath) as? ImageViewCell {
                
                return cell
            }

        case .foto:
            if let cell = tableView.dequeueReusableCell(withIdentifier: ImageViewCell.identifier, for: indexPath) as? ImageViewCell {
                
                return cell
            }
        case .telefono:
            if let cell = tableView.dequeueReusableCell(withIdentifier: PhoneCell.identifier, for: indexPath) as? PhoneCell {
                
                return cell
            }
        case .nombre:
            if let cell = tableView.dequeueReusableCell(withIdentifier: NameCell.identifier, for: indexPath) as? NameCell {
                
                return cell
            }
        case .sexo:
            if let cell = tableView.dequeueReusableCell(withIdentifier: GenderCell.identifier, for: indexPath) as? GenderCell {
                if indexPath.row == 0 {
                    cell.configure("Femenino")
                }
                return cell
            }
        case .colorFav:
            if let cell = tableView.dequeueReusableCell(withIdentifier: ColorCell.identifier, for: indexPath) as? ColorCell {
                
                cell.configure(colors[indexPath.row])
                
                return cell
            }
        case .fecha:
            if let cell = tableView.dequeueReusableCell(withIdentifier: DateCell.identifier, for: indexPath) as? DateCell {
                return cell
            }
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        print(items[section].sectionTitle)
        return items[section].sectionTitle
    }

    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    func setItems(){
        for index in (0...(cells!.count-1)) {
            switch index {
            case 0:
                if cells![0] {
                    let cameraCell = CamaraViewModelCell(pictureURL: "")
                    items.append(cameraCell)
                }
            case 1:
            if cells![1] {
                let cameraCell = FotoViewModelCell()
                items.append(cameraCell)
            }
            case 2:
            if cells![2] {
                let cameraCell = NombreViewModelCell()
                items.append(cameraCell)
            }
            case 3:
            if cells![3] {
                let cameraCell = TelefonoViewModelCell()
                items.append(cameraCell)
            }
            case 4:
            if cells![4] {
                let cameraCell = FechaViewModelCell()
                items.append(cameraCell)
            }
            case 5:
            if cells![5] {
                let cameraCell = SexoViewModelCell()
                items.append(cameraCell)
            }
            case 6:
                if cells![6] {
                    let cameraCell = ColorFavViewModelCell()
                    items.append(cameraCell)
                }
            default: break
            }
        }
        print(items)
    }
    
    func registerCell() {
        tableView.register(DateCell.nib, forCellReuseIdentifier: DateCell.identifier)
        tableView.register(NameCell.nib, forCellReuseIdentifier: NameCell.identifier)
        tableView.register(GenderCell.nib, forCellReuseIdentifier: GenderCell.identifier)
        tableView.register(ImageViewCell.nib, forCellReuseIdentifier: ImageViewCell.identifier)
        tableView.register(PhoneCell.nib, forCellReuseIdentifier: PhoneCell.identifier)
        tableView.register(ColorCell.nib, forCellReuseIdentifier: ColorCell.identifier)
    }

}
