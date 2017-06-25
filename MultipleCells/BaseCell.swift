//
//  BaseCell.swift
//  theappspace.com
//
//  Created by Dejan Atanasov on 16/06/2017.
//  Copyright © 2017 Dejan Atanasov. All rights reserved.
//

import UIKit

class BaseCell: UITableViewCell {

    //MARK: Internal Properties
    var type: CellType!
    var pickerOptions: [String]!{
        didSet{
            pickerOptionsSet()
        }
    }

    var textChangedBlock: ((String) -> Void)?


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
        
    func setForm(title: String, placeholder: String, keyboardType: UIKeyboardType){
        set(title: title, placeholder: placeholder, image: "", secureEntry: false, keyboardType: keyboardType)
    }

    func set(title: String, placeholder: String, image: String, secureEntry: Bool, keyboardType: UIKeyboardType){
        setTitle(title: title)
        setPlaceholder(placeholder:  placeholder)
        setKeyboardType(type: keyboardType)
        setImage(image: image)
        setSecureEntry(isSecure: secureEntry)
    }

    func setTitle(title: String){}
    func setPlaceholder(placeholder: String){}
    func setKeyboardType(type: UIKeyboardType){}
    func setSecureEntry(isSecure: Bool){}
    func setImage(image: String){}
    func setTextAlignment(textAlignment: NSTextAlignment){}
    func pickerOptionsSet(){}
    
    
}
