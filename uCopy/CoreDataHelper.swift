//
//  CoreDataHelper.swift
//  uCopy
//
//  Created by 周辉 on 2022/11/23.
//

import Foundation
import CoreData

class CoreDataHelper {
    static func historyFetchRequestWithLimit(size: Int) -> NSFetchRequest<History> {
        let r: NSFetchRequest<History> = History.fetchRequest()
        r.sortDescriptors = [
            NSSortDescriptor(keyPath: \History.createDate, ascending: false)
        ]
        r.fetchLimit = size
        return r
    }
}
