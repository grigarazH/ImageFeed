//
//  ImageListCell.swift
//  ImageFeed
//
//  Created by Григорий Сухотин on 02.02.2023.
//

import Foundation
import UIKit

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"
    
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var dateContainerView: UIView!
    @IBOutlet var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = dateContainerView.bounds
        gradientLayer.colors = [CGColor(red: 26/255, green: 27/255, blue: 34/255, alpha: 0), CGColor(red: 26/255, green: 27/255, blue: 34/255, alpha: 0.2)]
        gradientLayer.shouldRasterize = true
        dateContainerView.layer.addSublayer(gradientLayer)
    }
}
