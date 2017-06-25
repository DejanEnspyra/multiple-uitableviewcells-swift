//
//  BaseController.swift
//  MultipleCells
//
//  Created by Dejan Atanasov on 24/06/2017.
//  Copyright © 2017 Dejan Atanasov. All rights reserved.
//

import UIKit

class BaseController: UIViewController {

    var cellTypes = [FormCellType]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func currentCell(c: BaseCell, index: Int){
        
    }
    
}

extension BaseController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let c = cellTypes[indexPath.row]
        return c.cellType().getHeight()
    }
}

extension BaseController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTypes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let c = cellTypes[indexPath.row]
        let cellClass = c.cellType().getClass()
        let cell = tableView.dequeueReusableCell(withIdentifier: cellClass.cellReuseIdentifier(), for: indexPath) as! BaseCell
        cell.set(title: c.getTitle(), placeholder: c.placeholder(), image: c.image(), secureEntry: c.keyboardSecure(), keyboardType: c.keyboardType())
        cell.type = c.cellType()
        currentCell(c: cell, index: indexPath.row)
        if cell.type == .dropdown{
            cell.pickerOptions = c.pickerOptions()
        }

        return cell
    }
}
