//
//  InfoViewController.swift
//  InfoApp
//
//  Created by Matvei Khlestov on 29.03.2024.
//

import UIKit

final class InfoViewController: UIViewController {
    
    private let name = "Матвей"
    private let surname = "Хлестов"
    private let streamNumber = "ios 6"
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 51, y: 80, width: 120, height: 19))
        label.text = "Имя: \(name)"
        label.font = .systemFont(ofSize: 16, weight: UIFont.Weight(700))
        
        return label
    }()
    
    private lazy var surnameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 51, y: 112, width: 180, height: 19))
        label.text = "Фамилия: \(surname)"
        label.font = .systemFont(ofSize: 16, weight: UIFont.Weight(700))
        
        return label
    }()
    
    private lazy var streamNumberLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 51, y: 144, width: 180, height: 19))
        label.text = "Номер потока: \(streamNumber)"
        label.font = .systemFont(ofSize: 16, weight: UIFont.Weight(700))
        
        return label
    }()
    
    private lazy var addDataButton: UIButton = {
        let button = UIButton(type: .system)
        
        let buttonWidth: CGFloat = view.frame.width * 0.8
        let buttonHeight: CGFloat = 69
        let buttonX = (view.frame.width - buttonWidth) / 2
        let buttonY = view.frame.height * 0.8
        
        button.frame = CGRect(
            x: buttonX,
            y: buttonY,
            width: buttonWidth,
            height: buttonHeight
        )
        button.backgroundColor = .black
        button.setTitle("Добавить данные", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.layer.cornerRadius = 20
        button.tag = 0
        
        return button
    }()
    
    private lazy var removeDataButton: UIButton = {
        let button = UIButton(type: .system)
        
        let buttonWidth: CGFloat = view.frame.width * 0.4
        let buttonHeight: CGFloat = 19
        let buttonX = (view.frame.width - buttonWidth) / 2
        let buttonY = view.frame.height * 0.9
        
        button.frame = CGRect(
            x: buttonX,
            y: buttonY,
            width: buttonWidth,
            height: buttonHeight
        )
        
        button.setTitle("Очистить данные", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.tag = 1
        
        return button
    }()
    
    private lazy var buttonAction = UIAction { action in
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(nameLabel)
        view.addSubview(surnameLabel)
        view.addSubview(streamNumberLabel)
        view.addSubview(addDataButton)
        view.addSubview(removeDataButton)
    }
}

