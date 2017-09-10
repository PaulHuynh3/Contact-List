//
//  InputCollector.h
//  Contact List
//
//  Created by Paul on 2017-09-08.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface InputCollector : NSObject
@property NSString* question;
@property NSString* name;
@property NSString* email;

-(NSString*)captureAnswer;

-(NSString *)inputForPrompt:(NSString *)promptString;


@end
