//
//  FirstScene.m
//  ScenesAndLayers
//

#import "FirstScene.h"
//#import "OtherScene.h"


@implementation FirstScene

+(id) scene
{
	CCLOG(@"===========================================");
	CCLOG(@"%@: %@", NSStringFromSelector(_cmd), self);
	
	CCScene* scene = [CCScene node];
	FirstScene* layer = [FirstScene node];
	[scene addChild:layer];
	return scene;
}

-(id) init
{
	if ((self = [super init]))
	{
		CCLOG(@"%@: %@", NSStringFromSelector(_cmd), self);
		CGSize size = [[CCDirector sharedDirector] winSize];
        
		//Creating welcome label1------------------------------------------------
        CCLabelTTF* lbWelcome1 = [CCLabelTTF labelWithString:@"Welcome to battle ships" fontName:@"Arial" fontSize:26];
		lbWelcome1.color = ccGREEN;
		
		lbWelcome1.position = CGPointMake(size.width / 2, size.height / 2+80);
		[self addChild:lbWelcome1];
        
        
        
        //Creating welcome label2------------------------------------------------
        CCLabelTTF* lbWelcome2 = [CCLabelTTF labelWithString:@"Enjoy your time here" fontName:@"Arial" fontSize:26];
		lbWelcome2.color = ccGREEN;
		lbWelcome2.position = CGPointMake(size.width / 2, size.height / 2+40);
		[self addChild:lbWelcome2];
		
        //Creating welcome lbLoading------------------------------------------------
        CCLabelTTF* lbLoading = [CCLabelTTF labelWithString:@"Loading..." fontName:@"Arial" fontSize:26];
		lbLoading.color = ccWHITE;
		lbLoading.position = CGPointMake(size.width / 2, size.height / 2);
		[self addChild:lbLoading];
        
		//[OtherScene simulateLongLoadingTime];
		
		self.isTouchEnabled = YES;
	}
	return self;
}

-(void) dealloc
{
	CCLOG(@"%@: %@", NSStringFromSelector(_cmd), self);
	
	// don't forget to call "super dealloc"
	[super dealloc];
}

-(void) ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	//CCTransitionSlideInB* transition = [CCTransitionSlideInB transitionWithDuration:3 scene:[OtherScene scene]];
	//[[CCDirector sharedDirector] replaceScene:transition];
}

-(void) onEnter
{
	CCLOG(@"%@: %@", NSStringFromSelector(_cmd), self);

	// must call super here:
	[super onEnter];
}

-(void) onEnterTransitionDidFinish
{
	CCLOG(@"%@: %@", NSStringFromSelector(_cmd), self);

	// must call super here:
	[super onEnterTransitionDidFinish];
}

-(void) onExit
{
	CCLOG(@"%@: %@", NSStringFromSelector(_cmd), self);
	
	// must call super here:
	[super onExit];
}

@end
