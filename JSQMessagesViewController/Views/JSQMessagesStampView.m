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
    NSString* className = NSStringFromClass([self class]);
    [[NSBundle bundleForClass:[self class]] loadNibNamed:className owner:self options:nil];
    
    self.contentView.frame = self.bounds;
    [self addSubview:self.contentView];
}

- (instancetype)init {
    self = [super init];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];

    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}
- (void)awakeFromNib
{
    [super awakeFromNib];
    CGRect mainFrame = [[UIScreen mainScreen] bounds];
    [self.stampCollectionViewFlowLayout setItemSize:CGSizeMake(mainFrame.size.width/3, self.frame.size.height/2)];
    [self.stampCollectionView registerNib:[JSQMessagesStampCollectionViewCell nib] forCellWithReuseIdentifier:[JSQMessagesStampCollectionViewCell cellReuseIdentifier]];

//    [self commonInit];
}

#pragma mark collection view data source
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.stampCellArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    JSQMessagesStampCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[JSQMessagesStampCollectionViewCell cellReuseIdentifier] forIndexPath:indexPath];
    cell.stampLabel.text = self.stampCellArray[indexPath.row];
    cell.layer.borderColor = [[UIColor whiteColor] CGColor];
    cell.layer.borderWidth = 5;
    NSLog(@"cell width = %@",NSStringFromCGRect(cell.frame));

    return cell;
}

#pragma mark collection view delegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"index %@ is selected",indexPath);
    if ([self.delegate respondsToSelector:@selector(didTouchStampAtIndexpath:)]) {
        [self.delegate didTouchStampAtIndexpath:indexPath];
    } else {
        NSLog(@"didTouchCellAtIndexpath is not implemented");
    }
}
@end
