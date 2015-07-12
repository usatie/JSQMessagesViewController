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

- (void)commonInit {
    NSLog(@"commonInit cell");
    
    NSString* className = NSStringFromClass([self class]);
    [[NSBundle bundleForClass:[self class]] loadNibNamed:className owner:self options:nil];
    
    self.contentView.frame = self.bounds;
    [self addSubview:self.contentView];
}

- (instancetype)init {
    NSLog(@"init cell");
    self = [super init];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    NSLog(@"initWithCoder cell");
    
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    NSLog(@"initWithFrame cell");
    self = [super initWithFrame:frame];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}


- (void)awakeFromNib {
    // Initialization code
    [super awakeFromNib];
    NSLog(@"awakeFromNib cell");
}

@end
