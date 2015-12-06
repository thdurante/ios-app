//
//  Exercicio.swift
//  Fit Life
//
//  Created by Thiago Durante Pires on 05/12/15.
//  Copyright © 2015 CodingLab. All rights reserved.
//

import Foundation

class Exercicio {
    
    let nome:String
    var feito:Bool
    var observacao:String?
    
    init(nome:String, feito:Bool) {
        self.nome = nome
        self.feito = feito
    }
    
}
