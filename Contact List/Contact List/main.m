//
//  main.m
//  Contact List
//
//  Created by Paul on 2017-09-08.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactListClass.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        ContactListClass *contactList =[[ContactListClass alloc]init];
        //init contact class
        Contact *contact = [[Contact alloc]init];
   
        BOOL caller = YES;
        while (caller) {
            InputCollector *inputCollector = [[InputCollector alloc]init];

        //pass question through
        NSString* displayQuestion = inputCollector.question;
            NSLog(@"%@",displayQuestion);
            
        //capture user answer from inputhandler
        NSString* userAnwer = [inputCollector captureAnswer];
        
            if ([userAnwer isEqualToString:@"quit"]) {
                caller = NO;
                break;
            }
            
            
        [inputCollector inputForPrompt:@"new"];
        
        //save names pass thru property
            NSString* name = inputCollector.name;
        //save email list
            NSString* email = inputCollector.email;
           

            
            //add information to an array BUT i want it to add the contact class instead of these properties hmmm.
            Contact *newContact = [[Contact alloc]init];
            newContact.emailContact = email;
            newContact.nameContact = name;
            
            //since this is instantiated in newContact now that when i add object to array it adds both name and email
            [contactList.contactArray addObject:newContact];
            
            
            // should loop around each array and save the data
            [contactList list];
            
            //if i want to see an array of it... here
            NSLog(@"%@",contactList.contactArray);
            }
        }
        
    
    return 0;
}
