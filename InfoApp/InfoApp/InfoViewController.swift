//
//  InfoViewController.swift
//  InfoApp
//
//  Created by Matvei Khlestov on 29.03.2024.
//

import UIKit

// MARK: -  InfoViewController
final class InfoViewController: UIViewController {
    
    // MARK: -  Private Properties
    private let name = "Матвей"
    private let surname = "Хлестов"
    private let streamNumber = "ios 7"
    
    // MARK: -  UI Elements
    private lazy var nameLabel: UILabel = {
        setupLabel(text: "Имя:", frame: CGRect(x: 51, y: 80, width: 120, height: 19))
    }()
    
    private lazy var surnameLabel: UILabel = {
        setupLabel(text: "Фамилия:", frame: CGRect(x: 51, y: 112, width: 180, height: 19))
    }()
    
    private lazy var streamNumberLabel: UILabel = {
        setupLabel(text: "Номер потока:", frame: CGRect(x: 51, y: 144, width: 180, height: 19))
    }()
    
    private lazy var addDataButton: UIButton = {
        let button = UIButton(type: .system, primaryAction: buttonAction)
        
        setButtonFrame(
            button,
            width: view.frame.width * 0.8,
            height: 69,
            buttonY: view.frame.height * 0.8
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
        
        setButtonFrame(
            button,
            width: view.frame.width * 0.4,
            height: 19,
            buttonY: view.frame.height * 0.9
        )
        
        button.setTitle("Очистить данные", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.tag = 1
        
        return button
    }()
    
    // MARK: -  Action
    private lazy var buttonAction = UIAction { [self] action in
        guard let sender = action.sender as? UIButton else { return }
        
        switch sender.tag {
        case 0:
            setLabelText(nameLabel, text: "Имя: \(name)")
            setLabelText(surnameLabel, text: "Фамилия: \(surname)")
            setLabelText(streamNumberLabel, text: "Номер потока: \(streamNumber)")
        default:
            setLabelText(nameLabel, text: "Имя:")
            setLabelText(surnameLabel, text: "Фамилия:")
            setLabelText(streamNumberLabel, text: "Номер потока:")
        }
    }
    
    // MARK: -  Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

// MARK: -  Private Methods
private extension InfoViewController {
    func setupView() {
        view.backgroundColor = .white
        addSubviews()
    }
    
    func addSubviews() {
        setupSubviews(
            nameLabel,
            surnameLabel,
            streamNumberLabel,
            addDataButton,
            removeDataButton
        )
    }
    
    func setupSubviews(_ subviews: UIView... ) {
        for subview in subviews {
            view.addSubview(subview)
        }
    }
    
    func setupLabel(text: String, frame: CGRect) -> UILabel {
        let label = UILabel(frame: frame)
        label.text = text
        label.font = .systemFont(ofSize: 16, weight: UIFont.Weight(700))
        
        return label
    }
    
    func setLabelText(_ label: UILabel, text: String) {
        label.text = text
    }
    
    func setButtonFrame(_ button: UIButton, width: CGFloat, height: CGFloat, buttonY: CGFloat) {
        let buttonWidth = width
        let buttonHeight = height
        let buttonX = (view.frame.width - buttonWidth) / 2
        let buttonY = buttonY
        
        button.frame = CGRect(
            x: buttonX,
            y: buttonY,
            width: buttonWidth,
            height: buttonHeight
        )
    }
}

