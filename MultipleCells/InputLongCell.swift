//
//  InputLongCell.swift
//  theappspace.com
//
//  Created by Dejan Atanasov on 16/06/2017.
//  Copyright © 2017 Dejan Atanasov. All rights reserved.
//

import UIKit

class InputLongCell: BaseCell {
    //MARK: Private Properties
    @IBOutlet fileprivate weak var titleLbl: UILabel!
    @IBOutlet fileprivate weak var inputTxt: UITextView!

    fileprivate var placeholder = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setTitle(title: String) {
        titleLbl.text = title
    }
    override func setPlaceholder(placeholder: String) {
        inputTxt.text = placeholder
        self.placeholder = placeholder
        if inputTxt.text == placeholder{
            inputTxt.textColor = UIColor.lightGray
        }else{
            inputTxt.textColor = UIColor.black
        }
    }
}

extension InputLongCell: UITextViewDelegate{
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = placeholder
            textView.textColor = UIColor.lightGray
        }
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        textChangedBlock?(textView.text)
        return true
    }
}
