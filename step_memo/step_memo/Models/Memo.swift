//
//  Memo.swift
//  step_memo
//
//  Created by takumi shimamura on 2021/02/26.
//

import Foundation

struct Memo {
    let id: Int
    let memo: String
    let createDate: Date
    let historyList: [Date]
    let parentId: Int
    
    init(id _id: Int, memo _memo: String, createDate _createDate: Date, histroy _history: [Date], parendId _parendId: Int) {
        id = _id
        memo = _memo
        createDate = _createDate
        historyList = _history
        parentId = _parendId
    }
}
