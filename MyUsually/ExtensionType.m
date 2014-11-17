//scope:function or method
//shortcut:extension


#pragma mark - Extension type

// Get the item[s] we're handling from the extension context.
// For example, look for an image and place it into an image view.
// Replace this with something appropriate for the type[s] your extension supports.
for (NSExtensionItem *item in self.extensionContext.inputItems) {
    for (NSItemProvider *itemProvider in item.attachments) {
        if ([itemProvider hasItemConformingToTypeIdentifier:(NSString *)<#kUTType#>]) {
            
            [itemProvider loadItemForTypeIdentifier:(NSString *)<#kUTType#> options:nil completionHandler:^(NSURL *item, NSError *error) {
                self.originURL = item;
                [self.webView loadRequest:[NSURLRequest requestWithURL:item]];
                
            }];
            
            break;
        }
    }
}