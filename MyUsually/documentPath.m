//scope:function or method
//shortcut:targetpath

#pragma mark - Document Target path

NSString *documentPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
NSString *targetPath = [documentPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", <#fileNameWithExtension#>]];