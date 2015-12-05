package br.com.codinglab

class Aluno extends Usuario {

    Personal personal
    String pasta

    static hasMany = [mensalidades: Mensalidade, dias: Dia]

    static constraints = {
        pasta nullable: true
    }

}
