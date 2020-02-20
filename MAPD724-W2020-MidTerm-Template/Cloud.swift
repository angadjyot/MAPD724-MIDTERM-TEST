
// Cloud.swift
//MAPD724-W2020-midterm test
// Author name - Angadjot Singh Modi
// Author id - 301060981
// Test Date - 19th feb 2020



import SpriteKit
import GameplayKit

class Cloud: GameObject
{
    
    
    //constructor
    init()
    {
        super.init(imageString: "cloud", initialScale: 1.5)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Life Cycle Functions
    override func CheckBounds()
    {
        // bottom boundary
        if(self.position.x < -801)
        {
            self.Reset()
        }
        
    }
    
    func Move()
    {
        self.position.x -= self.dx!
        self.position.y -= self.dy!
    }
    
    override func Reset()
    {
        self.position.x = 801
        let randomX:Int = (randomSource?.nextInt(upperBound: 614))! - 307
        self.position.y = CGFloat(randomX)
        self.dx = CGFloat((randomSource?.nextUniform())! * 5.0) + 5.0
        self.dy = CGFloat((randomSource?.nextUniform())! * -4.0) + 2.0
        self.isColliding = false
    }
    
    override func Start()
    {
        self.zPosition = 5
        self.Reset()
        self.alpha = 0.5
    }
    
    override func Update()
    {
        self.Move()
        self.CheckBounds()
    }
    
    
}
