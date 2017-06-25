//
//  UITableViewCell+Extensions.swift
//  HolaPhoenix
//
//  Created by Dejan Atanasov on 16/06/2017.
//  Copyright © 2017 Dejan Atanasov. All rights reserved.
//

import UIKit

extension UITableViewCell {
    
    class func cellReuseIdentifier() -> String {
        return "\(self)"
    }
}

