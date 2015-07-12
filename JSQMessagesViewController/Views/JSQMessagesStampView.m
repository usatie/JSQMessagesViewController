//
//  JSQMessagesStampView.m
//  JSQMessages
//
//  Created by Shun Usami on 2015/07/12.
//  Copyright (c) 2015年 Hexed Bits. All rights reserved.
//

#import "JSQMessagesStampView.h"
#import "JSQMessagesStampCollectionViewCell.h"
@interface JSQMessagesStampView()
@property (strong, nonatomic) IBOutlet UIView *contentView;
@end
@implementation JSQMessagesStampView
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)commonInit {
    NSLog(@"commonInit");
    [self.stampCollectionViewFlowLayout setItemSize:CGSizeMake(320, 216)];
    [self.stampCollectionView registerNib:[JSQMessagesStampCollectionViewCell nib] forCellWithReuseIdentifier:[JSQMessagesStampCollectionViewCell cellReuseIdentifier]];

    NSString* className = NSStringFromClass([self class]);
    [[NSBundle bundleForClass:[self class]] loadNibNamed:className owner:self options:nil];
    
    self.contentView.frame = self.bounds;
    [self addSubview:self.contentView];
}

- (instancetype)init {
    NSLog(@"init");
    self = [super init];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    NSLog(@"initWithCoder");

    self = [super initWithCoder:aDecoder];

    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    NSLog(@"initWithFrame");
    self = [super initWithFrame:frame];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}
- (void)awakeFromNib
{
    [super awakeFromNib];
    NSLog(@"awakeFromNib stamp view");
//    [self commonInit];
}

#pragma mark collection view data source
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    NSLog(@"numberOfSectionsInCollectionView");
    return 5;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSLog(@"numberOfItemsInSection");
    if (section == 0) {
        NSLog(@"section = 0");
        return 3;
    } else {
        NSLog(@"section is not 0");
        return 4;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cell for item at index path");
//    NSString *cellIdentifier = @"JSQMessagesStampCollectionViewCell";
    JSQMessagesStampCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[JSQMessagesStampCollectionViewCell cellReuseIdentifier] forIndexPath:indexPath];
    NSLog(@"cell = %@",cell);
    
    if (indexPath.section == 0) {
        cell.backgroundColor = [UIColor redColor];
        cell.stampLabel.text = @"sample";
    } else {
        cell.backgroundColor = [UIColor grayColor];
    }
    return cell;
}

@end
