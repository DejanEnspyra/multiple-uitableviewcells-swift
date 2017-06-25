//
//  FormCellType.swift
//  HolaPhoenix
//
//  Created by Dejan Atanasov on 16/06/2017.
//  Copyright © 2017 Dejan Atanasov. All rights reserved.
//

import Foundation
import UIKit

enum FormCellType{
    
    case name
    case email
    case username
    case pass
    case contactTypes
    case work
    case message
    case send

    func getTitle() -> String{
        switch self {
        case .name: return "Name"
        case .email: return "Email"
        case .work: return "Work"
        case .message: return "Message"
        case .send: return "Send"
        case .contactTypes: return "Pick Contact Type"
        case .username: return "Username"
        case .pass: return "Password"
        }
    }
    
    func placeholder() -> String{
        switch self {
        case .name: return "Enter your name"
        case .email: return "Enter your email address"
        case .work: return "Enter your company place"
        case .message: return "Write us a message (optional)"
        case .username: return "Enter Username"
        case .pass: return "Enter Password"
        default: return ""
        }
    }
    
    func image() -> String{
        switch self {
        case .username: return "form-username"
        case .email: return "form-email"
        case .pass: return "form-password"
        default: return ""
        }
    }
    
    func keyboardSecure() -> Bool{
        switch self {
        case .pass: return true
        default: return false
        }
    }

    func keyboardType() -> UIKeyboardType{
        switch self {
        case .email: return .emailAddress
        default: return .default
        }
    }
    
    func pickerOptions()->[String]{
        switch self {
        case .contactTypes:
            return ["Advertising on Site", "General Enquiries", "Feedback", "Account Enquiries"]
        default: return []
        }
    }
    
    func cellType() -> CellType{
        switch self {
        case .message: return .inputLong
        case .send: return .button
        case .username, .pass, .email: return .inputImage
        case .contactTypes: return .dropdown
        default: return .input
        }
    }
}
