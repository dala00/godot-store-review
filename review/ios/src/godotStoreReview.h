#ifndef GODOT_ADMOB_H
#define GODOT_ADMOB_H

#include <version_generated.gen.h>

#include "reference.h"

class GodotStoreReview : public Reference {

#if VERSION_MAJOR == 3
	GDCLASS(GodotStoreReview, Reference);
#else
	OBJ_TYPE(GodotStoreReview, Reference);
#endif

	static GodotStoreReview *instance; //fix

protected:
	static void _bind_methods();

public:
	void requestReview();

	GodotStoreReview();
	~GodotStoreReview();
};

#endif
