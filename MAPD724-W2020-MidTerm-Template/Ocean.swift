// Ocean.swift
//MAPD724-W2020-midterm test
// Author name - Angadjot Singh Modi
// Author id - 301060981
// Test Date - 19th feb 2020

import SpriteKit
import GameplayKit

class Ocean : GameObject
{
    //constructor
    init()
    {
        super.init(imageString: "ocean", initialScale: 1.172)
        Start()
    }  
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //GameObject Life Cycle Functions
    override func CheckBounds()
    {
           //700
        // check top boundary
        if(self.position.x <= -698) // note maybe reset earlier
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        self.position.x = 0
    }
    
    override func Start()
    {
        self.zPosition = 0
        //self.Reset()
        self.dy = 5.0
    }
    
    override func Update() {
        Move()
        CheckBounds()
    }
    
    func Move()
    {
        self.position.x -= self.dy!
    }

}
