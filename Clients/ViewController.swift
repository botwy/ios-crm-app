//
//  ViewController.swift
//  Clients
//
//  Created by Admin on 31.01.2019.
//  Copyright © 2019 goncharov denis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  @IBOutlet weak var clientTable: UITableView!
  
  var clients: [Client] = []
  var cellIdentifier = String(describing: ClientTableViewCell.self)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let clientCellType = UINib(nibName: cellIdentifier, bundle: nil)
    clientTable.register(clientCellType, forCellReuseIdentifier: cellIdentifier)
  
    clientTable.delegate = self
    clientTable.dataSource = self
  }

  //MARK: - UITableViewDataSource
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return clients.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let client = clients[indexPath.row]
    let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! ClientTableViewCell
    cell.setClientCellValue(client: client)
    
    return cell
  }
  //MARK: - UITableViewDelegate
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 60.0
  }
 
}

