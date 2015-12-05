package br.com.codinglab

class Exercicio {

    Treino treino
    String nome
    String observacao
    Boolean feito

    static constraints = {
        nome nullable: false
        observacao nullable: true
        feito nullable: true
    }

}
