//
//  ViewController.swift
//  CarrotLoginClone
//
//  Created by 김도현 on 4/30/25.
//

import UIKit
import SnapKit

final class LoginViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("로그인하기", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(moveToWelcome), for: .touchUpInside)
        
        button.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.centerY.equalTo(view.snp.centerY)
            
        }
        
    }
  
    
    @objc func moveToWelcome() {
        let viewController = WelcomeViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

