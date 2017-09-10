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

-(void)list{
//
//    for (int i =0 ; i<_contactArray.count; i++) {
//        NSString* contactDisplay = [NSString stringWithFormat:@"#:%@ %@",_contactArray[i], _contactArray[i+1]];
//        NSLog(@"%@", contactDisplay);
//    }

    
// to retrieve information from the getting the contacts out
    int contactKey = 0;
    for(Contact *contacts in self.contactArray){
        NSLog(@"%i:<%@ %@> ()", contactKey, contacts.nameContact, contacts.emailContact);
        contactKey++;

    }

    
}


@end
