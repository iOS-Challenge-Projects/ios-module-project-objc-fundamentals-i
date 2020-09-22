//
//  main.m
//  NOCList-ObjC
//
//  Created by FGT MAC on 9/21/20.
//

#import <Foundation/Foundation.h>
#import "FGTAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        FGTAgent *ethan = [[FGTAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:0];
        
        FGTAgent *jim = [[FGTAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:1];
        
        FGTAgent *claire = [[FGTAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:0];
        
        FGTAgent *eugene = [[FGTAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:1 ];
        
        FGTAgent *franz = [[FGTAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:0];
        
        FGTAgent *luther = [[FGTAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:0];
        
        FGTAgent *sarah = [[FGTAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:1];
        
        FGTAgent *max = [[FGTAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:0];
        
        FGTAgent *hannah = [[FGTAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:1];
        
        FGTAgent *jack = [[FGTAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:1];
        
        FGTAgent *frank = [[FGTAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:0];
        
        NSArray *agents = [[NSArray alloc] initWithObjects: ethan, jim ,claire, eugene,franz,luther,sarah,max,hannah,jack,frank, nil];
        
      
        
        
    }
    return 0;
}
