//
//  ViewController.swift
//  MyFMK
//
//  Created by Vitor Spessoto on 08/03/24.
//

import UIKit

class ViewController: UIViewController {

    lazy var helloWorldLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World!"
        label.font = .systemFont(ofSize: 16)
        label.textColor = .systemBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        self.view.addSubview(self.helloWorldLabel)
        helloWorldLabel.pinEdges(to: self.view)
    }

}

extension UIView {
    func pinEdges(to superView: UIView) {
        NSLayoutConstraint.activate([
            self.leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: superView.trailingAnchor),
            self.centerXAnchor.constraint(equalTo: superView.centerXAnchor),
            self.centerYAnchor.constraint(equalTo: superView.centerYAnchor)
        ])
    }
}
