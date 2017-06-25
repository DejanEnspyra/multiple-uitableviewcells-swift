//
//  CellType.swift
//  theappspace.com
//
//  Created by Dejan Atanasov on 16/06/2017.
//  Copyright © 2017 Dejan Atanasov. All rights reserved.
//

import Foundation
import UIKit

enum CellType{
    
    case input
    case inputLong
    case inputImage
    case dropdown
    case button
    
    func getHeight() -> CGFloat{
        switch self {
        case .input, .dropdown, .button: return 80
        case .inputLong: return 115
        case .inputImage: return 65
        }
    }
    
    func getClass() -> BaseCell.Type{
        switch self {
        case .input: return InputCell.self
        case .inputLong: return InputLongCell.self
        case .dropdown: return DropdownCell.self
        case .button: return ButtonCell.self
        case .inputImage: return InputImageCell.self
        }
    }
    
}
