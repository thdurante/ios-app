//
//  Transacao.swift
//  Fit Life
//
//  Created by Thiago Durante Pires on 05/12/15.
//  Copyright © 2015 CodingLab. All rights reserved.
//

import Foundation

class Transacao {

    var valor:Double
    var data:NSDate
    var tipo:String
    
    init(valor:Double, data:NSDate, tipo:String){
        self.valor = valor
        self.data = data
        self.tipo = tipo
    }
    
}