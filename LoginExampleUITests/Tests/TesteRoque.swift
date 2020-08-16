//
//  TesteRoque.swift
//  LoginExampleUITests
//
//  Created by HERBERT PEREIRA SOARES on 23/05/20.
//  Copyright © 2020 Gary Tokman. All rights reserved.
//

import Foundation

class TesteRoque: ConfigUiTests {
    
    let login = LoginPage()

        
    func testLoginComSucesso() {
        login.inserirEmail()
        login.inserirSenha()
        login.clicarEmContinuar()
    }
    
    func testFecharBotaoCadastrar() {
        login.clicarEmCadastrar()
        login.clicarEmFecharTelaDeCadastro()
    }
    
}
