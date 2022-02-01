//
//  ViewController.swift
//  Sound
//
//  Created by SeinaKonishi on 2022/01/29.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    @IBOutlet var drumButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton(){
        
        drumButton.setImage(UIImage(named: "drumPlayingImage"),for: .normal)
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
        
    }
    
    @IBAction func touchUpDrumButton(){
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }

}

