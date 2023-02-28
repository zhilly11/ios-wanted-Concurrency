//  Concurrency - ViewController.swift
//  Created by zhilly on 2023/02/23

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private var images: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetImages()
    }
    
    @IBAction func tappedLoadButton(_ sender: UIButton) {
        let index = sender.tag
        
        loadImage(index: index)
    }
    
    @IBAction func tappedLoadAllButton(_ sender: UIButton) {
        for index in 0..<images.count {
            loadImage(index: index)
        }
    }
    
    @IBAction func tappedResetAllButton(_ sender: UIButton) {
        resetImages()
    }
    
    private func resetImages() {
        images.forEach { imageView in
            imageView.image = UIImage(systemName: "photo")
        }
    }
    
    private func loadImage(index: Int) {
        images[index].load(url: ImageURL[index])
    }
}
