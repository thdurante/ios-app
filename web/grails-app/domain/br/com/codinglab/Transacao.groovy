package br.com.codinglab

class Transacao {

    BigDecimal valor
    Date data
    String tipo
    String descricao

    static belongsTo = [personal: Personal]

    static constraints = {
        valor nullable: false
        data nullable: false
        descricao nullable: true
        tipo nullable: false, inList: ['Entrada', 'Saída']
    }

    static mapping = {
        descricao type: 'text'
    }

}
