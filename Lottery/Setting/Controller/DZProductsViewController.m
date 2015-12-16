//
//  DZProductsViewController.m
//  Lottery
//
//  Created by dengwei on 15/9/29.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZProductsViewController.h"
#import "DZProduct.h"
#import "DZProductCell.h"

static NSString * const reuseIdentifier = @"Cell";

@interface DZProductsViewController ()
{
    NSMutableArray *_products;
}

@end

@implementation DZProductsViewController

-(instancetype)init
{
    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc] init];
    //设置每一个的cell的大小
    flow.itemSize = CGSizeMake(80, 80);
    //水平方向间距
    flow.minimumInteritemSpacing = 0;
    //垂直方向间距
    flow.minimumLineSpacing = 10;
    flow.sectionInset = UIEdgeInsetsMake(20, 0, 0, 0);
    return [self initWithCollectionViewLayout:flow];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"其他产品推荐";
    
    [self loadJSON];
    
    //注册
    UINib *nib = [UINib nibWithNibName:[DZProductCell xib] bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:reuseIdentifier];
    
    self.collectionView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];

}

-(void)loadJSON
{
    //加载JSON
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"product" withExtension:@"json"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    //遍历数组
    _products = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        //创建产品模型
        DZProduct *product = [DZProduct productWithDict:dict];
        [_products addObject:product];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <UICollectionViewDataSource>
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return _products.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    DZProductCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    cell.product = _products[indexPath.row];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>



@end
