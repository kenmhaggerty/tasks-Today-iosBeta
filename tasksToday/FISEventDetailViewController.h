//
//  FISEventDetailViewController.h
//  tasksToday
//
//  Created by Ken M. Haggerty on 2/4/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EventKit/EKEvent.h>

@interface FISEventDetailViewController : UIViewController
@property (nonatomic, strong) NSArray <EKEvent *> *events;
@end
