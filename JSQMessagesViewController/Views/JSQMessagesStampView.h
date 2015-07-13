//
//  JSQMessagesStampView.h
//  JSQMessages
//
//  Created by Shun Usami on 2015/07/12.
//  Copyright (c) 2015年 Hexed Bits. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSQMessagesStampCollectionViewCell.h"

@protocol JSQMessagesStampViewDelegate <NSObject>

@required

- (void)didTouchStampAtIndexpath:(NSIndexPath*)indexpath;

@end

@interface JSQMessagesStampView:UIView <UICollectionViewDataSource,UICollectionViewDelegate>
@property (weak, nonatomic) id<JSQMessagesStampViewDelegate> delegate;
@property (weak, nonatomic) IBOutlet UICollectionView *stampCollectionView;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *stampCollectionViewFlowLayout;
@property NSArray *stampCellArray;
@end
