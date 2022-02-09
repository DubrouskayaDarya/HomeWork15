//
//  ColorViewController.swift
//  HomeWork15
//
//  Created by Дарья Дубровская on 5.02.22.
//

import UIKit

class ColorViewController: UIViewController {

    weak var delegate: ViewControllerDelegate?

    @IBOutlet weak var sliderFirst: UISlider!
    @IBOutlet weak var sliderSecond: UISlider!
    @IBOutlet weak var sliderThird: UISlider!
    @IBOutlet weak var textFieldFirst: UITextField!
    @IBOutlet weak var textFieldSecond: UITextField!
    @IBOutlet weak var textFieldThird: UITextField!
    @IBOutlet weak var viewColor: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderFirstValueChanged() {
        textFieldFirst.text = String(sliderFirst.value)
        changeViewColor()
        changeBackgroundColorInViewController()
    }

    @IBAction func textFieldFirstEditingChanged() {
        guard
            let inputText = textFieldFirst.text,
            let doubleValue = Float(inputText)
            else {
            return
        }
        sliderFirst.value = doubleValue
        changeViewColor()
        changeBackgroundColorInViewController()
    }

    @IBAction func sliderSecondValueChanged() {
        textFieldSecond.text = String(sliderSecond.value)
        changeViewColor()
        changeBackgroundColorInViewController()
    }

    @IBAction func textFieldSecondEditingChanged() {
        guard
            let inputText = textFieldSecond.text,
            let doubleValue = Float(inputText)
            else {
            return
        }
        sliderSecond.value = doubleValue
        changeViewColor()
        changeBackgroundColorInViewController()
    }

    @IBAction func sliderThirdValueChanged() {
        textFieldThird.text = String(sliderThird.value)
        changeViewColor()
        changeBackgroundColorInViewController()
    }

    @IBAction func textFieldThirdEditingChanged() {
        guard
            let inputText = textFieldThird.text,
            let doubleValue = Float(inputText)
            else {
            return
        }
        sliderThird.value = doubleValue
        changeViewColor()
        changeBackgroundColorInViewController()
    }

    func changeViewColor() {
        viewColor.backgroundColor = UIColor(red: CGFloat(sliderFirst.value) / 255.0, green: CGFloat(sliderSecond.value) / 255.0, blue: CGFloat(sliderThird.value) / 255.0, alpha: 1)
    }

    func changeBackgroundColorInViewController() {
        delegate?.update(color: viewColor.backgroundColor ?? .white)
    }

    func setupUI() {
        sliderFirst.value = 0
        sliderFirst.minimumValue = 0
        sliderFirst.maximumValue = 250
        textFieldFirst.text = String(sliderFirst.value)
        viewColor.backgroundColor = .white

        sliderSecond.value = 0
        sliderSecond.minimumValue = 0
        sliderSecond.maximumValue = 250
        textFieldSecond.text = String(sliderSecond.value)

        sliderThird.value = 0
        sliderThird.minimumValue = 0
        sliderThird.maximumValue = 250
        textFieldThird.text = String(sliderThird.value)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

