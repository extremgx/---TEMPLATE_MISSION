waitUntil {!isNull player && player == player};

player createDiarySubject ["thecrazylegendarys","The Crazy Legendarys"];
player createDiarySubject ["briefing","Briefing"];
player createDiarySubject ["credits","Credits"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/	
	
	player createDiaryRecord ["briefing",
		[
			"Communication", 
				"
				It is important to keep in contact with your team mates. Commander Kelly will update each squad with positions of enemy/friendly forces. Obviously you have to follow his and your Squad-Leaders orders! If communication is not possible any more, stick to the plan and execute it soldier. RTB when your job is done.
				"
		]
	];
	
	player createDiaryRecord ["briefing",
		[
			"Mission", 
				"
				 Our mission is to infiltrate and destroy the <marker name='OPFORHQ'>NUCLEAR FACILITY</marker>. The BLUFOR Navy will support us with <marker name='a10s'>A-10s</marker>. They will lead the strike against the enemy tanks.<br/>Our biggest problem is to destroy the facility without causing a atomic disaster. The only way this will work is to secure the nuclear materials, transport it to the <marker name='DROPOFF'>DROP OFF POINT</marker> in our base and then destroy the facility.<br/>Our explosive specialist will place explosive charges to destroy the building. But first of all our attack squad has to secure the facility. We have to make sure that no civilians will be hurt.<br/>If the nuclear materials take damage, this mission could end in a disaster.
				"
		]
	];
	
	player createDiaryRecord["briefing",
		[
			"Situation",
				"
				The last mission was a huge success gentleman. The Intel we gathered revealed an OPFOR nuclear facility.<br/>According to the Intel they are building nuclear weapons. The facility is guarded heavily. Our drones spotted tanks, large amounts of infantry and a well build base.<br/>The BLUFOR Navy will help us attack the base. Never the less we will have a hard fight. 	
				"
		]
	];
	
	player createDiaryRecord ["briefing",
		[
			"Support", 
				"
				 The A-10s will help break through the heavy enemy tank lines:<br/><marker name='cp1'>Checkpoint 1</marker><br/><marker name='cp2'>Checkpoint 2</marker><br/><marker name='cp3'>Checkpoint 3</marker><br/> <br/>Friendlies will support us with transport. The use of artillery is not an option, because in this small area we need precision. 
				"
		]
	];
	
// The Crazy Legendarys
	player createDiaryRecord ["thecrazylegendarys",
		[
			"Teamspeak",
				"
				You can find our Teamspeak at:<br/>
				altis.thecrazylegendarys.eu<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["thecrazylegendarys",
		[
			"Website/Forums",
				"
				Blog:<br/>
				www.thecrazylegendarys.eu/<br/>
				<br/>
				Forum:<br/>
				forum.thecrazylegendarys.eu/<br/>
				"
		]
	];
	
	player createDiaryRecord["credits",
		[
			"Credits",
				"
				Thanks to the mod-makers of the great mods we used:<br/>
				ACRE TEAM - 			<t align='right'> ACRE 2 </t><br/>			
				CBA Team - 				<t align='right'> CBA A3 </t><br/>
				LordJarhead - 			<t align='right'> JSRS 2.1 </t><br/>
				Alduric - 				<t align='right'> ARMA 3 MapPack </t><br/>
				KoffeinFlummi - 		<t align='right'> AGM </t><br/>
				Tonic - 				<t align='right'> VAS </t><br/>
				Titi and McKeewa - 		<t align='right'> CJTF101 Editor </t><br/>
				NorX_Aengell - 			<t align='right'> XENO Taru Pod Mod </t><br/>
				
				"
		]
	];
	