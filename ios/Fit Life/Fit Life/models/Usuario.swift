//
//  Usuario.swift
//  Fit Life
//
//  Created by Thiago Durante Pires on 05/12/15.
//  Copyright © 2015 CodingLab. All rights reserved.
//

import Foundation

class Usuario {
    
    let nome:String
    let cpf:String
    var senha:String
    var email:String
    var telefone:String
    
    init(nome:String, cpf:String, senha:String, email:String, telefone:String) {
        self.nome = nome
        self.cpf = cpf
        self.senha = senha
        self.email = email
        self.telefone = telefone
    }
    
}
