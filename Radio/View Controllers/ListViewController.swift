//
//  ListViewController.swift
//  Radio
//
//  Created by Serge Sinkevych on 12/19/17.
//  Copyright © 2017 Serge Sinkevych. All rights reserved.
//

import UIKit

protocol Playable: class {
    func play(radio: Radio)
}

// MARK: - ListViewController Class -

class ListViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet var buttons: [UIButton]!

    weak var player: Playable?
    
    var pageIndex: Int = 0
    
    private let pages: [[Radio]] = [
        // Page 1
        [Radio.prosto, Radio.feel, Radio.gorvolna, Radio.hitfm,
         Radio.radiolux, Radio.kissFm, Radio.europa, Radio.svoe],
        
        // Page 2
        [Radio.rretro, Radio.rrussian, Radio.nrj, Radio.roks,
         Radio.loungeFm, Radio.horoshee, Radio.vesti, Radio.business],
        
        // Page 3
        [Radio.avtoradio, Radio.breeze, Radio.blackStar, Radio.loungeChill,
         Radio.relax, Radio.retro, Radio.melodia, Radio.loungeTerrace]
        
        // Page 4
//        [Radio.romantic, Radio.shanson, Radio.nashe]
    ]
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        guard !buttons.isEmpty else { return }
        for button in buttons {
            setupButtonImage(button: button)
        }
    }
    
    // MARK: Actions
    
    @IBAction func play(_ sender: UIButton) {
        guard let radio = retrieveRadio(forIndex: sender.tag) else { return }
        guard let player = player else { return }
        player.play(radio: radio)
    }
}

// MARK: - ListViewController ext: Configuration -

extension ListViewController {
    
    func setupButtonImage(button: UIButton) {
        guard let radio = retrieveRadio(forIndex: button.tag) else { return }
        button.setImage(radio.logo, for: .normal)
    }
    
    private func retrieveRadio(forIndex index: Int) -> Radio? {
        guard pages.count > pageIndex, pages[pageIndex].count > index
            else { return nil }
        return pages[pageIndex][index]
    }
}
