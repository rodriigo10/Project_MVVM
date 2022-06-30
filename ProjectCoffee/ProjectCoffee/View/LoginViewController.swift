//
//  ViewController.swift
//  ProjectCoffee
//
//  Created by Rodrigo Garcia on 30/06/22.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    var loginCoffeeLabel: UILabel = {
        var login = UILabel(frame: .zero)
        login.text = "Login"
        login.textAlignment = .left
        login.font = UIFont(name: "arial rounded", size: 11)
        login.numberOfLines = 0
        login.lineBreakMode = .byWordWrapping
        return login
    }()
    
    var loginCoffeeTextField: UITextField = {
        var loginTextField = UITextField(frame: .zero)
        loginTextField.backgroundColor = .systemBackground
        loginTextField.layer.cornerRadius = 7
        loginTextField.placeholder = " Insert Email"
        loginTextField.layer.borderWidth = 0.5

        return loginTextField
    }()
    
    var passwordCoffeeLabel: UILabel = {
        var pass = UILabel(frame: .zero)
        pass.text = "Password"
        pass.textAlignment = .left
        pass.font = UIFont(name: "arial rounded", size: 11)
        pass.numberOfLines = 0
        pass.lineBreakMode = .byWordWrapping
        return pass
    }()
    
    var passwordCoffeeTextField: UITextField = {
        var passwordTextField = UITextField(frame: .zero)
        passwordTextField.backgroundColor = .systemBackground
        passwordTextField.layer.cornerRadius = 7
        passwordTextField.placeholder = " Password"
        passwordTextField.layer.borderWidth = 0.5
        passwordTextField.isSecureTextEntry = true

        return passwordTextField
    }()
    
    var buttonLogin: UIButton = {
        var buttonSignin = UIButton(frame: .zero)
        buttonSignin.backgroundColor = .systemBlue
        buttonSignin.setTitle("Login", for: .normal)
        buttonSignin.layer.cornerRadius = 7
        buttonSignin.layer.borderWidth =  0.5
        buttonSignin.addTarget(self , action: #selector(loginBtn), for: .touchUpInside)

        return buttonSignin
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subView()
        makeConstraints()
    }
    
    func subView() {
        view.addSubview(loginCoffeeLabel)
        view.addSubview(loginCoffeeTextField)
        view.addSubview(passwordCoffeeLabel)
        view.addSubview(passwordCoffeeTextField)
        view.addSubview(buttonLogin)
    }
    
    func makeConstraints() {
        loginCoffeeLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(250)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(30)
            make.width.equalTo(250)
            
        }
        
        loginCoffeeTextField.snp.makeConstraints { make in
            make.top.equalTo(loginCoffeeLabel.snp.bottom).offset(5)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(40)
            make.width.equalTo(250)
            
        }
        
        passwordCoffeeLabel.snp.makeConstraints { make in
            make.top.equalTo(loginCoffeeTextField.snp.bottom).offset(15)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(30)
            make.width.equalTo(250)
            
        }
        
        passwordCoffeeTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordCoffeeLabel.snp.bottom).offset(5)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(40)
            make.width.equalTo(250)
            
        }
        
        buttonLogin.snp.makeConstraints { make in
            make.top.equalTo(passwordCoffeeTextField.snp.bottom).offset(15)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(40)
            make.width.equalTo(70)
            
        }
    }
    
    @objc func loginBtn ( sender: UIButton!) {
        let menuCoffeeViewController = UINavigationController(rootViewController: MenuCoffeeViewController())
        menuCoffeeViewController.modalPresentationStyle = .fullScreen
        present(menuCoffeeViewController, animated: true, completion: nil)
        
        print("Button pressed")
    }
}

