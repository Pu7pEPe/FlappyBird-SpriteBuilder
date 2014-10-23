#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    
    [self addObstacle];
    
    timeSinceObstacle = 0.0f;
    
    
}

-(void)update:(CCTime)delta
{
    // put update code here
    
    // Increment the time since the last obstacle was added
    timeSinceObstacle += delta;  // delta is approximately 1/60th  of a second

    
    // Anthony 102314a
    // Check to see if two seconds have passed
    
    if (timeSinceObstacle > 2.0f)
    {
    
//        // Add a new obstacle
        [self addObstacle];
        
        // Then reset the timer.
        timeSinceObstacle = 0.0f;
        
    }

    // Anthony 102314a
    
    
}

// put new methods here

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // this will get called every time the player touches the screen
    [character flap];
    
    
}



@end
