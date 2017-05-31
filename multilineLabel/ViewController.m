//
//  ViewController.m
//  multilineLabel
//
//  Created by Mshc on 31/05/17.
//  Copyright © 2017 mshc. All rights reserved.
//

#import "ViewController.h"
#import "cell.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tblView;
@property (strong,nonnull) NSArray *arrITem;
@property (strong,nonnull) NSArray *arrOfData;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.arrITem = [[NSArray alloc]initWithObjects:@"one",@"two",@"three",@"four", nil];
    NSString *strText =@"fvvs vs nvknmwbkfmnkb mmb bkmkf bkmb mkrt mbhm gb mdfkbm ms mmgkymbkdsmbjkmjgbjmkm nb,fvvs vs nvknmwbkfmnkb mmb bkmkf bkmb mkrt mbhm gb mdfkbm ms mmgkymbkdsmbjkmjgbjmkm nbfvvs vs nvknmwbkfmnkb mmb bkmkf bkmb mkrt mbhm gb mdfkbm ms mmgkymbkdsmbjkmjgbjmkm nbfvvs b";
    self.arrOfData = [[NSArray alloc]initWithObjects:strText,strText,strText,strText, nil];
    _tblView.rowHeight =UITableViewAutomaticDimension;
    _tblView.estimatedRowHeight =30;
    _tblView.tableFooterView  = [UIView new];
    _tblView.delegate = self;
    _tblView.dataSource = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITABLEVIEWDELEGATE

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.arrITem.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
   return  2;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForHeaderInSection:(NSInteger)section{
    return 30;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return UITableViewAutomaticDimension;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    cell *cell1 =(cell *)[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell1.contentView.backgroundColor = [UIColor lightGrayColor];
    cell1.lblMultiline.text = @"fvvs vs nvknmwbkfmnkb mmb bkmkf bkmb mkrt mbhm gb mdfkbm ms mmgkymbkdsmbjkmjgbjmkm nb,fvvs vs nvknmwbkfmnkb mmb bkmkf bkmb mkrt mbhm gb mdfkbm ms mmgkymbkdsmbjkmjgbjmkm nbfvvs vs nvknmwbkfmnkb mmb bkmkf bkmb mkrt mbhm gb mdfkbm ms mmgkymbkdsmbjkmjgbjmkm nbfvvs b";
    cell1.lblDate.text = @"date";
    cell1.lblStatus.text = @"status";
    
    return cell1.contentView;
}
// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    cell *cell1 =(cell *)[tableView dequeueReusableCellWithIdentifier:@"Cell"];
  
    [cell1 setDataForIndex:indexPath withData:self.arrOfData];
    
    
    return cell1;
}
@end
