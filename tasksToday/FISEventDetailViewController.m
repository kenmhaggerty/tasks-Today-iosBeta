//
//  FISEventDetailViewController.m
//  tasksToday
//
//  Created by Ken M. Haggerty on 2/4/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISEventDetailViewController.h"

@interface FISEventDetailViewController ()
@property (nonatomic, strong) IBOutlet UITextView *textView;
@end

@implementation FISEventDetailViewController

- (void)viewWillAppear:(BOOL)animated
{
    EKEvent *event;
    NSMutableString *text = [NSMutableString string];
    
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"MMMM d, yyyy"];
//    NSDateFormatter *timeFormatter = [[NSDateFormatter alloc] init];
//    [timeFormatter setDateFormat:@"hh:mm a"];
//    NSDateComponents *priorDate, *currentDate;
    
    for (NSUInteger i = 0; i < self.events.count; i++)
    {
        event = [self.events objectAtIndex:i];
        
//        currentDate = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:event.startDate];
//        if ((!priorDate) || (currentDate.day != priorDate.day) || (currentDate.month != priorDate.month) || (currentDate.year != priorDate.year))
//        {
//            [text appendFormat:@"%@%@\n", ((i == 0) ? @"" : @"\n"), [dateFormatter stringFromDate:event.startDate]];
//        }
//        [text appendFormat:@"• %@%@%@", (event.allDay ? @"" : [NSString stringWithFormat:@"%@: ", [timeFormatter stringFromDate:event.startDate]]), event.title, ((i == self.events.count-1) ? @"" : @"\n")];
//        priorDate = currentDate;
        
        [text appendFormat:@"%@%@", event.title, ((i == self.events.count-1) ? @"" : @"\n")];
    }
    [self.textView setText:text];
}

@end
