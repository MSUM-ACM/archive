//
//  ViewController.swift
//  SoundPlay
//
//  Created by Sri Kadimisetty on 10/28/14.
//  Copyright (c) 2014 Sri Kadimisetty. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    // MARK: Properties
    let sound1 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("1", ofType: "m4a")!);
    let sound2 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("2", ofType: "m4a")!);
    let sound3 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("3", ofType: "m4a")!);
    let sound4 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("4", ofType: "m4a")!);
    let sound5 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("5", ofType: "m4a")!);
    let sound6 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("6", ofType: "m4a")!);
    
    var audioPlayer = AVAudioPlayer()
    
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // MARK: Actions
    @IBAction func button1Pressed(sender: AnyObject) {
        playSoundWithNumber(1)
    }
    
    @IBAction func button2Pressed(sender: AnyObject) {
        playSoundWithNumber(2)
    }
    
    @IBAction func button3Pressed(sender: AnyObject) {
        playSoundWithNumber(3)
    }
    
    @IBAction func button4Pressed(sender: AnyObject) {
        playSoundWithNumber(4)
    }
    
    @IBAction func button5Pressed(sender: AnyObject) {
        playSoundWithNumber(5)
    }
    
    @IBAction func button6Pressed(sender: AnyObject) {
        playSoundWithNumber(6)
    }
    
    // Stop Button
    @IBAction func button7Pressed(sender: AnyObject) {
        // Stop any sounds that are currently playing
        stopPlayingAllSounds()
    }
    
    
    // MARK: Helpers
    func playSoundWithNumber(number:Int) {
        // Setup the audio player with the corresponding sound
        switch number {
        case 1:
            audioPlayer = AVAudioPlayer(contentsOfURL: sound1, error: nil);
        case 2:
            audioPlayer = AVAudioPlayer(contentsOfURL: sound2, error: nil);
        case 3:
            audioPlayer = AVAudioPlayer(contentsOfURL: sound3, error: nil);
        case 4:
            audioPlayer = AVAudioPlayer(contentsOfURL: sound4, error: nil);
        case 5:
            audioPlayer = AVAudioPlayer(contentsOfURL: sound5, error: nil);
        case 6:
            audioPlayer = AVAudioPlayer(contentsOfURL: sound6, error: nil);
        default:
            break
        }

        // Play the aound itself
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }

    
    func stopPlayingAllSounds() {
        // Stop isPlaying if is playing right now
        if audioPlayer.playing {
            audioPlayer.stop()
        }
    }
    

    
}

