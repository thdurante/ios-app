package br.com.codinglab

class Aluno extends Usuario {

    String pasta

    static belongsTo = [personal: Personal]
    static hasMany = [mensalidades: Mensalidade, dias: Dia]

    static constraints = {
        pasta nullable: true
    }

}
