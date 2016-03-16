#define INTERNAL_FUNCTION(x)				\
	class x									\
	{										\
		description = "Internal Function";	\
	};

#define EXPORTED_FUNCTION(x,y)				\
	class x									\
	{										\
		description = y;					\
	};

class FHQ
{
	#include "FHQ_tasktracker\FHQ_tasktracker.hpp"
};