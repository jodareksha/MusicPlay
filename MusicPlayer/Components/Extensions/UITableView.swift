//
//  UITableView.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

import UIKit

extension UITableViewCell: Reusable {}

public extension UITableView {
    
    final func register<T: UITableViewCell>(cell: T.Type) {
        self.register(T.self, forCellReuseIdentifier: cell.identifier)
    }
    
    final func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath, cell: T.Type = T.self) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: cell.identifier, for: indexPath) as? T else {
            fatalError("Failed to dequeue cell with identifier \(cell.identifier) matching type \(cell.self)")
        }
        
        return cell
    }
    
}
