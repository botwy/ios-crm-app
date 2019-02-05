//
//  ClientTableViewCell.swift
//  Clients
//
//  Created by Admin on 05.02.2019.
//  Copyright © 2019 goncharov denis. All rights reserved.
//

import UIKit

class ClientTableViewCell: UITableViewCell {
  @IBOutlet weak var headerLabel: UILabel!
  @IBOutlet weak var mainLabel: UILabel!
  @IBOutlet weak var footerLabel: UILabel!
  @IBOutlet weak var orangeLabel: UILabel!
  
  func setClientCellValue(client: Client) {
    headerLabel.text = client.inn
    mainLabel.text = client.name
    footerLabel.text = client.inn
    orangeLabel.text = client.inn
  }
}
