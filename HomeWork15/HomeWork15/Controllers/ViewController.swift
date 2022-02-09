//
//  ViewController.swift
//  HomeWork15
//
//  Created by Дарья Дубровская on 5.02.22.
//

import UIKit

protocol ViewControllerDelegate: AnyObject {
    func update(color: UIColor)
}

class ViewController: UIViewController, ViewControllerDelegate {
    func update(color: UIColor) {
        view.backgroundColor = color
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ColorViewController else { return }
        destination.delegate = self
    }

}

