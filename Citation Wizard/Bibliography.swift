//
//  Bibliography.swift
//  Citation Wizard
//
//  Created by Liesel on 18/6/20.
//  Copyright © 2020 Liesel Downes. All rights reserved.
//

import Foundation
import CoreData

@objc(Bibliography)
public class Bibliography: NSManagedObject, Identifiable {
    @NSManaged public var createdAt: Date?
    @NSManaged public var name: String?
}

extension Bibliography {
    static func getAllBibliographies() -> NSFetchRequest<Bibliography> {
        let request: NSFetchRequest<Bibliography> = NSFetchRequest<Bibliography>(entityName: "Bibliography")
        
        let sortDescriptor = NSSortDescriptor(key: "createdAt", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
