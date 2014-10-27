- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return <#numberOfSection#>;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return <#numberOfItemsInSection#>;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:<#reuseIdentifier#> forIndexPath:indexPath];
    
    
    return cell;
}