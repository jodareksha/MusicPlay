//
//  UIView+Helper.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
