//
//  InputCollector.m
//  Contact List
//
//  Created by Paul on 2017-09-08.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(instancetype)init{
    self =[super init];
    
    if (self){
        //display question
    NSString* showQuestion = @"Choose new or quit";
    _question = showQuestion;

    }
    return self;
}

-(NSString*)captureAnswer{

    
    //255 unit long array of characters
    char inputChars[255];
    
    //limit input to max 255 characters fgets collect user's answer
    fgets(inputChars, 255, stdin);
    
    //convert char array to an NSString object
    NSString *stringDisplay = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    //remove white space from user answer
    NSString* display = [stringDisplay stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    //show this in main. create if statement if they type quit make them exit, new to begin etc...
//    display = [NSString stringWithFormat:@"Type QUIT to exit. Type NEW to begin!!!"];
    
    return display;
    
}


-(NSString *)inputForPrompt:(NSString *)promptString{
    
    if ([promptString isEqualToString:@"quit"]){
     NSLog(@"Thank you come again");
    }
    
    //If the user types in new into the prompt at the main menu, the command line app should further prompt the user for information about the contact they wish to create. Eg: take a full name and email (separately).
    
    if([promptString isEqualToString:@"new"]){
        NSLog(@"Give me your name");
        
        //255 unit long array of characters
        char inputChars[255];
        
        //limit input to max 255 characters fgets collect user's answer
        fgets(inputChars, 255, stdin);
        
        //convert char array to an NSString object
        NSString *stringName = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
        
        //remove white space from user answer
        NSString* name = [stringName stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        //save name
         _name = name;
        
        NSLog(@"Give me your Email!!!");
        
        //255 unit long array of characters
        char inputEmail[255];
        
        //limit input to max 255 characters fgets collect user's answer
        fgets(inputEmail, 255, stdin);
        
        //convert char array to an NSString object
        NSString *stringEmail = [NSString stringWithCString:inputEmail encoding:NSUTF8StringEncoding];
        
        //remove white space from user answer
        NSString* email = [stringEmail stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        //save user email.
         _email = email;
        
    }
    
    
    return promptString;
    
}

@end
