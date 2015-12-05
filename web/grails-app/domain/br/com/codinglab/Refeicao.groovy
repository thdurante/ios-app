package br.com.codinglab

class Refeicao {

    Dieta dieta
    String nome
    String observacao
    Boolean seguiu

    static constraints = {
        nome nullable: false
        observacao nullable: true
        seguiu nullable: true
    }

}
