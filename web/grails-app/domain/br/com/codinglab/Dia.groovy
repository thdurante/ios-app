package br.com.codinglab

class Dia {

    Aluno aluno
    Date data
    BigDecimal peso

    static hasOne = [dieta: Dieta, treino: Treino]

    static constraints = {
        data nullable: false
        peso nullable: true
    }

}
