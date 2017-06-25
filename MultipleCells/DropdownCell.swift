//
//  DropdownCell.swift
//  theappspace.com
//
//  Created by Dejan Atanasov on 16/06/2017.
//  Copyright © 2017 Dejan Atanasov. All rights reserved.
//

import UIKit

class DropdownCell: BaseCell {
    //MARK: Private Properties
    @IBOutlet fileprivate weak var titleLbl: UILabel!
    @IBOutlet fileprivate weak var dropdownBtn: UIButton!
    @IBOutlet fileprivate weak var pickedTitleLbl: UILabel!

    //MARK: Internal Properties
    var actionBlock: (([String]) -> Void)?

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setButtonTitle(title: String){
        pickedTitleLbl.text = title
    }
    
    override func setTitle(title: String) {
        titleLbl.text = title
    }
    
    override func pickerOptionsSet() {
        pickedTitleLbl.text = pickerOptions[0]
    }
    
    @IBAction func onActionButton(btn: UIButton){
        actionBlock?(pickerOptions)
    }

}
