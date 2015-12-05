package br.com.codinglab

class Personal extends Usuario {

    static hasMany = [alunos: Aluno, transacoes: Transacao]

    static constraints = {
    }

}
