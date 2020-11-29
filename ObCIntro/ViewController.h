//
//  ViewController.h
//  ObCIntro
//
//  Created by Shafayeat Kabir on 28/11/20.
//  Copyright © 2020 Shafayeat Kabir. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    // variable created here
    SystemSoundID soundID;
    
}

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)cat:(id)sender;

@end

