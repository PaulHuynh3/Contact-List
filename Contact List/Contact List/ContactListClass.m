//
//  ContactListClass.m
//  Contact List
//
//  Created by Paul on 2017-09-08.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "ContactListClass.h"

@implementation ContactListClass

-(instancetype)init{
    self =[super init];
    
    if (self){
    _contactArray = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact{
    
    [self.contactArray addObject:newContact];

}


@end
