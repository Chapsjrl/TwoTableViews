//
//  FormViewModel.swift
//  Examen
//
//  Created by Alejandro Rivera on 04/06/20.
//  Copyright © 2020 Alejandro Rivera. All rights reserved.
//

import Foundation
import UIKit

enum FormViewModelCellType {
    case camara
    case foto
    case nombre
    case telefono
    case fecha
    case sexo
    case colorFav
}

protocol FormViewModelCell {
    var type: FormViewModelCellType{ get }
    var sectionTitle: String { get }
    var rowCount: Int { get }
}

class CamaraViewModelCell: FormViewModelCell {
    var sectionTitle: String { return "Cámara" }
    
    var rowCount: Int { return 1 }
    
    var type: FormViewModelCellType {
        return .camara
    }
    var pictureURL: String
    init(pictureURL: String) {
        self.pictureURL = pictureURL
    }
}

class FotoViewModelCell: FormViewModelCell {
    var type: FormViewModelCellType {
        return .foto
    }
    
    var sectionTitle: String {
        return "Foto"
    }
    
    var rowCount: Int {
        return 1
    }
    
}

class NombreViewModelCell: FormViewModelCell {
    var type: FormViewModelCellType {
        return .nombre
    }
    
    var sectionTitle: String {
        return "Nombre Completo"
    }
    
    var rowCount: Int {
        return 1
    }
    
}

class TelefonoViewModelCell: FormViewModelCell {
    var type: FormViewModelCellType {
        return .telefono
    }
    
    var sectionTitle: String {
        return "Número de Teléfono"
    }
    
    var rowCount: Int {
        return 1
    }
    
}

class FechaViewModelCell: FormViewModelCell {
    var type: FormViewModelCellType {
        return .fecha
    }
    
    var sectionTitle: String {
        return "Fecha de Nacimiento"
    }
    
    var rowCount: Int {
        return 1
    }
    
}

class SexoViewModelCell: FormViewModelCell {
    var type: FormViewModelCellType {
        return .sexo
    }
    
    var sectionTitle: String {
        return "Sexo"
    }
    
    var rowCount: Int {
        return 2
    }
    
}

class ColorFavViewModelCell: FormViewModelCell {
    var type: FormViewModelCellType {
        return .colorFav
    }
    
    var sectionTitle: String {
        return "Color Favorito"
    }
    
    var rowCount: Int {
        return 5
    }
    
}
