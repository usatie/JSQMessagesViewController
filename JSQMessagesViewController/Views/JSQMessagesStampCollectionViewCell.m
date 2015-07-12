//
//  JSQMessagesStampCollectionViewCell.m
//  JSQMessages
//
//  Created by Shun Usami on 2015/07/12.
//  Copyright (c) 2015年 Hexed Bits. All rights reserved.
//

#import "JSQMessagesStampCollectionViewCell.h"

@implementation JSQMessagesStampCollectionViewCell
+ (UINib *)nib
{
    return [UINib nibWithNibName:NSStringFromClass([JSQMessagesStampCollectionViewCell class])
                          bundle:[NSBundle bundleForClass:[JSQMessagesStampCollectionViewCell class]]];
}

+ (NSString *)cellReuseIdentifier
{
    return NSStringFromClass([self class]);
}

- (instancetype)initWithFrame:(CGRect)frame {
    NSLog(@"initWithFrame cell");
    self = [super initWithFrame:frame];
    
    if (self) {
    }
    
    return self;
}


- (void)awakeFromNib {
    // Initialization code
    [super awakeFromNib];
    NSLog(@"awakeFromNib cell");
}

@end
