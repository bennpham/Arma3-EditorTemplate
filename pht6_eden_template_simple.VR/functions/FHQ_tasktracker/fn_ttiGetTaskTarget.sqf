#define FHQ_TTIF_TASKNAME	0
#define FHQ_TTIF_TASKDESC	1
#define FHQ_TTIF_TASKTITLE	2
#define FHQ_TTIF_TASKWP		3
#define FHQ_TTIF_TASKTARGET	4
#define FHQ_TTIF_TASKSTATE	5

/* Might not be present */
_res = "";
    
if (count _this > FHQ_TTIF_TASKTARGET) then {

    _thing = _this select FHQ_TTIF_TASKTARGET;
    /* A string means it's the initial state, so if it's not, it's either
     * a position (array) or target (object)
     */
    switch (typename _thing) do {
      	case "ARRAY": {
          	_res = nil;
            _res = _thing;
        };
        case "OBJECT": {
            _res = nil;
            _res = _thing;
        };
   	};
};
    
_res;                
