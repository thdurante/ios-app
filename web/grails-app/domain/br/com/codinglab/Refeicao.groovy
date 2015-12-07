package br.com.codinglab

class Refeicao {

    String nome
    String observacao
    Boolean seguiu

    static belongsTo = [dieta: Dieta]

    static constraints = {
        nome nullable: false
        observacao nullable: true
        seguiu nullable: true
    }

    static mapping = {
        observacao type: 'text'
    }

}
