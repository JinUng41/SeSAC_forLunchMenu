//
//  ViewController.swift
//  LunchMenu
//
//  Created by 김진웅 on 2023/09/26.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var restaurantNameLabel: UILabel!
    
    @IBOutlet weak var selectMenuButton: UIButton!
    
    private var timer: Timer?
    
    private var restaurant: Restaurant = .옛촌
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectMenuButton.isEnabled = false
    }


    @IBAction func randomButtonTapped(_ sender: UIButton) {
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(startRandom), userInfo: nil, repeats: true)
        }
    }
    
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        if timer != nil {
            timer?.invalidate()
            timer = nil
            selectMenuButton.isEnabled = true
        }
    }
    
    @objc private func startRandom() {
        let number = Int.random(in: 0...3)
        restaurant = Restaurant(rawValue: number)!
        restaurantNameLabel.text = String(describing: restaurant)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToMenu" {
            guard let vc = segue.destination as? SecondViewController else { return }
            vc.restaurant = self.restaurant
        }
    }
    
}

