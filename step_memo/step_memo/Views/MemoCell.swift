//
//  MemoCell.swift
//  step_memo
//
//  Created by takumi shimamura on 2021/02/26.
//

import UIKit

class MemoCell: UITableViewCell {
    
    let memoLabel: UILabel = {
        
        let font = UIFont.systemFont(ofSize: 24.0)
        
        let lb = UILabel()
        lb.numberOfLines = 0
        lb.lineBreakMode = .byTruncatingTail
        
        lb.font = font
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.sizeToFit()
        return lb
    }()
    
    let createDateLabel: UILabel = {
        let lb = UILabel()
        let font = UIFont.systemFont(ofSize: 12.0)
        lb.text = "2020/01/01"
        lb.font = font
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("can't use init(coder)")
    }
    
    func setupViews() {
        addSubview(memoLabel)
        addSubview(createDateLabel)
        
        memoLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8.0).isActive = true
        memoLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        memoLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8.0).isActive = true
        memoLabel.heightAnchor.constraint(equalToConstant: 32.0 * 2.0).isActive = true
        
        createDateLabel.topAnchor.constraint(equalTo: memoLabel.bottomAnchor, constant: 0.0).isActive = true
        createDateLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8.0).isActive = true
        createDateLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8.0).isActive = true
        createDateLabel.heightAnchor.constraint(equalToConstant: 16.0).isActive = true
        
    }
}
