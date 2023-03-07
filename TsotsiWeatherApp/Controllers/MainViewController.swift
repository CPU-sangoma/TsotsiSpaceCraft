//
//  MainViewController.swift
//  TsotsiWeatherApp
//
//  Created by Lesego Mogorosi on 2023/03/07.
//

import UIKit


class MainViewController: UIViewController {

    
    
    private let mainViewTable: UITableView = {
        
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
        
    }()
    
   
    
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImage(named: "SPACE")
        let backgroundColor = UIColor(patternImage: backgroundImage!)
        self.view.backgroundColor = backgroundColor
        view.addSubview(mainViewTable)
        
        
        mainViewTable.delegate = self
        mainViewTable.dataSource = self
        
        bindViewModel()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mainViewTable.frame = view.bounds
    }
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getWeatherData()
    }
    
    
    func bindViewModel(){
        viewModel.isLoading.bind{ [weak self] isLoading in
            guard let self = self, let isLoading = isLoading else{
                return
            }
            
            DispatchQueue.main.async {
                if isLoading{
                  print("is loading")
                } else {
                    print("done loading")
                }
            }
            
        }
    }
    



}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
}

