//
//  ViewController.swift
//  sisosig
//
//  Created by Vladimir Cezar on 2021-03-24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var  imageView: UIImageView!
    private var decision: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(shouldIstayOrShouldIGo)))
    }

    @objc
    private func shouldIstayOrShouldIGo() {
        if decision == nil {
            decision = arc4random_uniform(2) == 0
            imageView.image = decision! ? UIImage(named: "yes") : UIImage(named: "no")
        } else {
            decision = nil
            imageView.image = UIImage(named: "interrogation")
        }
    }
}

