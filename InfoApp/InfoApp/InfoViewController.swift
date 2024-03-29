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
        label.text = "Имя:"
        label.font = .systemFont(ofSize: 16, weight: UIFont.Weight(700))
        
        return label
    }()
    
    private lazy var surnameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 51, y: 112, width: 180, height: 19))
        label.text = "Фамилия:"
        label.font = .systemFont(ofSize: 16, weight: UIFont.Weight(700))
        
        return label
    }()
    
    private lazy var streamNumberLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 51, y: 144, width: 180, height: 19))
        label.text = "Номер потока:"
        label.font = .systemFont(ofSize: 16, weight: UIFont.Weight(700))
        
        return label
    }()
    
    private lazy var addDataButton: UIButton = {
        let button = UIButton(type: .system, primaryAction: buttonAction)
        
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
        let button = UIButton(type: .system, primaryAction: buttonAction)
        
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
    
    private lazy var buttonAction = UIAction { [self] action in
        guard let sender = action.sender as? UIButton else { return }
        
        switch sender.tag {
        case 0:
            self.nameLabel.text = "Имя: \(name)"
            self.surnameLabel.text = "Фамилия: \(surname)"
            self.streamNumberLabel.text = "Номер потока: \(streamNumber)"
        default:
            self.nameLabel.text = "Имя:"
            self.surnameLabel.text = "Фамилия:"
            self.streamNumberLabel.text = "Номер потока:"
        }
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

