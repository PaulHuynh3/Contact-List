//
//  ContactListClass.h
//  Contact List
//
//  Created by Paul on 2017-09-08.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactListClass : NSObject
@property (strong,nonatomic)NSMutableArray* contactArray;

-(void)addContact:(Contact *)newContact;
//on task 4


@end
