//
//  LoginPage.swift
//  HyakuUITests
//
//  Created by Carlos Henrique Gonçalves Silva on 10/07/19.
//  Copyright © 2019 Cielo. All rights reserved.
//

import Foundation

class LoginPage {
    
    let helper = MainUIHelper()
    
    func inserirEmail() {
        helper.sendKeysNameTextFields(name: "Email address", value: "qazando@gmail.com")
    }
    
    func inserirSenha() {
        helper.sendKeysNameTextFields(name: "login_password", value: "1234")
    }
    
    func clicarEmContinuar() {
        helper.tapElementButtons(idn: "Continuar")
    }
    
    func clicarEmCadastrar() {
        helper.tapElementButtons(idn: "btn_sign_up_login")
    }
    
    func clicarEmFecharTelaDeCadastro() {
        helper.tapElementButtons(idn: "close_button")
    }
    
    
 }
