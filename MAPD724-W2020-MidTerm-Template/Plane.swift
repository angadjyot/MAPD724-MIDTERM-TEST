

// Plane.swift
//MAPD724-W2020-midterm test
// Author name - Angadjot Singh Modi
// Author id - 301060981
// Test Date - 19th feb 2020


import SpriteKit

class Plane: GameObject
{
    // constructor
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func CheckBounds()
    {
        // right boundary
        if(self.position.y >= 300 - self.halfWidth!)
        {
            self.position.y = 300 - self.halfWidth!
        }
        
        // left boundary
        if(self.position.y <= -300 + self.halfWidth!)
        {
            self.position.y = -300 + self.halfWidth!
        }
    }
    
    override func Reset()
    {
        
    }
    
    override func Start()
    {
        self.zPosition = 2
    }
    
    override func Update()
    {
        self.CheckBounds()
    }
    
    func TouchMove(newPos: CGPoint)
    {
        self.position = newPos
    }
}
