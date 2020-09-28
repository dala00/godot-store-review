#include <version_generated.gen.h>

#if VERSION_MAJOR == 3
#include <core/class_db.h>
#include <core/engine.h>
#else
#include "core/globals.h"
#include "object_type_db.h"
#endif

#include "ios/src/godotStoreReview.h"
#include "register_types.h"

void register_review_types() {
#if VERSION_MAJOR == 3
	Engine::get_singleton()->add_singleton(Engine::Singleton("StoreReview", memnew(GodotStoreReview)));
#else
	Globals::get_singleton()->add_singleton(Globals::Singleton("StoreReview", memnew(GodotStoreReview)));
#endif
}

void unregister_review_types() {
}
