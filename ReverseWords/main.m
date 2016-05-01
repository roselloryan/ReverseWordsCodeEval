//
//  main.m
//  ReverseWords


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSString *testString = @"I love Jimena";
        NSMutableArray *wordsArray = [[testString componentsSeparatedByString:@" "]mutableCopy];
        NSMutableString *solutionString = [[NSMutableString alloc]init];
        
        NSLog(@"\narrayOfWords: %@\n\n", wordsArray);
        
        int originalWordsCount = (int)wordsArray.count;
        int i;
        for (i = 0; i < originalWordsCount; i++) {
            [solutionString appendString:[wordsArray lastObject]];
            [solutionString appendString:@" "];
            [wordsArray removeLastObject];
        }
        
        NSRange lastSpaceRange = NSMakeRange(solutionString.length-1, 1);
        [solutionString deleteCharactersInRange:lastSpaceRange];
        
        NSLog(@"\nsolutionString: %@\n\n", solutionString);
        
    }
    return 0;
}
