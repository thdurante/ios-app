//
//  LoginViewController.swift
//  Fit Life
//
//  Created by Thiago Durante Pires on 06/12/15.
//  Copyright © 2015 CodingLab. All rights reserved.
//

import UIKit
import Alamofire
import CryptoSwift


class LoginViewController: UIViewController {

    @IBOutlet weak var cpfTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "image7.jpg")?.drawInRect(self.view.bounds)
        
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        self.view.backgroundColor = UIColor(patternImage: image)
    }
    
    @IBAction
    func login() {
        
        print("CPF: \(cpfTextField.text!)")
        print("Senha: \(senhaTextField.text!)")
        
        // Gerando o hash da senha
        let hash = senhaTextField.text!.sha1()
        print("Hash da senha: \(hash)")
        
        
        let parametros = [
            "cpf": cpfTextField.text!,
            "senha": hash
        ]
        
        Alamofire.request(.POST, "https://fitlifeios.herokuapp.com/aluno/login", parameters: parametros, encoding: .JSON)
            .responseJSON { response in
                print("Response: \(response)")
                print("Status: \(response.response!.statusCode)")
                
                // Recuperando os dados do JSON de retorno
                let jsonRetorno = response.result.value!
                print("Mensagem: \(jsonRetorno.valueForKey("mensagem")!)")
                print("Status: \(jsonRetorno.valueForKey!("status")!)")
                
                //if response.response?.statusCode ==
            }
        
        let condicao = true
        
        if condicao {
            performSegueWithIdentifier("loginOk", sender: self)
        }
        
        print("ok clicado")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
