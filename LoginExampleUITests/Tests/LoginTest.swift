//
//  LoginTest.swift
//  HyakuUITests
//
//  Created by Herbert Pereira Soares on 18/02/20.
//  Copyright © 2020 Cielo. All rights reserved.
//

import Foundation

class LoginTest: ConfigUiTests {
    
    let login = LoginPage()
    
    func testLogandoComSucesso() {
        login.inserirEmail()
        login.inserirSenha()
        login.clicarEmContinuar()
    }
    
    func testAcessandoTelaDeCadastro() {
        login.clicarEmCadastrar()
        login.clicarEmFecharTelaDeCadastro()
    }
}
