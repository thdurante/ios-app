package br.com.codinglab

import grails.converters.JSON

class AlunoService {

    String login(String cpf, String senha) {
        Aluno aluno = Aluno.findByCpf(cpf)
        if (aluno?.senha == senha) {
            aluno as JSON
        } else {
            [status: 403, mensagem: "Usuário ou senha inválidos"] as JSON
        }
    }

}