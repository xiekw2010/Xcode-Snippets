// Init collectionView
// Declare weak referece to self
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method

CGFloat const inset = <#inset#>;
CGFloat const eachLineCount = <#lines#>;
UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
flowLayout.minimumInteritemSpacing = inset;
flowLayout.minimumLineSpacing = inset;
flowLayout.sectionInset = UIEdgeInsetsMake(inset, inset, inset, inset);
CGFloat width = (CGRectGetWidth(self.view.bounds)-(eachLineCount+1)*inset)/eachLineCount;
flowLayout.itemSize = CGSizeMake(width, width);
UICollectionView *cv = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
cv.alwaysBounceVertical = YES;
cv.dataSource = self;
cv.delegate = self;
cv.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
cv.backgroundColor = [UIColor whiteColor];
[self.view addSubview:cv];
[cv registerClass:[<#CellClassName#> class] forCellWithReuseIdentifier:<#ReuseIdentifier#>];