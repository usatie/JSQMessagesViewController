//
//  JSQMessagesStampCollectionViewCell.h
//  JSQMessages
//
//  Created by Shun Usami on 2015/07/12.
//  Copyright (c) 2015年 Hexed Bits. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSQMessagesStampCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *stampLabel;
+ (UINib *)nib;
+ (NSString *)cellReuseIdentifier;
@end
