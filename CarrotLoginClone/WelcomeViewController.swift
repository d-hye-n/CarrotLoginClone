//
//  ViewController.swift
//  CarrotLoginClone
//
//  Created by 김도현 on 4/30/25.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("메인으로", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(moveToLogin), for: .touchUpInside)
        
        button.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.centerY.equalTo(view.snp.centerY)
            
        }
        
    }
    
    @objc func moveToLogin() {
        self.navigationController?.popViewController(animated: true)
    }
}




