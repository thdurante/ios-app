package br.com.codinglab

class Dieta {

    static belongsTo = [dia: Dia]
    static hasMany = [refeicoes: Refeicao]

    static constraints = {
    }

}
