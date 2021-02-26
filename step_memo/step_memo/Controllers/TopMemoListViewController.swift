//
//  TopMemoListViewController.swift
//  step_memo
//
//  Created by takumi shimamura on 2021/02/26.
//

import UIKit

class TopMemoListViewController: UIViewController {
    
//    private var navigationDrawerTransitionCoordinator: Naviga
    
    fileprivate let memoCellId: String = "cellId"
    
    var memoList : [Memo] = [
        Memo(id: 1, memo: "memomemo1", createDate: Date.init(), histroy: [], parendId: -1),
        Memo(id: 2, memo: "memomemo2", createDate: Date.init(), histroy: [], parendId: -1)
    ] {
        didSet {
            tableView.reloadData()
        }
    }
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    let addMemoButton: UIButton = {
        let btn = UIButton()
        btn.layer.cornerRadius = 64.0
        btn.backgroundColor = .white
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFill
        btn.contentHorizontalAlignment = .fill
        btn.contentVerticalAlignment = .fill
        btn.imageEdgeInsets = .zero
        btn.tintColor = UIColor.systemBlue
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.backgroundColor = UIColor.white
        view.addSubview(tableView)
        view.addSubview(addMemoButton)
        
        setupViews()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        addMemoButton.widthAnchor.constraint(equalToConstant: 64.0).isActive = true
        addMemoButton.heightAnchor.constraint(equalToConstant: 64.0).isActive = true
        addMemoButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8.0).isActive = true
        addMemoButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8.0).isActive = true
    }
    
    func setupViews() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorInset = .zero
        tableView.rowHeight = UITableView.automaticDimension
        tableView.tableFooterView = UIView()
        tableView.register(MemoCell.self, forCellReuseIdentifier: memoCellId)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

extension TopMemoListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: memoCellId) as? MemoCell) ?? MemoCell()
        cell.memoLabel.text = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1"
        cell.createDateLabel.text = "2020/02/02"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
