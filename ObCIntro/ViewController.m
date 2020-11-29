//
//  ViewController.m
//  ObCIntro
//
//  Created by Shafayeat Kabir on 28/11/20.
//  Copyright © 2020 Shafayeat Kabir. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.label.hidden = YES;
    NSURL *soundURL= [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundID);
    
}

- (IBAction)cat:(id)sender {
    self.label.hidden = NO;
    AudioServicesPlaySystemSound((SystemSoundID) 1352);
    AudioServicesPlaySystemSound(soundID);
    [NSTimer scheduledTimerWithTimeInterval:1.2 target:self selector:@selector(hideLabel) userInfo:nil repeats:NO];
}

-(void)hideLabel {
    self.label.hidden = YES;
}



@end
