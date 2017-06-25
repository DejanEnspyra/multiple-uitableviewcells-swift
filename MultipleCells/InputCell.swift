//
//  InputCell.swift
//  theappspace.com
//
//  Created by Dejan Atanasov on 16/06/2017.
//  Copyright © 2017 Dejan Atanasov. All rights reserved.
//

import UIKit

class InputCell: BaseCell {

    //MARK: Private Properties
    @IBOutlet fileprivate weak var titleLbl: UILabel!
    @IBOutlet fileprivate weak var inputTxt: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setTitle(title: String) {
        titleLbl.text = title
    }
    override func setPlaceholder(placeholder: String) {
        inputTxt.placeholder = placeholder
    }
    override func setKeyboardType(type: UIKeyboardType) {
        inputTxt.keyboardType = type
    }
    
    @IBAction func textDidChange(textField: UITextField){
        if let txt = textField.text{
            textChangedBlock?(txt)
        }
    }
}
extension InputCell: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
}
