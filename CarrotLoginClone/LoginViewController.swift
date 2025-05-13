//
//  ViewController.swift
//  CarrotLoginClone
//
//  Created by 김도현 on 4/30/25.
//

import UIKit
import SnapKit

final class LoginViewController: UIViewController {
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name : "Pretendard-Bold", size: 18)
        label.text = "동네라서 가능한 모든 것\n 당근에서 가까운 이웃과 함께해요."
        return label
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        button.setTitle("로그인하기", for: .normal)
        button.backgroundColor = .primaryOrange
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 6
        return button
    }()
    
    private let useridField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "아이디"
        textField.backgroundColor = .gray200
        textField.layer.cornerRadius = 3
        textField.font = UIFont(name: "Pretendard-SemiBold", size: 14)
        textField.setPadding(left: 23, right: 23)
        return textField
    }()
    
    private let userpwField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호"
        textField.backgroundColor = .gray200
        textField.layer.cornerRadius = 3
        textField.font = UIFont(name: "Pretendard-SemiBold", size: 14)
        textField.setPadding(left: 23, right: 23)
        return textField
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        
        view.addSubview(loginButton)
        
        loginButton.addTarget(self, action: #selector(moveToWelcome), for: .touchUpInside)
        
        loginButton.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(422)
            $0.width.equalTo(335)
            $0.height.equalTo(57)
        }
        view.addSubview(loginLabel)
        loginLabel.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(170)
        }
        view.addSubview(useridField)
        useridField.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(276)
            $0.width.equalTo(335)
            $0.height.equalTo(52)
            
        }
        view.addSubview(userpwField)
        userpwField.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(335)
            $0.width.equalTo(335)
            $0.height.equalTo(52)
        }
        
    }
  
    @objc private func moveToWelcome() {
        let viewController = WelcomeViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
//        @objc func moveToWelcome() {
//            let bYC = WelcomeViewController()
//            bYC.modalPresentationStyle = .pageSheet
//            self.present(bYC, animated: true, completion: nil)
//        }
}

extension UITextField {
    func setPadding(left: CGFloat = 0, right: CGFloat = 0) {
        if left > 0 {
            let padding = UIView(frame: CGRect(x: 0, y: 0, width: left, height: 0))
            self.leftView = padding
            self.leftViewMode = .always
        }
        if right > 0 {
            let padding = UIView(frame: CGRect(x: 0, y: 0, width: right, height: 0))
            self.rightView = padding
            self.rightViewMode = .always
        }
    }
}
