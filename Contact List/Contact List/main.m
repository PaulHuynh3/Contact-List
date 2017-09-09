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
      
        InputCollector *inputCollector = [[InputCollector alloc]init];
        Contact *contact = [[Contact alloc]init];
        ContactListClass *contactListClass =[[ContactListClass alloc]init];
   
        BOOL caller = YES;
        while (caller) {
            
        
        [inputCollector inputForPrompt:@"new"];
        
        //save names pass thru property
            NSString* name = inputCollector.name;
            
         //property set for contacts and email to save
            contact.nameContact = inputCollector.name;
 

        //save email list
        NSString* email = inputCollector.email;
          //save property to classes
        contact.emailContact = inputCollector.email;
            
            NSString* nameFinal =  contact.nameContact;
            NSString* emailFinal = contact.emailContact;
            
            
            
            
            if ([name isEqualToString:@"quit"]) {
                caller = NO;
                break;
            }
        }
        
    }
    return 0;
}
