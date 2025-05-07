//
//  ViewController.swift
//  CarrotLoginClone
//
//  Created by 김도현 on 4/30/25.
//
#Preview{
    LoginViewController()
}

import UIKit
import SnapKit

final class LoginViewController: UIViewController {
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "동네라서 가능한 모든 것\n 당근에서 가까운 이웃과 함께해요."
        return label
    }()
    
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
        view.addSubview(label)
        label.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.bottom.equalTo(button.snp.top).offset(-20)
            
        }
    }
  
    @objc func moveToWelcome() {
        let viewController = WelcomeViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

