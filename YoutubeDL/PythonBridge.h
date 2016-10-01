#import <Foundation/Foundation.h>

// This module is not Thread-safe; You should make sure
// to always call it from the same thread.
// All these calls are blocking.

// Call before calling any of the functions below
void YDL_initialize();

NSDictionary *YDL_playlistDataForUrl(NSURL *url);
NSURL *YDL_downloadVideo(NSString *url);
