package br.com.codinglab

import grails.converters.JSON

class AlunoController {

    static scaffold = true
    AlunoService alunoService

    /* Sobrescreve o método save() do scaffold para passar a senha como SHA1 */
    def save() {
        params.senha = params.senha.encodeAsSHA1()
        def aluno = new Aluno(params)
        if (!aluno.save(flush: true)) {
            render(view: "create", model: [aluno: aluno])
            return
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'aluno.label', default: 'Aluno'), aluno.id])
        redirect(action: "show", id: aluno.id)
    }

    def login() {
        render alunoService.login(params.cpf, params.senha)
    }

}