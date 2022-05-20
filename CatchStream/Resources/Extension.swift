//
//  Extension.swift
//  CatchStream
//
//  Created by BS109 on 20/5/22.
//

import Foundation


extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
