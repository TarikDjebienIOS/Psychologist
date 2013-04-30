//
//  PsychologistViewController.m
//  Psychologist
//
//  Created by Tarik Djebien on 30/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "PsychologistViewController.h"
#import "HappinessViewController.h" // On importe les dependances avec les autres controllers

@interface PsychologistViewController()
@property (nonatomic) int diagnosis;
@end


@implementation PsychologistViewController

@synthesize diagnosis = _diagnosis;

-(HappinessViewController *) splitViewHappinessViewController
{
    // Sur l'iPad, il y a deux vues, master et details, contenues dans le tableau viewControllers
    id hvc = [self.splitViewController.viewControllers lastObject]; // On recupere la vue details
    if(![hvc isKindOfClass:[HappinessViewController class]]){
        hvc = nil;
    }
    return hvc; 
    
}

-(void) setAndShowDiagnosis:(int)diagnosis
{
    self.diagnosis = diagnosis;
    if ([self splitViewHappinessViewController]) {
        [self splitViewHappinessViewController].happiness = diagnosis;
    } else {
        [self performSegueWithIdentifier:@"ShowDiagnosis" sender:self];
    }
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"ShowDiagnosis"]) {
        [segue.destinationViewController setHappiness:self.diagnosis];
    } else if ([segue.identifier isEqualToString:@"Celebrity"]){
        [segue.destinationViewController setHappiness:100];
    } else if ([segue.identifier isEqualToString:@"Serious"]){
        [segue.destinationViewController setHappiness:20];
    } else if ([segue.identifier isEqualToString:@"TestDriven"]){
        [segue.destinationViewController setHappiness:50];
    }
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
