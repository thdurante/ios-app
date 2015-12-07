package br.com.codinglab

class Dia {

    Date data
    BigDecimal peso

    static hasOne = [aluno: Aluno, dieta: Dieta, treino: Treino]

    static constraints = {
        dieta nullable: true
        treino nullable: true
        data nullable: false
        peso nullable: true
    }

}
