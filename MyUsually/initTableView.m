// Init tableview
// Declare weak referece to self
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method

UITableView *tv = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
tv.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
tv.delegate = self;
tv.dataSource = self;
[self.view addSubview:tv];
