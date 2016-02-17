//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    
    @IBOutlet var workoutMotivation: UIButton!
    @IBOutlet var cornyJokes: UIButton!
    @IBOutlet var pickUpLines: UIButton!
    @IBOutlet var drakeLyrics: UIButton!
    @IBOutlet var kanyeLyrics: UIButton!
    @IBOutlet var networkingJokes: UIButton!
    @IBOutlet var operatingSystemsJokes: UIButton!
    @IBOutlet var generalComputerScienceJokes: UIButton!

    
    var workoutMotivationList: [String] = ["Fear is what stops you... courage is what keeps you going!",
        "Clear your mind of can’t!",
        "Strength does not come from physical capacity. It comes from an indomitable will",
        "It never gets easier. You just get stronger!",
        "You don't have to be great to start, but you have to start to be great!",
        "Good is not enough if better is possible!",
        "No pain, no gain!",
        "When the going gets tough the tough get going!",
        "Sweat. Smile. Repeat.",
        "Making excuses burns 0 calories per hour!",
        "Sweat is just fat crying!",
        "Just keep running, biking, swimming, lifting...you'll get there!",
        "Running is nothing more than a series of arguments between the part of your brain that wants to stop and the part that wants to keep going!",
        "The key is to make it!",
        "There will be roadblocks. But we will overcome it!",
        "They don't want you to exercise. So we're gonna exercise"]
    
    var cornyJokesList: [String] = ["What does a nosey pepper do? Get jalapeño business.", "If you want to catch a squirrel just climb a tree and act like a nut", "What did the football coach say to the broken vending machine? “Give me my quarterback!”", "Why is there a gate around cemeteries? Because people are dying to get in.", "I wondered why the baseball was getting bigger. Then it hit me.", "Dry erase boards are remarkable.", "You want to hear a pizza joke? Never mind, it’s pretty cheesy."]
    
    var pickUpLinesList: [String] = ["I see you're 52 miles away. I would have gussed heaven is a lot further", "If you were a vegetable, you'd be a cutecumber!", "Do you have any sunblock? Because your face is radiant as hell", "Not sure if you've noticed, but you look a lot like my next girlfriend", "If I could rearrange the alphabet I would put u and I together", "You must be tired. You've been running through my mind all night", "Do you have a maa, I'm lost in your eyes"]

    var drakeLyricsList: [String] = ["I live for the nights that I can’t remember, with the people that I won’t forget", "I know they say the first love is the sweetest, but that first cut is the deepest", "All so convinced that you’re following your heart, cause your mind don’t control what it does sometimes.", "“You know it’s real when you are who you think you are.", "You got resolutions, we just got reservations.", "All in all I learned a lesson from it though, you never see it coming you just get to see it go"]
    
    var kanyeLyricsList: [String] = ["I know you're happy, 'cause I can see it So tell the voice inside your head to believe it", "Hotter than Arizon' Fresher than aerosol", "I feel like MJ, I'm in his shoes, I'm talkin' Montell Jordan, this is how we doooo", "The plan was, to drink until the pain over. But what’s worse, the pain or the hangover", "Hurry up with my damn croissants"]
    

    var networkingJokesList: [String] = ["Unix is user friendly. It’s just selective about who its friends are.", "You know it’s love when you memorize her IP number to skip DNS overhead.", "The best thing about 404 jokes is… wait, it’s around here somewhere…", "My love to you is like a bad connection...I keep sending you packets but you refuse to acknowledge them", "Our relationship is like UDP. I just keep trying to send you signals but at the end of the day I guess it's one-sided.", "I would tell you a UDP joke, but you might not get it."]
    
    
    var operatingSystemsJokesList: [String] = ["Always use protection when you fork...you don't want a child process!", "Sometimes be confusing Parallel computing can", "If you were a core and I were a core, I think we'd multithread really well"]

    var generalComputerScienceJokesList: [String] = [ "If she showed any interest towards me ever, I'd git commit myself to her and git push myself on her. But at the end of the day I don't git pull girls like other guys do.", "Oh man she has a boyfriend? I guess we're going to have some merge conflicts", "Could you change the channel? I don't have access to remote", "Girl you'd be first on my list for stable marriage", "You turn my software into hardware...", "There are only two difficult things in CS: naming things, caching, and off-by-one errors.", "What do you call 8 Hobbits? A Hobbyte."]



    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func delete() {
        textDocumentProxy.deleteBackward()
    }
    
    func ret() {
        textDocumentProxy.insertText("\n")
    }
    
    func workout() {
        let s: String = workoutMotivationList[Int(arc4random_uniform(UInt32(workoutMotivationList.count)))]
        textDocumentProxy.insertText(s)
    }
    
    
    func corny() {
        let s: String = cornyJokesList[Int(arc4random_uniform(UInt32(cornyJokesList.count)))]
        textDocumentProxy.insertText(s)
    }
    
    func pickUp() {
        let s: String = pickUpLinesList[Int(arc4random_uniform(UInt32(pickUpLinesList.count)))]
        textDocumentProxy.insertText(s)
    }
    
    func drake() {
        let s: String = drakeLyricsList[Int(arc4random_uniform(UInt32(drakeLyricsList.count)))]
        textDocumentProxy.insertText(s)
    }
    
    func kanye() {
        let s: String = kanyeLyricsList[Int(arc4random_uniform(UInt32(kanyeLyricsList.count)))]
        textDocumentProxy.insertText(s)
    }
    
    func networking(){
        let s: String = networkingJokesList[Int(arc4random_uniform(UInt32(networkingJokesList.count)))]
        textDocumentProxy.insertText(s)
    }
    
    func operatingSystem() {
        let s: String = operatingSystemsJokesList[Int(arc4random_uniform(UInt32(operatingSystemsJokesList.count)))]
        textDocumentProxy.insertText(s)
    }
    
    func generalComputerScience() {
        let s: String = generalComputerScienceJokesList[Int(arc4random_uniform(UInt32(generalComputerScienceJokesList.count)))]
        textDocumentProxy.insertText(s)
    }
    
    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        deleteButton.addTarget(self, action: "delete", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "ret", forControlEvents: .TouchUpInside)
        workoutMotivation.addTarget(self, action: "workout", forControlEvents: .TouchUpInside)
        cornyJokes.addTarget(self, action: "corny", forControlEvents: .TouchUpInside)
        pickUpLines.addTarget(self, action: "pickUp", forControlEvents: .TouchUpInside)
        drakeLyrics.addTarget(self, action: "drake", forControlEvents: .TouchUpInside)
        kanyeLyrics.addTarget(self, action: "kanye", forControlEvents: .TouchUpInside)
        networkingJokes.addTarget(self, action: "networking", forControlEvents: .TouchUpInside)
        operatingSystemsJokes.addTarget(self, action: "operatingSystem", forControlEvents: .TouchUpInside)
        generalComputerScienceJokes.addTarget(self, action: "generalComputerScience", forControlEvents: .TouchUpInside)

    }


}
