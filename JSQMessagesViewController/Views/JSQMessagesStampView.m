//
//  JSQMessagesStampView.m
//  JSQMessages
//
//  Created by Shun Usami on 2015/07/12.
//  Copyright (c) 2015年 Hexed Bits. All rights reserved.
//

#import "JSQMessagesStampView.h"
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
    NSLog(@"frame = %@",NSStringFromCGRect(self.frame));
    NSLog(@"width = %f",self.frame.size.width/3);
    [self.stampCollectionViewFlowLayout setItemSize:CGSizeMake(self.frame.size.width/3+5, self.frame.size.height/2-15)];
    [self.stampCollectionView registerNib:[JSQMessagesStampCollectionViewCell nib] forCellWithReuseIdentifier:[JSQMessagesStampCollectionViewCell cellReuseIdentifier]];

//    [self commonInit];
}

#pragma mark collection view data source
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    NSLog(@"numberOfSectionsInCollectionView");
    return 3;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSLog(@"numberOfItemsInSection");
    if (section == 0) {
        NSLog(@"section = 0");
        return 6;
    } else {
        NSLog(@"section is not 0");
        return 6;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cell for item at index path");
    JSQMessagesStampCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[JSQMessagesStampCollectionViewCell cellReuseIdentifier] forIndexPath:indexPath];
    cell.stampLabel.text = @"stamp";
    
    if (indexPath.section == 0) {
//        cell.backgroundColor = [UIColor redColor];
    } else {
//        cell.backgroundColor = [UIColor grayColor];
    }
    return cell;
}

#pragma mark collection view delegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"index %@ is selected",indexPath);
}
@end
