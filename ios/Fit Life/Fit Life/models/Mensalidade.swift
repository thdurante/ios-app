//
//  Mensalidade.swift
//  Fit Life
//
//  Created by Thiago Durante Pires on 05/12/15.
//  Copyright © 2015 CodingLab. All rights reserved.
//

import Foundation

class Mensalidade {
    
    var valor:Double
    var competencia:String
    var pago:Bool
    
    init(valor:Double, competencia:String, pago:Bool){
        self.valor = valor
        self.competencia = competencia
        self.pago = pago
    }
    
}