/obj/item/weapon/book/manual/solgov_law
	name = "Sol Central Government Law"
	desc = "A brief overview of SolGov Law."
	icon_state = "bookSolGovLaw"
	author = "The Sol Central Government"
	title = "Sol Central Government Law"

/obj/item/weapon/book/manual/solgov_law/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wikiurl]index.php?title=�����_����&printable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}


/obj/item/weapon/book/manual/military_law
	name = "The Sol Code of Military Justice"
	desc = "A brief overview of military law."
	icon_state = "bookSolGovLaw"
	author = "The Sol Central Government"
	title = "The Sol Code of Military Justice"

/obj/item/weapon/book/manual/military_law/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wikiurl]index.php?title=������-�����������_������_���&printable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/weapon/book/manual/sol_sop
	name = "Standard Operating Procedures"
	desc = "SOP aboard the NES Sierra."
	icon_state = "booksolregs"
	author = "The Sol Central Government"
	title = "Standard Operating Procedure"

/obj/item/weapon/book/manual/sol_sop/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wikiurl]index.php?title=�����������_���������_����&printable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/weapon/book/manual/nt_sop
	name = "NT Standard Operating Procedures"
	desc = "SOP aboard the NSV Sierra."
	icon = 'icons/obj/library_inf.dmi'
	icon_state = "bookNTsop"
	author = "Employee Materials"
	title = "Standard Operating Procedure"

/obj/item/weapon/book/manual/nt_sop/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wikiurl]index.php?title=�����������_���������_��&printable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/weapon/book/manual/nt_tc
	name = "NT Threat Codes"
	desc = "TC aboard the NSV Sierra."
	icon = 'icons/obj/library_inf.dmi'
	icon_state = "bookNTtc"
	author = "Ship Rule Materials"
	title = "Threat Codes"

/obj/item/weapon/book/manual/nt_tc/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wikiurl]index.php?title=����_������_��&printable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/weapon/folder/nt/rd

/obj/item/weapon/folder/envelope/blanks
	desc = "A thick envelope. The Nanotrasen logo is stamped in the corner, along with 'CONFIDENTIAL'."

/obj/item/weapon/folder/envelope/blanks/Initialize()
	. = ..()
	new/obj/item/weapon/paper/blanks(src)

