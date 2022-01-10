//
//  ViewController.swift
//  LivingRoom_App01
//
//  Created by 郎凤招 on 2022/1/8.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    private lazy var playerLayer: AVPlayerLayer = {
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        playerLayer.backgroundColor = UIColor.black.cgColor
        playerLayer.videoGravity = .resizeAspect
        return playerLayer
    }()
    
    private lazy var item: AVPlayerItem = {
        let item = AVPlayerItem(url: URL(string: "http://39.134.39.39/PLTV/88888888/224/3221226224/index.m3u8")!)
        return item
    }()

    private lazy var player: AVPlayer = {
        let player = AVPlayer(playerItem: item)
        return player
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.addSublayer(playerLayer)
        
        player.play()
    }


}

