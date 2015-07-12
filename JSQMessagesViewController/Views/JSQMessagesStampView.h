//
//  JSQMessagesStampView.h
//  JSQMessages
//
//  Created by Shun Usami on 2015/07/12.
//  Copyright (c) 2015年 Hexed Bits. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSQMessagesStampView:UIView <UICollectionViewDataSource,UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *stampCollectionView;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *stampCollectionViewFlowLayout;

@end