/obj/item/weapon/paper/blanks
	name = "RE: Regarding testing supplies"
	info = {"
	<tt><center><b><font color='red'>CONFIDENTIAL: UPPER MANAGEMENT ONLY</font></b>
	<h3>NANOTRASEN RESEARCH DIVISION</h3>
	<img src = ntlogo.png>
	</center>
	<b>FROM:</b> Hieronimus Blackstone, Overseer of sierra Cooperation Project<br>
	<b>TO:</b> Research Director of NES Sierra branch<br>
	<b>CC:</b> Liason with SCG services aboard NES Sierra<br>
	<b>SUBJECT:</b> RE: Testing Materials<br>
	<hr>
	We have reviewed your request, and would like to make an addition to the list of needed materials.<br>
	As we hold very high hopes for this branch, it would be only right to provide our scientists with the most accurate testing environment. And by that we mean the living human subjects. Our Ethics Review Board suggested a workaround for that pesky 'consent' requierment.<br>
	In the Research Wing you should find a small section labeled 'Aux Custodial Supplies'. Inside we have provided several mind-blank vatgrown clones. Our Law Special Response Team so far had not found SCG legislation that explicitly forbids their use in research.<br>
	They come in self-contained life support bags, with additional measures to make them easier to use for, let's say, more sensitive personnel. As our preliminary study showed, 75% more subjects were more willing to harm a (consenting) intern if their face was fully hidden.<br>
	We are expecting great results from this program. Do not disappoint us.<br>
	<i>H.B.</i></tt>
	"}

/obj/item/weapon/paper/liason_note
	name = "note"
	info = {"
	<i>First - pill, second - bullet. No surrender.<br>
	H.B.</i>
	"}

/obj/item/weapon/folder/envelope/captain
	desc = "A thick envelope. The SCG crest is stamped in the corner, along with 'TOP SECRET - sierra UMBRA'."

/obj/item/weapon/folder/envelope/captain/Initialize()
	. = ..()
	var/obj/effect/overmap/sierra = map_sectors["[z]"]
	var/memo = {"
	<tt><center><b><font color='red'>SECRET - CODE WORDS: sierra</font></b>
	<h3>SOL CENTRAL GOVERNMENT EXPEDITIONARY COMMAND</h3>
	<img src = sollogo.png>
	</center>
	<b>FROM:</b> ADM William Lau<br>
	<b>TO:</b> Commanding Officer of NES Sierra<br>
	<b>SUBJECT:</b> Standing Orders<br>
	<hr>
	Captain.<br>
	Your orders are to visit the following star systems. Keep in mind that your supplies are limited; ration exploration time accordingly.
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[GLOB.using_map.system_name]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<br>
	Priority targets are artifacts of uncontacted alien species and signal sources of unknown origin.<br>
	None of these systems are claimed by any entity recognized by the SCG, so you have full salvage rights on any derelicts discovered.<br>
	Investigate and mark any prospective colony worlds as per usual procedures.<br>
	There is no SCG presence in that area. In case of distress calls, you will be the only vessel available; do not ignore them. We cannot afford any more PR backlash.<br>
	The current docking code is: [sierra.docking_codes]<br>
	Report all findings via bluespace comm buoys during inter-system jumps.<br>

	<i>ADM Lau.</i></tt>
	<i>This paper has been stamped with the stamp of SCG Expeditionary Command.</i>
	"}
	new/obj/item/weapon/paper(src, memo, "Standing Orders")

	new/obj/item/weapon/paper/umbra(src)

/obj/item/weapon/folder/envelope/rep
	desc = "A thick envelope. The SCG crest is stamped in the corner, along with 'TOP SECRET - UMBRA'."

/obj/item/weapon/folder/envelope/rep/Initialize()
	. = ..()
	new/obj/item/weapon/paper/umbra(src)

/obj/item/weapon/paper/umbra
	name = "UMBRA Protocol"
	info = {"
	<tt><center><b><font color='red'>TOP SECRET - CODE WORDS: sierra UMBRA</font></b>
	<h3>OFFICE OF THE SECRETARY GENERAL OF SOL CENTRAL GOVERNMENT</h3>
	<img src = sollogo.png>
	</center>
	<b>FROM:</b> Johnathan Smitherson, Special Aide of the Secretary General<br>
	<b>TO:</b> Commanding Officer of the NES Sierra<br>
	<b>CC:</b> Special Representative aboard the NES Sierra<br>
	<b>SUBJECT:</b> UMBRA protocol<br>
	<hr>
	This is a small addendum to the usual operating procedures. Unlike the rest of SOP, this is not left to the Commanding Officer's discretion and is mandatory. As unconventional as this is, we felt it is essential for smooth operation of this mission.<br>
	Procedure can be initiated only by transmission from SCG Expeditionary Command via secure channel. The sender may not introduce themselves, but you shouldn't have trouble confirming the transmission source, I believe.<br>
	The signal to initiate the procedure are codewords 'GOOD NIGHT WORLD' used in this order as one phrase. You do not need to send acknowledgement.
	<li>Information about this expedition's findings is to be treated as secret and vital to SCG's national security, and is protected under codeword UMBRA. Only SCG government employees, NT personnel and Skrell citizens aboard the NES Sierra are allowed access to this information on a need-to-know basis.</li>
	<li>The secrecy of this information is to be applied retroactively. Any non-cleared personnel who were exposed to such information are to be secured and transferred to DIA on arrival at home port.</li>
	<li>Any devices capable of transmitting data on interstellar range are to be confiscated from private possession.</li>
	<li>Disregard any systems remaining in your flight plan and set course for Sol, Neptune orbit. You will be contacted upon your arrival. Do not make stops in ports on the way unless absolutely necessary.</li>
	<br>
	While drastic, I assure you this is a simple precaution, lest any issues. Just keep the option open, and carry on with your normal duties.
	<i>Regards, John.</i></tt>
	<i>This paper has been stamped with the stamp of Office of the General Secretary of SCG.</i>
	"}