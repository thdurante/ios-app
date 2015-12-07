package br.com.codinglab

abstract class Usuario {

    String nome
    String cpf
    String senha
    String email
    String telefone

    static constraints = {
        nome nullable: false
        cpf nullable: false, unique: true
        senha nullable: false
        email nullable: false, unique: true
        telefone nullable: true
    }

    String toString() {
        nome
    }

}
