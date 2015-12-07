package br.com.codinglab

class Exercicio {

    String nome
    String observacao
    Boolean feito

    static belongsTo = [treino: Treino]

    static constraints = {
        nome nullable: false
        observacao nullable: true
        feito nullable: true
    }

    static mapping = {
        observacao type: 'text'
    }

}
