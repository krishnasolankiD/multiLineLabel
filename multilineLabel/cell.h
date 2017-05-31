//
//  cell.h
//  multilineLabel
//
//  Created by Mshc on 31/05/17.
//  Copyright © 2017 mshc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *lblMultiline;
@property (strong, nonatomic) IBOutlet UILabel *lblStatus;
@property (strong, nonatomic) IBOutlet UILabel *lblDate;
-(void)setDataForIndex:(NSIndexPath* )index withData:(id)data;
@end
