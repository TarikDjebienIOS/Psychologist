//
//  PsychologistViewController.m
//  Psychologist
//
//  Created by Tarik Djebien on 30/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "PsychologistViewController.h"

@interface PsychologistViewController()
@property (nonatomic) int diagnosis;
@end


@implementation PsychologistViewController

@synthesize diagnosis = _diagnosis;

-(void) setAndShowDiagnosis:(int)diagnosis
{
    self.diagnosis = diagnosis;
    // segue
}

- (IBAction)flying {
    [self setAndShowDiagnosis:85];
}

- (IBAction)apple {
    [self setAndShowDiagnosis:100];
}

- (IBAction)dragons {
    [self setAndShowDiagnosis:20];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
