//
//  Player.m
//  Musica
//
//  Created by Chloe Stars on 6/27/13.
//  Copyright (c) 2013 Ozipto. All rights reserved.
//

#import "Player.h"

@implementation Player

@synthesize playerPosition;
@synthesize playState;
@synthesize currentTrack;
@synthesize playPauseCallback;
@synthesize playCallback;
@synthesize pauseCallback;
@synthesize previousTrackCallback;
@synthesize nextTrackCallback;

- (void)play
{
	NSLog(@"play");
	playCallback();
}

- (void)playPause
{
	NSLog(@"playPause");
	playPauseCallback();
}

- (void)pause
{
	NSLog(@"pause");
	pauseCallback();
}

- (void)previousTrack
{
	NSLog(@"previousTrack");
	previousTrackCallback();
}

- (void)nextTrack
{
	NSLog(@"nextTrack");
	nextTrackCallback();
}

+ (NSString *) webScriptNameForSelector:(SEL)sel
{
    NSString *name = nil;
    if (sel == @selector(playerPosition))
		name = @"playerPosition";
	if (sel == @selector(playState))
		name = @"playState";
	if (sel == @selector(currentTrack))
		name = @"currentTrack";
	if (sel == @selector(play))
		name = @"play";
	if (sel == @selector(playPause))
		name = @"playPause";
	if (sel == @selector(pause))
		name = @"pause";
	if (sel == @selector(previousTrack))
		name = @"previousTrack";
	if (sel == @selector(nextTrack))
		name = @"nextTrack";
	
    return name;
}

+ (BOOL)isSelectorExcludedFromWebScript:(SEL)aSelector
{
    if (aSelector == @selector(playerPosition)) return NO;
	if (aSelector == @selector(playState)) return NO;
	if (aSelector == @selector(currentTrack)) return NO;
	if (aSelector == @selector(play)) return NO;
	if (aSelector == @selector(playPause)) return NO;
	if (aSelector == @selector(pause)) return NO;
	if (aSelector == @selector(previousTrack)) return NO;
	if (aSelector == @selector(nextTrack)) return NO;
    return YES;
}

@end
