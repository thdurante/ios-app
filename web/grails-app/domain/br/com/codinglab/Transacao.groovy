package br.com.codinglab

class Transacao {

    Personal personal
    BigDecimal valor
    Date data
    String tipo

    static constraints = {
        valor nullable: false
        data nullable: false
        tipo nullable: false, inList: ['Entrada', 'Saída']
    }
}
