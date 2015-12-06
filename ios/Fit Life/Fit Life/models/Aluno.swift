//
//  Aluno.swift
//  Fit Life
//
//  Created by Thiago Durante Pires on 05/12/15.
//  Copyright © 2015 CodingLab. All rights reserved.
//

import Foundation

class Aluno: Usuario {
    
    let pasta:String
    var mensalidades = Array<Mensalidade>()
    var dias = Array<Dia>()
    
    init(nome:String, cpf:String, senha:String, email:String, telefone:String, pasta:String) {
        self.pasta = pasta
        super.init(nome: nome, cpf: cpf, senha: senha, email: email, telefone: telefone)
    }
    
}