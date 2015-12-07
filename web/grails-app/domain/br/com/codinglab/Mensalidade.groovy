package br.com.codinglab

class Mensalidade {

    BigDecimal valor
    String competencia
    Boolean pago

    static belongsTo = [aluno: Aluno]

    static constraints = {
        valor nullable: false
        competencia nullable: false
        pago nullable: true
    }

}
