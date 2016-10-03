#import <Foundation/Foundation.h>

// This module is not Thread-safe; You should make sure
// to always call it from the same thread.
// All these calls are blocking.

// Call before calling any of the functions below
void YDL_initialize();


// Downloading of videos, require a global progress function
typedef void (^YDL_progressUpdate)(NSDictionary *updateData);
void YDL_setProgressCallback(YDL_progressUpdate callback);
void YDL_downloadVideo(NSURL *url, NSURL *filePath);

// Extracting playlist data, can accept local progress
void YDL_playlistDataForUrl(NSURL *url, YDL_progressUpdate callback);
