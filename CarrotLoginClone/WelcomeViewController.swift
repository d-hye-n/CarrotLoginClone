//
//  ViewController.swift
//  CarrotLoginClone
//
//  Created by 김도현 on 4/30/25.
//
#Preview{
    WelcomeViewController()
}

import UIKit
import SnapKit

final class WelcomeViewController: UIViewController {
    
    private let Image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Image")
        return image
    }()
    
    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("메인으로", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(button)
        view.addSubview(Image)
        
        button.addTarget(self, action: #selector(moveToLogin), for: .touchUpInside)
        
        button.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.centerY.equalTo(view.snp.centerY)
        }
        
        Image.snp.makeConstraints {
            $0.size.equalTo(150)
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(88)
        }
    }
    
    @objc func moveToLogin() {
        self.navigationController?.popViewController(animated: true)
    }
}




