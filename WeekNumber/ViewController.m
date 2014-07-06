//
//  ViewController.m
//  WeekNumber
//
//  Created by Jonas Myrlund on 06.07.14.
//  Copyright (c) 2014 Jonas Myrlund. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextView *_weekNumber;

@end

@implementation ViewController

- (void)loadView
{
    [super loadView];
	
    NSDate *today = [NSDate date];
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSISO8601Calendar];
    NSInteger week = [[calendar components: NSWeekOfYearCalendarUnit fromDate:today] weekOfYear];

    self._weekNumber.editable = NO;
    self._weekNumber.text = [NSString stringWithFormat:@"%i", (int) week];
}

@end
