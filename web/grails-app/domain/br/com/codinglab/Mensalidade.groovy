package br.com.codinglab

class Mensalidade {

    Aluno aluno
    BigDecimal valor
    String competencia
    Boolean pago

    static constraints = {
        aluno nullable: false
        valor nullable: false
        competencia nullable: false
        pago nullable: true
    }

}
