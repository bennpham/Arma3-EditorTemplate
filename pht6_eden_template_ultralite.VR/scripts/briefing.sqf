_color = ["GUI", "BCG_RGB"] call BIS_fnc_displayColorGet;
_htmlcolor = _color call BIS_fnc_colorRGBAtoHTML;

#define __color_link(marker, text) "<font color='" + _htmlcolor + "'><marker name='" + marker + "'>" + text + "</marker></font>"
#define __color_text(text) "<font color='" + _htmlcolor + "'>" + text + "</font>"
#define __color_clink(colour, marker, text) "<font color='" + colour + "'><marker name='" + marker + "'>" + text + "</marker></font>"
#define __color_ctext(colour, text) "<font color='" + colour + "'>" + text + "</font>"

/* Briefing
 * The briefing can be defined by calling FHQ_TT_addBriefing.
 * The array is built like this.
 * The first element should be a filter (side, group, faction, or a piece of script)
 * This is followed by pairs of strings, a head line, and an actual text.
 * Briefings are added in the order in which they appear for any unit that matches
 * the last filter.
 */
[
	{true}, 
		["Mission",
			"."],

		["Situation",
			"."],

		["Test", 
			"This is how to make a new line.<br/>"
		+ 	"New line here. Now for double new lines.<br/><br/>"
		+	__color_ctext("#FF8000", "This line is orange") + ". Now it is white.<br/><br/>"
		+	__color_text("This is default color text") + "<br/>"
		+	__color_link("obj1", "Click to go to obj 1 marker") + "<br/><br/>"
	
		+	"Best to make a marker link with a " + __color_clink("#00FF00", "obj2", "nice color")
		+	" so people can tell that the marker link is clickable."],

		["Credit",
			"Alwarren and Varanon for all of the FHQ scripts."]
    
] call FHQ_fnc_ttAddBriefing;

[
	{true},                                                          
    	["task1",						// Task name
         "Task 1 Description.<br/><br/>Destroy the ammobox.",				       	// Task text in briefing
         "Task 1 Title",						// Task title in briefing
         "obj1",							// Waypoint text
		 getmarkerpos "obj1"			// Optional: Position or object
        ],
    	["task2",						// Task name
         "Task 2 Description.<br/><br/>Destroy the Ifrit.",				       	// Task text in briefing
         "Task 2 Title",						// Task title in briefing
         "obj2",							// Waypoint text
         getmarkerpos "obj2"			// Optional: Position or object
        ]
] call FHQ_fnc_ttAddTasks;