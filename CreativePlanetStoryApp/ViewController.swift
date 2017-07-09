//
//  ViewController.swift
//  CreativePlanetStoryApp
//
//  Created by Dimple Joseph on 7/8/17.
//  Copyright © 2017 Dimple Joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tilteLabelText: UILabel!

    @IBOutlet var image: UIImageView!
    
    @IBOutlet var text: UILabel!
    var pageNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func nextPressed(_ sender: Any) {
    
        if(pageNumber < 9){
            pageNumber += 1
        }
        flipBook()
    
    }
    func flipBook(){
        switch pageNumber{
        case 2:
            image.image = UIImage(named: "Mercury")
            text.text = "Mercury is the closest to the sun and would be my kitchen. Mercury is the red planet. It is so hot I could cook anything "
        case 3:
            image.image = UIImage(named: "Venus")
            text.text = "Venus is so bright that I would use it for my study room. Venus is windy and rotates in reverse and has the most volcanoes of any planet. "
            
        case 4:
            image.image = UIImage(named: "Earth")
            text.text = "If I needed to shower Earth with its rivers would be my bathroom. 71% of the earth is water.Earth is also Venus’s sister planet. "
        case 4:
            image.image = UIImage(named: "Mars")
            text.text = "Mars is the fourth planet and would be my living room. The red planet would be an attractive and cool place to bring your guests. "
        case 5:
            image.image = UIImage(named: "Jupiter")
            text.text = "Jupiter the fifth planet has 63 known satellites and is the largest planet. Jupiter would be my master bedroom."
        case 6:
            image.image = UIImage(named: "Saturn")
            text.text = "Saturn is the sixth planet and has the most beautiful rings. It’s also the second largest.Saturn with its rings would be my playroom. "
        case 7:
            image.image = UIImage(named: "Uranus")
            text.text = "Uranus the seventh planet with its moons and rocks would be my ? "
        case 8:
            image.image = UIImage(named: "Neptune")
            text.text = "Neptune is the eighth planet from the sun and my backyard. I would look into the galaxy in the evenings and enjoy my view. "
        case 1: image.image = UIImage(named: "Planets")
        text.font = UIFont(name: "Georgia", size: 17)
        text.text = "I love looking at the stars. The amazing solar system has 8 planets. Planets are Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune each unique and different in their own way."
        case 0:
        text.font = UIFont(name: "Georgia", size: 32)
        image.image = UIImage(named: "Planets")
        text.text = "What if the planets were the room of my house?"
        default:
            break
        }
    }
    
    @IBAction func backPressed(_ sender: Any) {
        if(pageNumber > 0){
            pageNumber -= 1
        }
        flipBook()
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

