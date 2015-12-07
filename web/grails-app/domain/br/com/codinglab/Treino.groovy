package br.com.codinglab

class Treino {

    static belongsTo = [dia: Dia]
    static hasMany = [exercicios: Exercicio]

    static constraints = {
    }

}
