//
//  ViewController.swift
//  MultipleCells
//
//  Created by Dejan Atanasov on 24/06/2017.
//  Copyright © 2017 Dejan Atanasov. All rights reserved.
//

import UIKit

class ViewController: BaseController {
    
    //MARK: Private properties
    @IBOutlet fileprivate weak var mainTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        cellTypes = [.name, .work, .contactTypes, .message, .send]
        setupUI()
    }

    override func currentCell(c: BaseCell, index: Int) {
        let type = cellTypes[index]
        if type == .contactTypes{
            let cell = c as! DropdownCell
            cell.actionBlock = { (options) in
                print(options)
            }
        }
    }
}

private extension ViewController{
    func setupUI(){
        for type in cellTypes{
            mainTableView.registerNibForCellClass(type.cellType().getClass())
        }
    }
    
    @IBAction func onRegisterButton(btn: UIButton){
        cellTypes = [.email, .username, .pass, .send]
        setupUI()
        mainTableView.reloadData()
    }
    @IBAction func onContactUsButton(btn: UIButton){
        cellTypes = [.name, .work, .contactTypes, .message, .send]
        setupUI()
        mainTableView.reloadData()
    }

}

