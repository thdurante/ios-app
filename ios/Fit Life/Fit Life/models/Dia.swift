//
//  Dia.swift
//  Fit Life
//
//  Created by Thiago Durante Pires on 05/12/15.
//  Copyright © 2015 CodingLab. All rights reserved.
//

import Foundation

class Dia {
    
    var data:NSDate
    var pesoDoDia:Double
    var treino:Treino
    var dieta:Dieta
    
    init(data:NSDate, pesoDoDia:Double, treino:Treino, dieta:Dieta) {
        self.data = data
        self.pesoDoDia = pesoDoDia
        self.treino = treino
        self.dieta = dieta
    }
    
}
