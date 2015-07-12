//
//  JSQMessagesStampView.m
//  JSQMessages
//
//  Created by Shun Usami on 2015/07/12.
//  Copyright (c) 2015年 Hexed Bits. All rights reserved.
//

#import "JSQMessagesStampView.h"

@implementation JSQMessagesStampView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
//+ (UINib *)nib
//{
//    return [UINib nibWithNibName:NSStringFromClass([JSQMessagesStampView class])
//                          bundle:[NSBundle bundleForClass:[JSQMessagesStampView class]]];
//}

- (void)awakeFromNib
{
    [super awakeFromNib];
    NSLog(@"awakeFromNib stamp view");
    self.backgroundColor = [UIColor orangeColor];
}


@end
