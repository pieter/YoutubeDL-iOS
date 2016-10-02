#import <Foundation/Foundation.h>

// This module is not Thread-safe; You should make sure
// to always call it from the same thread.
// All these calls are blocking.

// Call before calling any of the functions below
void YDL_initialize();

typedef void (^YDL_progressUpdate)(NSDictionary *updateData);

void YDL_setProgressCallback(YDL_progressUpdate callback);

NSDictionary *YDL_playlistDataForUrl(NSURL *url);
void YDL_downloadVideo(NSURL *url, NSURL *filePath);
