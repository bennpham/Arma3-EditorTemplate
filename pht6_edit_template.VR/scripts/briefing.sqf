/* Briefing
 * The briefing can be defined by calling FHQ_TT_addBriefing.
 * The array is built like this.
 * The first element should be a filter (side, group, faction, or a piece of script). All units matching the 
 * filter will see the briefing
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
"This is how to make a new line.<br/>
New line here. Now for double new lines.<br/><br/>

<font color = '#FF8000'>This line is orange</font>. Now it is white.<br/><br/>

<marker name = 'obj1'>Click to go to obj 1 marker</marker>.<br/><br/>

Better to make marker link <font color = '#00FF00'><marker name = 'obj2'>colorful</marker></font> so 
that people can tell that the marker link is clickable."],

		["Credit",
"Alwarren and Varanon for all of the FHQ scripts."]
    
] call FHQ_TT_addBriefing;

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
] call FHQ_TT_addTasks;