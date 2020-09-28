#import <StoreKit/StoreKit.h>
#include "godotStoreReview.h"
#import "app_delegate.h"

#if VERSION_MAJOR == 3
#define CLASS_DB ClassDB
#else
#define CLASS_DB ObjectTypeDB
#endif

GodotStoreReview *GodotStoreReview::instance = NULL; //<< INIT NULL VAR ON COMPILE TIME!

GodotStoreReview::GodotStoreReview() {
    ERR_FAIL_COND(instance != NULL); //<< SUCCESS!!! FIRST

    instance = this;
}

GodotStoreReview::~GodotStoreReview() {
   if (instance == this) {
       instance = NULL;
   }
}

void GodotStoreReview::requestReview() {
	NSLog(@"Calling requestReview");

    if (instance != this) {
        NSLog(@"GodotStoreReview Module dublicate singleton");
        return;
    }

	if (@available(iOS 10.3, *)) {
		if ([SKStoreReviewController class]) {
			[SKStoreReviewController requestReview];
		} else {
			NSLog(@"SKStoreReviewController not found");
		}
	} else {
		NSLog(@"SKStoreReviewController not found for this version");
	}
}

void GodotStoreReview::_bind_methods() {
    CLASS_DB::bind_method("requestReview", &GodotStoreReview::requestReview);
}
