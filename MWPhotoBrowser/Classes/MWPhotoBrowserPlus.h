//
//  MWPhotoBrowserPlus.h
//
//  Created by Ramesh on 2/8/15.
//

#import "MWPhotoBrowser.h"

@interface MWPhotoBrowserPlus : MWPhotoBrowser
@property (nonatomic) BOOL showsEditControls;
- (void)photoBrowserEditButtonTappedOnPhoto:(id<MWPhoto>)photo;
@end
