//
//  Pessoa.swift
//  formulario
//
//  Created by Lilian on 09/08/21.
//

import Foundation

class Pessoa {
    var nome: String
    var cpf: String
    var telefone: Int
    var email: String
    
    init(nome: String, cpf: String,telefone: Int, email: String) {
        self.nome = nome
        self.cpf = cpf
        self.telefone = telefone
        self.email = email
    }
}
