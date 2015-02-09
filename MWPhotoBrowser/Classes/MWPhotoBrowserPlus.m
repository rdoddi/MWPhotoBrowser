//
//  MWPhotoBrowserPlus.m
//
//  Created by Ramesh on 2/8/15.
//

#import "MWPhotoBrowserPlus.h"

// Make required methods of MWPhotoBrowser as non-private
@interface MWPhotoBrowser (ramesh)
- (id<MWPhoto>)photoAtIndex:(NSUInteger)index;
- (void)performLayout;
@end

@interface MWPhotoBrowserPlus ()
@property (nonatomic, strong) UIBarButtonItem *editButton;
@end

@implementation MWPhotoBrowserPlus

- (void)viewDidLoad {
    
    if (self.showsEditControls) {
        _editButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Edit", nil)
                                                       style:UIBarButtonItemStylePlain
                                                      target:self
                                                      action:@selector(editButtonTapped)];
    }
    
    [super viewDidLoad];
}

- (void)performLayout {
    
    // First perform the detault layout
    [super performLayout];
    
    // Customize toolbar if needed
    if (self.editButton) {
        for (UIView *subview in [self.view subviews]) {
            if ([subview isKindOfClass:[UIToolbar class]]) {
                UIToolbar *toolbar = (UIToolbar *)subview;
                UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
                NSMutableArray *items = [[toolbar items] mutableCopy];
                [items insertObject:self.editButton atIndex:0];
                [items insertObject:flexSpace atIndex:1];
                [toolbar setItems:items];
                break;
            }
        }
    }
}

- (void)editButtonTapped {
    id<MWPhoto> photo = [super photoAtIndex:super.currentIndex];
    [self photoBrowserEditButtonTappedOnPhoto:photo];
}

- (void)photoBrowserEditButtonTappedOnPhoto:(id<MWPhoto>)photo {
    NSAssert(YES, @"Client application must override this method and handle edit action !");
}

@end
