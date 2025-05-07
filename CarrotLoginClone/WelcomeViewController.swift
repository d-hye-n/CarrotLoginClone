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
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name : "Pretendard-ExtraBold", size: 25)
        label.text = "???님\n 반가워요!"
        return label
    }()
    
    private let button1: UIButton = {
        let button = UIButton(type: .system)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        button.setTitle("메인으로", for: .normal)
        button.backgroundColor = .primaryOrange
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 6
        return button
    }()
    
    private let button2: UIButton = {
        let button = UIButton(type: .system)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        button.setTitle("다시 로그인", for: .normal)
        button.backgroundColor = .gray200
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 6
        return button
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(button1)
        view.addSubview(Image)
        view.addSubview(label)
        view.addSubview(button2)
        
        button1.addTarget(self, action: #selector(moveToLogin), for: .touchUpInside)
        
        button1.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(426)
            $0.width.equalTo(335)
            $0.height.equalTo(57)
        }
        
        button2.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(498)
            $0.width.equalTo(335)
            $0.height.equalTo(57)
        }
        
        Image.snp.makeConstraints {
            $0.size.equalTo(150)
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(88)
        }
        
        label.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.top.equalTo(view.safeAreaLayoutGuide).offset(302)
        }
    }
    
    @objc func moveToLogin() {
        self.navigationController?.popViewController(animated: true)
    }
}




