//
//  cell.m
//  multilineLabel
//
//  Created by Mshc on 31/05/17.
//  Copyright © 2017 mshc. All rights reserved.
//

#import "cell.h"

@implementation cell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.selectionStyle = UITableViewCellEditingStyleNone;
    _lblMultiline.numberOfLines = 0;
    _lblMultiline.preferredMaxLayoutWidth = _lblMultiline.frame.size.width;
    _lblMultiline.lineBreakMode = NSLineBreakByWordWrapping;
    [_lblMultiline layoutIfNeeded];
    [_lblMultiline setNeedsLayout];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setDataForIndex:(NSIndexPath* )index withData:(id)data{
    _lblMultiline.text = [data objectAtIndex:index.row];
    _lblDate.text = @"date";
    _lblStatus.text = @"status";
}

@end
