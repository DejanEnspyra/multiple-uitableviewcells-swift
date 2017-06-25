//
//  ButtonCell.swift
//  theappspace.com
//
//  Created by Dejan Atanasov on 16/06/2017.
//  Copyright © 2017 Dejan Atanasov. All rights reserved.
//

import UIKit

class ButtonCell: BaseCell {
    
    var actionBlock: (() -> Void)?

    //MARK: Private Properties
    @IBOutlet fileprivate weak var actionBtn: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func onActionButton(btn: UIButton){
        actionBlock?()
    }
    
    override func setTitle(title: String) {
        actionBtn.setTitle(title, for: .normal)
    }
    

}
