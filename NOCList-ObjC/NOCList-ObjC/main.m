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
        
        NSArray *agents = [[NSArray alloc] initWithObjects:
                           ethan,
                           jim ,
                           claire,
                           eugene,
                           franz,
                           luther,
                           sarah,
                           max,
                           hannah,
                           jack,
                           frank,
                           nil];
        
       
        //Step 3
        int compromised = 0;
        for (FGTAgent *agent in agents){
            if (agent.compromised.boolValue) {
                compromised++;
            }
        }
        NSLog(@"Compromised agents: %i", compromised);
        
        //Step 4
        int cleanAngents = 0;
        for(FGTAgent *agent in agents){
            if(agent.compromised.boolValue == FALSE){
                cleanAngents++;
                NSLog(@"Agent is clean: %@", agent.coverName);
            }
        }
        NSLog(@"Total clean agents: %i", cleanAngents);
        
        
        //Step 5
        for(FGTAgent * agent in agents){
            if(agent.accessLevel.intValue >= 8){
                if(agent.compromised.boolValue){
                    NSLog(@"%@, level: %@ **WARNING** **COMPROMISED**",agent.realName, agent.accessLevel);
                }else{
                    NSLog(@"%@: %@", agent.realName, agent.accessLevel);
                }
            }
        }
        
        //Step 6
        int low = 0;
        int mid = 0;
        int high = 0;
        
        for(FGTAgent *agent in agents){
            switch (agent.accessLevel.intValue) {
                case 0 ... 4:
                    low++;
                    break;
                case 5 ... 7:
                    mid++;
                    break;
                case 8 ... 10 :
                    high++;
                    break;
                default:
                    break;
            }
        }
        
        NSLog(@"%i low level agents, %i mid level agents, and %i high level agents",low,mid,high);
        
    }
    return 0;
}
