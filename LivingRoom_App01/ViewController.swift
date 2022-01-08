//
//  ViewController.swift
//  LivingRoom_App01
//
//  Created by 郎凤招 on 2022/1/8.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    private lazy var player: AVPlayer = {
        let player = AVPlayer()
        return player
    }()
    
    private lazy var playerLayer: AVPlayerLayer = {
        let playerLayer = AVPlayerLayer.init()
        playerLayer.frame = self.view.bounds
        playerLayer.backgroundColor = UIColor.black.cgColor
        playerLayer.videoGravity = .resizeAspect
        return playerLayer
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.addSublayer(playerLayer)
        
        playerLayer.player = player
        
        let item = AVPlayerItem(url: URL(string: "https://iptv-org.github.io/iptv/channels/cn.m3u")!)
        player.replaceCurrentItem(with: item)
        player.play()
    }


}

