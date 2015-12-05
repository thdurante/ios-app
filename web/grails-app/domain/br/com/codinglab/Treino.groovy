package br.com.codinglab

class Treino {

    Dia dia

    static hasMany = [exercicios: Exercicio]

    static constraints = {
        dia nullable: false
    }

}
