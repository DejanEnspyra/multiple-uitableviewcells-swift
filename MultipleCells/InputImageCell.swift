//
//  InputImageCell.swift
//  theappspace.com
//
//  Created by Dejan Atanasov on 18/06/2017.
//  Copyright © 2017 Dejan Atanasov. All rights reserved.
//

import UIKit

class InputImageCell: BaseCell {

    //MARK: Private Properties
    @IBOutlet fileprivate weak var imgView: UIImageView!
    @IBOutlet fileprivate weak var inputTxt: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setImage(image: String) {
        imgView.image = UIImage(named: image)
    }
    override func setPlaceholder(placeholder: String) {
        inputTxt.placeholder = placeholder
    }
    
    @IBAction func textDidChange(textField: UITextField){
        if let txt = textField.text{
            textChangedBlock?(txt)
        }
    }
}

extension InputImageCell: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
}
