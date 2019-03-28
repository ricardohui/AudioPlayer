//
//  ViewController.swift
//  AudioPlayer
//
//  Created by Ricardo Hui on 29/3/2019.
//  Copyright © 2019 Ricardo Hui. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    @IBAction func pause(_ sender: Any) {
        audioPlayer.pause()
    }
    @IBAction func play(_ sender: Any) {
        audioPlayer.play()
    }
    @IBOutlet var slider: UISlider!
    @IBAction func sliderMoved(_ sender: Any) {
        audioPlayer.volume = slider.value
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let audioPath = Bundle.main.path(forResource: "mozart-piano", ofType: "mp3")
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            audioPlayer.play()
        }catch{
            
        }
    }


}

