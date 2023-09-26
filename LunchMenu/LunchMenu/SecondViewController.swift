//
//  SecondViewController.swift
//  LunchMenu
//
//  Created by 김진웅 on 2023/09/26.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var menuLabel: UILabel!
    var restaurant: Restaurant?
    private var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startRandomButtonTapped(_ sender: UIButton) {
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(startRandom), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        if timer != nil {
            timer?.invalidate()
            timer = nil
        }
    }
    
    @objc private func startRandom() {
        guard let restaurant = restaurant else { return }
        let number = Int.random(in: 0...restaurant.menu.count - 1)
        menuLabel.text = restaurant.menu[number]
    }
}
