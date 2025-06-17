#set page(
  paper: "a5",
  //width: 15.1175cm, height: 21.635cm,
  margin: (x: 1.4cm),
  //margin: (top: 2.0175cm, bottom: 2.0175cm, inside: 1.4cm, outside: 1.7175cm),
  columns: 1,
  binding: left
  // bleed: 8th inch top bottom outside, NOT inside
  // 5.827" x 8.268" TRIM size on DTRPG
)

// 4th inch = 0.635 cm
// 8th inch = 0.3175 cm

#set text(
  font: "Vollkorn",
  size: 11pt
)

#show link: underline

//#show heading.where(level: 1): set text(size: 58pt, font: "New Computer Modern Uncial")
//#show heading.where(level: 2): set text(size: 16pt, font: "New Computer Modern Uncial")
#show heading.where(level: 1): set text(size: 38pt, font: "Metal Mania")
#show heading.where(level: 2): set text(size: 17pt, font: "Metal Mania")

#let pageref(label) = context {
  let loc = locate(label)
  let nums = counter(page).at(loc)
  link(loc, numbering(loc.page-numbering(), ..nums))
}

#let stripe_color = rgb(210,210,255)

#page(
  background: image("images/Émile Beau design-shroud-1600.jpg", fit: "cover", width: 108%)
)[
#place(top + center, dy: +27pt)[
  #image("images/cover_logo.svg", width: 75%)
]]

#page(background: image("images/Caspar David Friedrich - Statue of the Madonna in the Mountains left.png", fit: "stretch", width: 101%))[

_Eldritch Instinct_ is an adventure game for one  Warden and one or more players who act as investigators of the strange and unexplained. As a player, you will take on delusional cultists, hide from stalking shadows and face terrifying monstrosities.

Brace yourself for a blend of cosmic horror and adrenaline-pumping action in which _you_ do the investigating, not your character. Hunt down forbidden knowledge in your quest to foil the sinister Mythos agenda. //Some mechanics take full effect in longer campaigns, but serve one-shots just as well.

The Cthulhu Mythos is a collection of stories, including "The Dunwich Horror" and "The Shadow Over Innsmouth," originally conceived by H.P. Lovecraft in the 1920s. Since then, many authors, directors, artists and scenario designers have contributed to the Mythos.

#align(center)[#line(length: 65%, stroke: 0.3pt)]

#text(size: 9pt)[
  Written by Linus Weber. The _Eldritch Instinct_ SRD is licensed under #link("https://creativecommons.org/licenses/by-sa/4.0/")[CC BY-SA 4.0] and is derived from Yochai Gal’s #link("https://cairnrpg.com")[_Cairn_] SRD (cairnrpg.com).
  
  Images from #link("https://www.oldbookillustrations.com/")[oldbookillustrations.com]. Artists in order of appearance: Émile Beau, Arthur Rackham, Caspar David, Frederic Edwin Church, Frederick Catherwood, Hablot Knight Browne, Gustave Doré, Sidney Paget, George Houseman Thomas, Arthur Rackham, John Tenniel, Hubert Robert and Alphonse de Neuville.]

#align(center+bottom, link("https://eldritchinstinct.com")[
#text(fill: white)[*eldritchinstinct.com*]
])
#align(center)[#text(fill: white)[Version 1.0 #sym.circle.filled.small June 2025]]

#pagebreak()
]

#page(background: image("images/Caspar David Friedrich - Statue of the Madonna in the Mountains right.png", fit: "stretch", width: 101%))[

#outline(depth: 2, indent: auto)
]

#counter(page).update(1)
#set page(numbering: "1")

== Overview

The following principles informed the design of _Eldritch Instinct_:

#grid(
  columns: (auto, auto),
  inset: 3pt,
  gutter: 8pt,
  [=== Assumed Competence], [Player characters are capable investigators able to stand up to servants of the Mythos.],
  [=== External Interaction], [You interact with the game world not through abstract mechanics, but by asking what your investigator can perceive and describing your investigator's actions.],
  [=== Immersion], [The rules, or the absence thereof, should help players immerse themselves in the game world and create verisimilitude where it matters.],
  [=== Roll-Play], [Mechanics should create tense and exciting situations both in and out of the game and force players to make tough choices. They are not meant to simulate reality.],
  [=== Fail Forward], [Players roll saves to avoid complications in risky situations. A complication does not necessarily mean you do not succeed.],
  [=== Neutrality], [The Warden’s role is to act as a neutral arbiter and portray the game's rules, world and non-player characters (NPCs) clearly.],
  [=== Rulings], [This book is a set of tools to experiment and play with, not authoritative rules for how you must play your game.],
)

#pagebreak()

== Principles for Players

=== Exploration
- Asking questions and listening to detail is more useful than any stats, items or skills you have.
- Take the Warden's description without suspicion, but don't shy away from seeking more information.

=== Talking
- Treat NPCs as if they were real people. When you're asking for a favor, consider the stakes, their goals, your reputation and your leverage over them.
- NPCs don’t always tell the whole truth. Your Warden should give hints, but who you do and do not trust is ultimately your decision.

=== Atmosphere
- Prepare to die; combat is extremely quick and violent. Make your last moments count and revel in your investigator's tragic demise.
- Use your investigator's occupation to inform the way you approach situations and describe your investigator's actions.

=== Planning
- Think of ways to avoid obstacles and stack the odds in your favor through reconnaissance, subtlety, and fact-finding.
- Keep notes to help you remember details from your investigation.

=== Agency
- Don't ask only what your investigator would do; ask what _you_ would do, too.
- Be creative with your intuition, items, and connections.

=== Teamwork
- Seek consensus from the other players before barreling forward.
- Stay on the same page about goals and limits, respecting each other and accomplishing more as a group than alone.

#pagebreak()

== Principles for Wardens

=== Information
- Provide useful information about the game world as the investigators explore it and present threads that the players can pull on to uncover more information.
- Tailor your answers to the investigator's occupation: a doctor would pick up on different details than a police officer or a journalist.
- Players do not need to roll dice to learn about their circumstances.
- Respond honestly, describe consistently, and always let them know they can keep asking questions.
- Telegraph serious danger to players when it is present. The more dangerous something is, the more obvious the danger should be.

=== Rolls
- Is what a player describes and how they leverage the situation sensible? Let it happen. Reward clever ideas and creative use of equipment or the environment.
- Ask for saves to introduce interesting complications in intense situations, not to see whether an investigator is able to do something.

=== Motivations
- NPCs act independently of the investigators and are guided by their own motivations. They remember what the investigators say and do and how they affect the world.
- NPCs and even monsters don't want to die. Infuse their own self-interest and will to live into every personality.

=== Narrative Focus
- Pay attention to the needs and wants of the players, then put realistic opportunities in their path.
- Let every investigator be useful in their own way. Allow each of them to leverage their occupation.
- Ensure that the investigators' actions leave their mark on the world.

=== Questions
- Ask the investigators questions like: "What is going on in your head? How does that make you feel? How do you respond? What are you doing? What should be done about this?"
- Employ Jason Cordova's #link("https://www.gauntlet-rpg.com/blog/paint-the-scene")[Paint The Scene] technique: "if there is an idea, theme, or visual motif that is particularly important for an encounter or scene, ask the players what their characters observe in the scene that reinforces that idea, theme, or motif."
- At the end of each session, ask everyone at the table to recount a memorable moment in the game or commend another player for a cool idea or great role-playing. Then, ask everyone what they would like to see in future sessions (see Lu Quade's #link("https://www.gauntlet-rpg.com/blog/stars-and-wishes")[Stars and Wishes]).
- Conclude scenarios with an epilogue where each player gets to frame a short scene about their investigator after the events of the scenario.

=== Pacing
- If the players are taking too long to solve a problem, have a monster or NPC escalate the situation in keeping with their motivation.
- During tense situations, keep up the time pressure in real life as well. Demand quick answers during a fight or chase, or use sand timers to limit how long the players get to plan before the monster finds them.
- "Jump cut" between players when they are separated to keep players involved, and "fade out" of scenes when nothing new is happening to keep the game moving.
- Make sure to leave space for interaction between investigators.

=== Expectations
- Before playing, establish shared expectations using P. R. O'Leary's #link("https://proleary.com/2016/04/25/the-cats-method-a-story-telling-game-opening-ritual")[CATS method], which stands for Concept, Aim, Tone and Subject Matter. (At only 200 words, the article is well worth reading.)
- Prepare a strong introduction for your session to pull your players into the game world and set an example for how they should act.
- Your goal is not to scare your players, but to create an immersive, eerie atmosphere and build tension.

#pagebreak()

== Character Creation

=== Name & Occupation

Choose or roll for your investigator's name and occupation (see tables on p. #pageref(<chargen_tables>)). Your occupation informs your knowledge and potential skills. Note that investigators do not hold positions of power.

=== Invent Details

+ _Age_: Decide how old your investigator is. To roll for your age, you can roll a d4 for the tens digit and a d10 for the ones digit, then add 7.
+ _Speciality_: After you choose or roll your occupation, make up one detail about your workplace or area of expertise.
+ _Contact_: Invent one NPC you trust and who helps you with favors such as research, translation or transport.
+ _Appearance_: Make up one detail about your face, hair or clothes.

=== Attributes

Player characters (PCs) have three attributes that range from 3 to 18: *Strength (STR)*, *Dexterity (DEX)*, and *Willpower (WIL)*. 

Roll three six-sided dice (3d6) to determine each of your character’s attributes, in order. You may then swap any two of the results.

=== Hit Protection

A PC’s ability to avoid damage in combat through skill, stamina and luck is reflected by their *Hit Protection (HP)*. Each PC starts with 5 HP.

=== Magic Points

You start with *Magic Points (MP)* equal to your WIL and regenerate 1 MP per hour in the game world. You can spend MP to cast spells.

=== Mythos Knowledge

Each PC starts with 0 *Mythos Knowledge (MK)* and gains more through encounters with the Mythos and by studying tomes. You can spend 5 MK to re-roll a damage roll or save (unless it is a critical fail).

=== Inventory

Characters have 9 inventory slots.
+ Most items, such as a magazine or a flashlight, take up one slot; small items can be bundled together.
+ *Bulky* items take up 2 slots and tend to be awkward to carry. Bulky weapons must be wielded in two hands.
+ *Very Heavy* objects such as an injured character fill all your remaining inventory slots.

Anyone carrying a full inventory (that is, filling all 9 slots) is reduced to 0 HP. A character cannot carry more items than their inventory allows.

Because carrying bulky weapons tends to raise suspicion, it is generally assumed that PCs keep their bulky weapons hidden in their car or at home unless the players say otherwise.

If you have a gun, divide the circle labeled *Magazine* on your character sheet into a number of sections equal to the weapon's Shots value. A loaded magazine does not count towards the inventory limit.

=== Starting Gear

All PCs begin with two items from the *Gear Table* (p. #pageref(<gear_table>)) and any other items as the Warden sees fit depending on the PC's occupation and the scenario. The PC with the lowest attribute starts with a source of light.

#place(center, dx: -30pt, dy: +35pt)[
    #image("images/clovis-dardentor-by-leon-benett-44-f55373_cut.png", width: 60%)
]
#place(right, dx: -81pt, dy: +40pt)[
  #image("images/holmes-revolver-1600-sidney-paget_cut.png", width: 10%)
]

#pagebreak()

=== Background and Relationships

First, write a short sentence about your character on the back of your character sheet. Then, pass it to the player on your right, who must add a sentence that defines their character's relationship to yours.

=== Bonds

Roll on the *Bonds* table four times to determine the four most significant things that tie your PC to this world. Use the results as a starting point to come up with a short and _specific_ sentence.

#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, 1fr),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { stripe_color },
  table.header(
    table.cell(colspan: 8, align: center)[#set text(fill: white, weight: "bold")
    === Bonds (d20)]
  ),
  [*1*], [Family], [*6*], [Sports], [*11*], [Music], [*16*], [Self-care],
  [*2*], [Work], [*7*], [Friend], [*12*], [Faith], [*17*], [Activism],
  [*3*], [Pet], [*8*], [Outdoors], [*13*], [Community], [*18*], [Going out],
  [*4*], [Partner], [*9*], [Travel], [*14*], [Daydreaming], [*19*], [Home],
  [*5*], [Literature], [*10*], [Art], [*15*], [Niche interest], [*20*], [Gardening]
)

=== Motivation

Investigators are confronted with life-threatening violence and mind-breaking revelations. _During play_, consider why your character would push on despite all of this. See the table below for inspiration.

#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { stripe_color },
  table.header(
    table.cell(colspan: 8, align: center)[#set text(fill: white, weight: "bold")
    === Motivation Ideas (d12)]
  ),
  [*1*], [Curiosity], [*4*], [Hubris], [*7*], [Responsibility], [*10*], [Power],
  [*2*], [Duty], [*5*], [Redemption], [*8*], [Salvation], [*11*], [Obligation],
  [*3*], [Fate], [*6*], [Destiny], [*9*], [Zealotry], [*12*], [Restlessness]
)

#pagebreak()

#table(
  columns: (auto, 1fr, auto, 1fr, auto, 1fr, auto, 1fr),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { stripe_color },
  table.header(
    table.cell(colspan: 8, align: center)[#set text(fill: white, weight: "bold")
    === Female Names (d20)]
  ),
  [*1*], [Mary], [*6*], [Ruth], [*11*], [Clara], [*16*], [Lillian],
  [*2*], [Anna], [*7*], [Florence], [*12*], [Bertha], [*17*], [Edna],
  [*3*], [Margaret], [*8*], [Ethel], [*13*], [Minnie], [*18*], [Grace],
  [*4*], [Helen], [*9*], [Emma], [*14*], [Bessie], [*19*], [Annie],
  [*5*], [Elizabeth], [*10*], [Marie], [*15*], [Alice], [*20*], [Mabel]
) <chargen_tables>

#table(
  columns: (auto, 1fr, auto, 1fr, auto, 1fr, auto, 1fr),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { stripe_color },
  table.header(
    table.cell(colspan: 8, align: center)[#set text(fill: white, weight: "bold")
    === Male Names (d20)]
  ),
  [*1*], [John], [*6*], [Joseph], [*11*], [Harry], [*16*], [Albert],
  [*2*], [William], [*7*], [Frank], [*12*], [Thomas], [*17*], [Clarence],
  [*3*], [James], [*8*], [Robert], [*13*], [Walter], [*18*], [Samuel],
  [*4*], [George], [*9*], [Edward], [*14*], [Arthur], [*19*], [Roy],
  [*5*], [Charles], [*10*], [Henry], [*15*], [Fred], [*20*], [Louis]
)

#table(
  columns: (auto, 1fr, auto, 1fr, auto, 1fr, auto, 1fr),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { stripe_color },
  table.header(
    table.cell(colspan: 8, align: center)[#set text(fill: white, weight: "bold")
    === Surnames (d20)]
  ),
  [*1*], [Smith], [*6*], [Davis], [*11*], [Anderson], [*16*], [Martin],
  [*2*], [Hopkins], [*7*], [Conway], [*12*], [Fink], [*17*], [Thompson],
  [*3*], [Williams], [*8*], [Wilson], [*13*], [Jackson], [*18*], [Garcia],
  [*4*], [Meyer], [*9*], [Moore], [*14*], [Brooks], [*19*], [Donahoe],
  [*5*], [Brown], [*10*], [Kennedy], [*15*], [Harris], [*20*], [Robinson]
)

#table(
  columns: (auto, 1fr, auto, 1fr, auto, 1fr, auto, 1fr),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { stripe_color },
  table.header(
    table.cell(colspan: 8, align: center)[#set text(fill: white, weight: "bold")
      === Occupation (d20)]
  ),
  [*1*], [Journalist], [*6*], [Priest], [*11*], [Scholar], [*16*], [Private Eye],
  [*2*], [Librarian], [*7*], [Sailor], [*12*], [Carpenter], [*17*], [Drifter],
  [*3*], [Custodian], [*8*], [Artist], [*13*], [Criminal], [*18*], [Pilot],
  [*4*], [Police], [*9*], [Bureaucrat], [*14*], [Author], [*19*], [Antiquarian],
  [*5*], [Doctor], [*10*], [Ranger], [*15*], [Farmer], [*20*], [Mechanic]
)

#pagebreak()

#table(
  columns: (auto, 1fr, auto, 1fr),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { stripe_color },
  table.header(
    table.cell(colspan: 4, align: center)[#set text(fill: white, weight: "bold")
      === Gear (d100)]
  ),
  [*0-1*], [Beverage], [*50-51*], [Matches],
  [*2-3*], [Umbrella], [*52-53*], [Painkillers],
  [*4-5*], [Sandwich], [*54-55*], [Glue],
  [*6-7*], [Cigarettes], [*56-57*], [Treats],
  [*8-9*], [Bottle of Water], [*58-59*], [Padlock & Chain (1 m)],
  [*10-11*], [Magnifying Glass], [*60-61*], [Makeup],
  [*12-13*], [Bandages], [*62-63*], [Rope (15 m)],
  [*14-15*], [Bible], [*64-65*], [Sewing Kit],
  [*16-17*], [Lantern], [*66-67*], [Chalk],
  [*18-19*], [Briefcase], [*68-69*], [Suit / Dress],
  [*20-21*], [Flashlight], [*70-71*], [Shovel],
  [*22-23*], [Newspaper], [*72-73*], [Book],
  [*24-25*], [Flare], [*74-75*], [Tools],
  [*26-27*], [Flute], [*76-77*], [Torch],
  [*28-29*], [Binoculars], [*78-79*], [Net],
  [*30-31*], [Harmonica], [*80-81*], [Playing Cards],
  [*32-33*], [Compass], [*82-83*], [Grappling Hook],
  [*34-35*], [Handkerchief], [*84-85*], [Watch],
  [*36-37*], [Bear Trap], [*86-87*], [Handcuffs],
  [*38-39*], [Suspenders], [*88-89*], [Pen and Paper],
  [*40-41*], [Tape Recorder], [*90-91*], [Whistle],
  [*42-43*], [Walking Stick], [*92-93*], [Marbles],
  [*44-45*], [Sack], [*94-95*], [Gloves],
  [*46-47*], [Camera], [*96-97*], [Oil (flask)],
  [*48-49*], [Candles], [*98-99*], [Lock Pick],
) <gear_table>

#pagebreak()

#table(
  columns: (2fr, auto, auto, 3fr),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { stripe_color },
  table.header(
    table.cell(colspan: 4, align: center)[#set text(fill: white, weight: "bold")
      === Weapons]
  ),
  [*Weapon*], [*Damage*], [*Shots*], [*Special*],
  [Magazine], "—", "—", [Occupies one inventory slot unless loaded.],
  [Unarmed], [1d4], "—", [],
  [Knife, Machete, Crowbar], [1d6], "—", [],
  [Colt M1911], [1d6], [6], [Spend 2 (or 3) shots to deal d6 + d6 (+ d6) damage.],
  [Stevens 311 Shotgun], [1d6], [2], [Bulky, Blast. Fire both barrels for d8+d8 damage.],
  [Fire Axe, Baseball Bat], [1d8], "—", [Bulky.],
  [Lee-Enfield Mk III], [1d8], [4], [Bulky. Enhanced when used as a sniper rifle and not under fire.],
  [Thompson Submachine Gun], [1d10], [3], [Bulky, spend 3 shots for Blast.],
  [.30 Browning Machine Gun], [1d12], [4], [Mounted, Very Heavy, Blast.],
  [Dynamite Stick], [1d6], [1], [Blast.],
  [Molotov Cocktail], [1d4], [1], [Blast, lasts d4 rounds.],
  [Frag Grenade], [1d10], [1], [Blast.],
  [Flamethrower], [1d8], [4], [Bulky, Blast.]
)

#pagebreak()

#page(background: image("images/Frederic Edwin Church  - View of Cotopaxi_left_color.png", fit: "cover", width: 101%), numbering: none)[
#pagebreak()
]

#page(background: image("images/Frederic Edwin Church  - View of Cotopaxi_right_color.png", fit: "cover", width: 101%), numbering: none)[
#pagebreak()
]

== Core Rules

=== Abilities

Each of the three abilities are used in different circumstances.

+ *Strength (STR)*: Used for saves requiring physical power, like lifting gates, climbing, restraining a person, etc.
+ *Dexterity (DEX)*: Used for saves requiring poise, speed, and reflexes like dodging, sneaking, balancing, etc.
+ *Willpower (WIL)*: Used for saves to endure horrors, provoke, resist manipulation of your thoughts, deceive, etc.

=== Saves

A save is a roll to avoid a complication that might result from a risky choice or situation. To make a save, roll a d20. If the result is _less than or equal to_ your most relevant attribute, you succeed. Otherwise, you fail.

A 1 is always a *critical success*, and a 20 is always a *critical fail*.

If two opponents are trying to overcome each other, both of them make a save. Whoever rolls the _highest_ number under or equal to their attribute wins the save. If both sides fail, the _highest_ result wins.

=== Difficulty

When a PC must make a save in a favorable or particularly difficult situation, don’t adjust the odds of success. Instead, limit or increase the impact of success or failure in the game world.

=== Healing

To restore your lost HP, rest for a few moments and take a drink of water. To restore your lost attribute points, take a couple weeks' rest in a safe place unless otherwise noted.

A PC *deprived* of a crucial need such as food or rest is unable to recover HP or lost attribute points.

=== Die of Fate

Occasionally you will want an element of randomness (for example, to determine the weather or if an item is available). In these situations, roll 1d6. A roll of 4 or more generally favors the players. A roll of 3 or under tends to mean bad luck for the PCs or their allies.

=== Agenda Clock
<agenda_clock>

Track the passage of time on the *Agenda Clock*#footnote[The Agenda Clock is based on the #link("https://goblinpunch.blogspot.com/2023/04/the-underclock-fixing-random-encounter.html")[Underclock] by Arnold K. of Goblin Punch.], represented using a d20. It starts at 20 and a complication occurs when it is reduced _below_ 0. Reset it to 20 after the complication is resolved.

A complication could be an encounter, an event, an environmental change or an advance in the evil agenda of the Mythos.

When a PC does something that takes _time_ or attracts _attention_, roll the *Agenda Die*, a d6, and subtract its result from the Agenda Clock.

The Agenda Die "explodes": that is, every time you roll a 6, immediately roll again and subtract the new result from the Agenda Clock as well.

Here are some examples of when to roll the Agenda Die:
#grid(
  columns: 2,
  gutter: 10pt,
  [
    - travelling to another location,
    - searching for something,
    - resting to restore lost HP,
    - doing research or reading tomes,],
  [
    - crafting or preparing a trap,
    - waiting to let time pass,
    - getting the authorities involved,
    - breaking open a door.]
)

When the Agenda Clock is reduced to 0 exactly, bump it back up to 3.

When the Agenda Clock is bumped up or reduced to 3 exactly, you either see a glimpse of the horror or a foreshadowing event for the next complication.

It is totally acceptable to delay the complication or foreshadowing for a little while to fit the scenario.

#pagebreak()

== Example of Play
<example_of_play>

Arlene Snow the Antiquarian and Rosalie Buck, a lookout for the mob, seek out a Mayan artifact at the Miskatonic Prehistorical Museum.

*Warden:* The sun has already set by the time you arrive at the museum. The doors are not locked, and inside you find a watchman keeping an eye on the entrance hall. [_Rolls 2d6 to determine the NPC’s reaction._] An 8! He looks at you curiously and says: “Excuse me, the museum is currently closed. Can I help you with anything?”

*Arlene:* [_Speaks in character:_] “Good evening, my name is Dr. Snow and I work for Miskatonic’s archaeology department. I’m here with my student assistant to check our catalog against the exhibits.”

*Warden:* As an antiquarian you certainly look the part. And the watchman is clearly out of his depth, but satisfied with your answer.

*Rosalie:* Quick, let’s find the Yaxuná casket.

*Warden:* You make an educated guess, Arlene, and head to the Yucatán section, where you spot the casket in its showcase in the center of a dimly lit exhibition room. There's another watchman here sitting slumped over his desk.

*Rosalie:* Does it look like the watchman is asleep?

*Warden:* As you approach the watchman silently, you recognize the sweet smell of chloroform.

*Arlene:* I'll quickly pry the showcase open with my screwdriver.

*Warden:* Make a DEX save. [_Arlene rolls a 19 against her 12 Dexterity, failing the save._] Right when you crack it open, a bell in the corner of the room starts to ring and you hear footsteps coming up the stairs.

*Arlene:* I put the casket in my bag and run down the corridor.

*Warden:* Alright, let’s do a chase then. Roll DEX against the watchman. [_Both fail._] You give it your all, but the watchman is catching up.

*Rosalie:* Let’s hide in one of the rooms, wait for him to run past and then go back the other way.

*Warden:* Sounds like a WIL save to me. [_Arlene fails, but Rosalie scores a critical success._] The watchman runs straight past Rosalie, but just notices Arlene’s bag sticking out behind the corner. There are a few rows of stanchions and ropes between you and the exit. Rosalie, you are already quite far ahead, do you want to help Arlene out?

*Rosalie:* Yes, I will hold up the last rope for Arlene to pass under.

*Warden:* Alright, but there’s a risk that he will get you both. [_Arlene fails again, but Rosalie succeeds._] Arlene is struggling to jump over the ropes, but with Rosalie's help you both make it out the front door while the watchman gets tangled up.

*Arlene:* “Thank you, Rosa! He almost got me.” What’s in the casket?

*Warden:* The amulet you were hoping to find appears to have been removed. Instead, you find what is undoubtedly another one of your husband’s fingers, ripped crudely off his hand.

#align(center, image("images/chichen-itza-1600_frederick_catherwood.jpg", width: 98%))

#pagebreak()

== Insight

=== Insight Saves

When you witness a monster or other horrifying evidence of the Mythos that pushes you to the brink of panic, make a WIL save. Monsters have an *INS* statistic that determines how much Insight you gain if you succeed (before the slash) or if you fail (after the slash); for example, the baseline INS for witnessing anything horrifying is 1/1d4.

#grid(
  columns: (2fr, 1fr),
  gutter: 4pt,
  [
    When you gain Insight, cross out the corresponding number of pips on your character sheet beginning at the 1 o’clock position and going clockwise. If you gain 5 or more Insight at once or if you cannot cross out enough Insight pips, make a *Panic Save*.
  ],
  [#image("images/insight-circle-4.PNG", width: 76%)]
)

=== Panic Saves

When you experience something mind-shatteringly dreadful, roll a d12. If the result corresponds to an empty Insight pip or a *Hardened* notch, you keep it together. If the result corresponds to a crossed-out pip or a *Broken* notch, you panic.

You or the Warden come up with a reaction for your character. The reaction should be disruptive and last for d4 rounds or a few minutes.

#table(
  columns: (auto, 1fr, auto, 1fr, auto, 1fr, auto, 1fr),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { stripe_color },
  table.header(
    table.cell(colspan: 8, align: center)[#set text(fill: white, weight: "bold")
    === Panic Effect Ideas (d12)]
  ),
  [*1*], [Frenzy], [*4*], [Possessed], [*7*], [Hubris], [*10*], [Obsessed],
  [*2*], [Run], [*5*], [Hysteria], [*8*], [Paranoid], [*11*], [Bad Idea],
  [*3*], [Freeze], [*6*], [Hide], [*9*], [Faint], [*12*], [Surrender]
)

After you’ve had a chance to calm down, make a WIL save. On a success, draw a permanent _square_ around an Insight pip starting at the 4 o'clock position going clockwise as your resolve is Hardened.

On a fail, _fill in_ an Insight pip starting at the 12 o'clock position going counter-clockwise as your resolve is Broken.

#pagebreak()

=== Broken

Pips with a Broken notch cannot be crossed out when gaining Insight. If you gain a Broken notch but you cannot fill in another Insight pip, you permanently lose control of your character. 

==== Hardened

PCs start with three Hardened notches from 1 to 3 o'clock. For every three Hardened notches you gain, you lose one of your bonds. At a reasonable point in time, narrate a small vignette describing your loss.

=== Delusions

If you’ve gained a Broken notch within the last 24 hours, the Warden might present you with a twisted version of reality, especially when you see a glimpse of the horror (see p. #pageref(<agenda_clock>)). You may attempt to see through what you believe to be delusions with a WIL save. On a success, the delusions stop. On a fail, they persist and you gain a Broken notch.

=== Getting Better

There are a number of possible ways to remove Broken notches.

*Self-help:* When you spend time with one of your bonds, make a WIL save. On a success, remove a Broken notch. Otherwise, lose your bond. On a critical fail, lose your bond and gain a Broken notch.\
*Sanatorium:* You may commit yourself to a sanatorium. At the end of each year, make a WIL save. On a success, remove a Broken notch. On a critical fail, gain a Broken notch.\
*Cover traces:* Once per scenario, if you have personally suppressed knowledge of the Mythos (such as by burning tomes or dealing with witnesses), remove a Broken notch on a successful WIL save.

#align(center, image("images/water-reptile-1600_gustave_dore_cut_fade.png", width: 95%)) 

#pagebreak()

== Mythos Knowledge

Investigators become more capable as they acquire Mythos Knowledge (MK) through encounters with the Mythos, including through studies of ancient tomes and ungodly scriptures.

Your Mythos Knowledge can prepare you to turn your luck around in risky circumstances. You can spend 5 MK to re-roll one of your damage rolls or saves, unless it is a critical fail. Keep the new result even if it is worse than the previous one.

=== Keeping a Journal

Once per scenario, you may turn up to 2d6 Insight into MK if you write a journal entry and get a good night’s rest.

When your Insight is removed in this way, clear the corresponding number of Insight pips, but keep your Hardened and Broken notches. Remaining Insight is removed at the Warden’s discretion, probably at the end of a scenario.

=== Tomes

You can acquire knowledge of the Mythos through the study of ancient tomes, most of which are written in unfamiliar languages and provide only a partial or inaccurate understanding of the Mythos.

When you read a tome during an ongoing scenario, you gain Insight equal to the tome's *Mythos Rating*, which is a value between 3 and 10. Further study during Downtime (p. #pageref(<downtime>)) directly increases your MK by the tome's Mythos Rating, but you also gain a Broken notch.

#place(center+bottom, dy: -0pt)[#image("images/chamber-mystery-1600-hablot-knight-browne_cut.png", width: 75%)]

#pagebreak()

=== Spells

When you cast a spell, which you can learn from studying certain tomes, you must pay its cost in Magic Points (MP) and spend the specified casting time. If you do not have sufficient MP, subtract the remaining cost from your STR instead. Additionally, you gain Insight or Broken notches from casting certain spells.

==== First Evocation

The first time you cast a particular spell, you must also make a WIL save. Even on a fail, the spell is cast, but all spell costs are multiplied by d4 and the Warden rolls on the *Miscast Table*.

#table(
  columns: (auto, 1fr, 1fr),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { stripe_color },
  table.header(
    table.cell(colspan: 3, align: center)[#set text(fill: white, weight: "bold")
    === Miscast Table (d8)]
  ),
  [*d8*], [*Lesser spells*], [*Greater spells*],
  [*1*], [Small or weak life forms wither and die.], [Mind shattering visions. Gain 6 Broken notches.],
  [*2*], [Unbearable stench.], [Your body and face contort permanently.],
  [*3*], [Moon and stars vanish or total solar eclipse.], [Devastating thunderstorm and tides.],
  [*4*], [Gusts of wind, rumbling, strange lights in the sky.], [Your eyes mutate as you are possessed.],
  [*5*], [Loud and horrible screams.], [Large and deep sinkholes form.],
  [*6*], [Your skin rots and forms pustules.], [Large area bursts into flames.],
  [*7*], [A Mythos creature is summoned.], [Gate to another planet opens.],
  [*8*], [Foul mist spreads around you.], [Everything dear to the caster is annihilated (contacts, bonds).],
)

#pagebreak()

== Investigation

=== Social

When the Warden is unsure how an NPC would react to the PCs, they may roll 2d6 and consult the following table:

#table(
  columns: (5 * (1fr,)),
  align: center,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { stripe_color },
  stroke: none,
  table.header(
    table.cell(colspan: 5)[#set text(fill: white, weight: "bold") 
    Reactions]
  ),
  [*2*], [*3-5*], [*6-8*], [*9-11*], [*12*],
  [Hostile], [Wary], [Curious], [Kind], [Helpful]
)

When the investigators ask for a favor or information from an NPC, consider the following factors:

#grid(
  columns: (auto, auto),
  inset: 3pt,
  gutter: 8pt,
  [*Stakes*], [Do the PCs ask for a lot or just a small favor? Could this get the NPC in trouble?],
  [*Motivation*], [Does the PCs' proposition align with what the NPC wants? What will the NPC receive in return?],
  [*Respect*], [Does the NPC personally respect the PCs? Do they have a good reputation?],
  [*Leverage*], [Do the PCs present anything that forces the NPC's hand? Are they blackmailing the NPC?],
)

#align(center)[
  #grid(
    columns: 2,
    gutter: -20pt,
    inset: -8pt,
    
    [#move(dy: 8pt)[#image("images/sop-cerberus-1600-george-houseman-thomas_cut.png", width: 80%)]],
    [#image("images/maiden-magic-wand-1600-arthur-rackham_cut_nowand.png", width: 87%)]
  )
]

#pagebreak()

=== Research

You can do research by talking to strangers in bars, studying books in a library or scouring through records in an archive.

First, you need to state a question you want answered or a topic you want to explore. Second, you require access to the information and you must be able to understand the language or have someone translate it for you. When these conditions are met, you only need time in order to get answers, which is represented by rolling the Agenda Die.

After a certain amount of time, the Warden may choose to give you partial information and the option to spend more time researching to learn the rest. In any case, the Warden should let you know whether you have learned everything from your source.

#align(center, image("images/fantastic-terrors-1600-john-tenniel_cut.jpg", width: 75%))

#pagebreak()

=== Exploration

Consider three kinds of information #footnote[Credit goes to Anne from #link("https://diyanddragons.blogspot.com")[diyanddragons.blogspot.com]]:

+ *Landmark information* is everything that is immediately visible when you enter a room. The Warden gives this kind of information to the players for _free_.
+ *Hidden information* can only be learned if players specifically ask for it or uncover it in the game world. It often comes at a cost.
  + _Time_. It might take time to examine something. Looking in the right place yields instant results, but a general search of a room takes about 15 minutes, which triggers a roll of the Agenda Die.
  + _Risk_. You might expose yourself to risk when you investigate a dangerous object, especially if you get too close to it.
+ *Secret information* always comes at a cost, and there is a chance that the players fail to learn the information. Information should almost never be secret; when players interact with the game world, they should get answers.

Finding clues should not be a challenge for players. When introducing a new location, the Warden sets the mood and presents landmark information, which often functions as threads that the players can pull on for more information. The players can then ask questions and describe their PCs' actions in order to uncover hidden information.

The Warden should always answer truthfully, but should also make sure that characters receive information that is appropriate to their occupation. The Warden should encourage the players to state what they want to know and what their characters do to figure it out.

#pagebreak()

#page(background: image("images/Hubert Robert - The Old Temple_cropped_color.png", fit: "stretch", width: 101%), numbering: none)[

#pagebreak()
]

== Combat

=== Rounds

A round is roughly ten seconds of in-game time and proceeds with each side taking turns. In each round, first all PCs who are able to act get a turn, then all their opponents.

At the start of combat, each PC must make a DEX save in order to act in the first round, unless the PCs are attacking from ambush.

At the start of each round, the Warden telegraphs the actions that the opponents are most likely to take. All PCs declare their actions before dice are rolled. _The results of each side’s actions occur simultaneously._

=== Actions

On their turn, a character may move up to 15 meters and take one action. This may be giving aid to an injured character, attacking, reloading a gun, making a second move, dragging someone to the ground or some other reasonable action.

=== Attacking & Damage

The attacker rolls their weapon die and subtracts the target’s armor, then deals the remaining total to their opponent’s HP. Attacks in combat automatically hit. Unarmed attacks always do 1d4 damage.

=== Multiple Attackers

If multiple attackers target the same foe, roll all damage dice and keep the single highest result. All actions are declared before being resolved.

=== Dual Weapons

If attacking with two weapons at the same time, roll both damage dice and keep the single highest result. This is denoted with a plus symbol: for example, "dX+dX."

#pagebreak()

=== Attack Modifiers

If an attacker is fighting from a position of weakness (such as through cover or with bound hands), their attack is *Impaired* and the attacker must roll 1d4 damage regardless of the attack's damage die.

If fighting from a position of advantage (such as against a helpless foe or through a daring maneuver), the attack is *Enhanced*, allowing the attacker to roll 1d12 damage instead of their normal die.

=== Blast

Attacks with the *Blast* quality hit all targets in the affected area, rolling separately for each affected character. Blast refers to anything from explosions to huge cleaving onslaughts to a mass of writhing tentacles.

=== Ranged Attacks

Ranged attackers can target anyone near enough that their eye whites are visible. Attacks against especially distant targets are Impaired.

=== Critical Damage

Damage that reduces a target’s HP below zero is subtracted from their STR by the amount of damage remaining. The target must then immediately make a STR save to avoid critical damage, using their new STR score. Some enemies have special abilities or effects that are triggered when their target fails a save to avoid critical damage.

A PC that suffers critical damage cannot do anything but crawl weakly, grasping for life. If left untreated, they die within the hour. If given aid (such as bandages), the PC is stabilized, but roll a d100 on the *Wounds Table* (p. #pageref(<wounds_table>)) to determine what happens to them.

=== Attribute Loss

If a PC’s STR is reduced to 0, they die. If their DEX is reduced to 0, they are paralyzed. If their WIL is reduced to 0, they are delirious.

If a PC takes damage outside of combat, they should instead receive damage to an Attribute, typically STR.

=== Unconsciousness & Death

When a character dies, the player is free to create a new character or take control of an NPC. They join the party not long after in order to reduce downtime.

=== Massive

Swarms of creatures and huge monsters have the *Massive* quality. When a Massive creature takes critical damage, it is significantly weakened or changes tactics. When it reaches 0 STR, it is destroyed.

Attacks against Massive creatures by individuals are Impaired (excluding Blast damage). Attacks against individuals by Massive creatures deal Blast damage.

=== Retreat

Running away from a dire situation always requires a successful DEX save and a safe destination to which you can run.

#table(
  columns: (auto, 1fr, auto, auto),
  align: horizon,
  fill: (_, y) => if y == 0 { rgb(60,60,60) },
  stroke: (_, y) => if y == 0 { rgb(60,60,60) } else { black },
  table.header(
    table.cell(colspan: 4, align: center)[#set text(fill: white, weight: "bold")
    === Wounds]
  ),
  [*d100*], [*Effect*], [*d10*], [*Area*],
  [00], table.cell(rowspan: 6)[*Scarred.* You are bruised and bleeding, but you can get back up on your feet.], [0], [Legs],
  [10], [1], [Arms],
  [20], [2], [Hands],
  [30], [3], [Shoulders],
  [40], [4], [Waist],
  [50], [5], [Back],
  [60], table.cell(rowspan:3)[*Injured.* Effect to be determined by the Warden and the players. Lasts until you receive professional medical treatment.], [6], [Stomach],
  [70], [7], [Chest],
  [80], [8], [Neck],
  [90], [*Dying.* Lose 1d4 STR every 30 minutes until you receive professional medical treatment.], [9], [Head]
) <wounds_table>

#pagebreak()

#page(background: image("images/victim-feather-1600_alphonse_de_neuville_cut.png", fit: "cover", width: 97%), numbering: none)[
  
#pagebreak()
]

== Chases

Chases are split into three scenes. In each scene, the PCs are confronted with an obstacle, and each PC makes a save to see whether the obstacle slows them down or they gain ground; rolling a critical fail yields -1 point, a fail yields 0 points, a success yields 1 point and a critical success yields 2 points. At the end of the chase, a PC needs at least 1 point in order to escape or 2 points to catch a fugitive. (For an example of this procedure, refer to page #pageref(<example_of_play>).)

=== Helping others escape

If a PC has 2 or more points at the start of the third obstacle, they may help another PC escape. Add the result in points of the former PC's third save to the points of the latter PC. If the latter PC does not have the required amount of points at the end, both PCs are caught.

=== Overloaded

Anyone carrying a full inventory must score an additional point and can only help someone else if they have at least 3 points at the start of the third obstacle.

=== Longer Chases

If you want to draw out the chase, play through a total of five scenes and require PCs to score an additional point. In order to help others escape, a PC must have at least 3 points at the start of the fifth obstacle.

=== Chases with Vehicles

Similar to characters, vehicles have HP and armor, but use a different set of attributes. 
+ *Mayhem* represents the vehicle's health and how hard it is to force it off the road.
+ *Handling* indicates how easy it is to navigate around obstacles.
+ *Engine* represents the vehicle’s acceleration and top speed.

*Ford Model T:* 10 Mayhem, 8 Handling, 7 Engine, 5 HP, 1 Armor\
*Motorcycle:* 5 Mayhem, 13 Handling, 14 Engine, 3 HP

=== Chase Obstacles

Whenever possible, obstacles during chases should correspond to what obstacles have already been established as present in the game world. Alternatively, if the Warden is not sure what obstacles should appear in the fugitives' way, they can roll on the table below for inspiration.

#table(
  columns: (auto, auto, 1fr),
  align: horizon,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { stripe_color },
  stroke: none,
  table.header(
    table.cell(colspan: 3, align: center)[#set text(fill: white, weight: "bold")
    *Chase Obstacles*]
  ),
  table.cell(rowspan: 7)[*STR*],
  [*1*], [Move something out of the way (crates, gate).],
  [*2*], [Cut your way through a thicket or a group of people.],
  [*3*], [Climb a wall or precipice.],
  [*4*], [Jump across a ravine.],
  [*5*], [Climb a ladder or flights of stairs.],
  [*6*], [Get over or through a fence.],
  [*7*], [Cross a rushing stream.],
  table.cell(rowspan: 7)[*DEX*],
  [*8*], [Get past a closing gate or an incoming train in time.],
  [*9*], [Get down a steep slope.],
  [*10*], [Run across open field.],
  [*11*], [Jump over a fallen tree.],
  [*12*], [Take a sharp turn.],
  [*13*], [Keep your balance on uneven ground (roots, stones).],
  [*14*], [Avoid something that spills onto the ground.],
  table.cell(rowspan: 6)[*WIL*],
  [*15*], [Find a place to hide for a brief moment.],
  [*16*], [Avoid twisting your ankle in a deep puddle.],
  [*17*], [Cross a busy road or find your way out of a dead end.],
  [*18*], [Navigate through fog or darkness.],
  [*19*], [Find a shortcut.],
  [*20*], [Carefully traverse slippery ground (mud, ice, oil).]
)

#pagebreak()

== Stealth & Deception

In Eldritch Instinct, investigators get ahead by using their environment or equipment to their advantage. They find creative solutions by using critical thinking and making difficult decisions.

Assume that investigators are fundamentally capable of disguising themselves and remaining hidden. Allow the players to _get in over their heads_, then put the screws on them.

Simple situations can usually be resolved with a save, with the Agenda Die or purely within the logic of the game world. In more complex situations, however, the Warden should zoom in and draw out the dramatic tension: will the investigator be detected or remain hidden?

Two concepts you should always have in mind are risk and effect. For example, when the PC has everything under control and the stakes are low, they may be able to back out of an action or deal with a minor complication in order to remain hidden. Otherwise, PCs might be detected outright or find themselves in a seriously desperate situation.

The Warden should not ask for a save at the beginning of a stealthy action. Instead, the Warden should allow players to proceed until they reach a critical point, then put an unexpected obstacle in front of them which they must overcome with a save or a more creative solution.

How long are the investigators able to remain hidden before a fight breaks out or they have to run away? Players should feel vulnerable and tense, like they're in a pressure cooker, but they should also expect to get reasonably far with a stealthy or deceptive approach.

#pagebreak()

=== Illustrative Situations

1. *Don't roll a 20!* The investigators are breaking into a warehouse as the criminal proprietors return. The players decide to hide behind stacks of crates and stay quiet. There are plenty of places to hide and the criminals will just quickly drop something off. Every player makes a DEX save, and on a critical fail, their PC is detected or there is a major compromise.

2. *Multi-stage plan.* The investigators must pass a cultist checkpoint to leave the village before they are caught and sacrificed. Just going through the checkpoint hoping for the best would be extremely risky; the cultists are sure to recognize strangers. In order to improve their odds, the PCs go looking for drying clothes in the neighborhood to disguise themselves, rolling the Agenda Die and possibly dealing with other minor obstacles along the way.

3. *Offer choices*. An investigator carrying an ancient artifact is being pursued by an undead mummy and has just turned the corner into another room. Quickly scanning the room, they identify a number of alternatives to running away:
  + Leave the artifact behind and escape safely.
  + Hide in a big urn with a 4-in-6 chance of success, but on a fail the PC is trapped inside.
  + Hide behind a statue with a 2-in-6 chance of success, but on a fail the mummy stands between the PC and the exit, forcing the investigator back into the pyramid.

4. *Raise the stakes*. An investigator is scouting out a cult compound on the outskirts of town, but regular patrols make it difficult to gather valuable intel. They decide to sneak in regardless and peek through the windows. After the PC fails a DEX save, an approaching patrol forces the PC to flee deeper into the compound.

#pagebreak()

== Downtime
<downtime>

In the background or between scenarios, you can take *Downtime Actions*, which are only summarized during the game itself. You can:

#grid(columns: (1fr, 1fr), gutter: 20pt,
  [
    - Study tomes to increase your Mythos Knowledge,
    - Spend time with your bonds or form new ones to remove Broken notches,
    - Acquire useful gear,
  ],
  [
    - Get in shape,
    - Craft something,
    - Research a topic,
    - Travel somewhere,
    - Make new acquaintances,
    - or earn money.
  ]
)

This can translate into:

#grid(columns: (1fr, 1fr), gutter: 20pt,
  [
    - improved attributes,
    - increased inventory space,
    - increased damage with a particular weapon,
  ],
  [
    - learning cool skills,
    - gaining the ability to handle specific situations with ease,
    - or promoting a contact so that they can be more helpful.
  ]
)

This is an opportunity to hack the game and adjust it to your liking. Ask yourself: What would you like to be capable of? What would you like to see? Then, work with the Warden to determine the effects and the amount of time that must be spent to achieve your goal.

A good rule of thumb is that a downtime action takes two weeks and that a PC can take up to two downtime actions between scenarios.

The Warden might also hand out free improvements to reward courageous feats, brilliant ideas and seemingly impossible victories.

=== Organization

When you are playing a series of short and unrelated scenarios, you might want to come up with an organization that the investigators belong to or that they join after their first adventure. The organization should be sworn to secrecy, have a method of recruiting new members, and strive to study and suppress the Mythos.

#pagebreak()

== Bestiary

*Cultist*\
4 HP, 8 STR, 10 DEX, 13 WIL, dagger or pistol (d6)
- Some cultists know spells.

*Deep One Youngling*\
3 HP, 1 Armor, 5 STR, 11 DEX, 4 WIL, bite (d6), INS 1/1d4
- *Venomous stinger:* shoots a stinger that deals d20 damage to DEX. The damage is removed after 20 minutes pass in the game world.

*Mi-Go Warrior*\
6 HP, 2 Armor, 14 STR, 7 DEX, 8 WIL, claws (d8), INS 1/1d6
- Can fly and call to summon additional Mi-Go.

*Shoggoth*\
8 HP, 18 STR, 5 DEX, 6 WIL, tentacles (d6), Massive, INS 1d6/1d12
- *Critical damage:* grapples target and deals d4 damage per round until target is freed.

=== Creating Monsters and NPCs

Use the following template to model any sophisticated monster or NPC:

*Name*\
X HP, X Armor, X STR, X DEX, X WIL, weapon (dX), INS X/X
- Quirk, tactic, or peculiarity making this NPC unique
- Special effect or special consequence of critical damage

=== General Principles

_Attributes_: 3 is deficient, 6 is weak, 10 is average, 14 is noteworthy and 18 is legendary. Adjust as necessary.

_Hit Protection_: Give average creatures 3 HP, hardy ones 6 HP and serious threats 10 or more HP. Use flavor and style to help them stand out.

Use critical damage effects to lean into the threat or strangeness of any aggressive NPC. Remember that HP is Hit Protection, not Hit Points. It’s a measure of resilience, luck and gumption, not health.

If monsters have special abilities, they usually just happen with no save. However, the Warden should telegraph particularly dangerous abilities and give PCs an opportunity to avoid the effects.

Remember that PCs usually have 5 HP and no armor. Most humans deal d6 damage and most monsters deal d8 damage. Give particularly strong opponents interesting abilities, critical damage effects, Blast or the Massive quality, but don't go overboard with damage.

1 to 1d4 is enough to slowly rack up the investigators' Insight, but if you want there to be chance that they panic, use 1d6 or a bigger die.

=== Converting from other Systems

This is a horror game, so you do not need to be exact when you convert monsters or spells. Use the Bestiary and General Principles as a baseline and focus on making each monster unique and interesting.

=== Creating Tomes

Use the following template to model a tome:

*Name*\
Language, Mythos Rating (between 3 and 10)
- Appearance and condition
- Summary of its content

#place(center, dx: 105pt, dy: -80pt)[
  #image("images/book-candle-tailpiece-1600-unknown_cut.png", width: 35%)
]

*Example: Book of Eibon*\
Old English, Mythos Rating 8
- Ancient, falling apart, only few chapters legible.
- Accounts of the wizard Eibon from Hyperborea.

=== Creating Spells
<bestiary_spell>

Use the following template to model a spell:

*Name*\
X MP, X Insight, X Broken notches
- Casting Time
- Description of effects

#pagebreak()

#page(background: image("images/ei_charsheet.jpg", fit: "cover"), numbering: none)[
  #pagebreak()
]

#page(background: image("images/Émile Beau design-shroud-1600.jpg", fit: "cover", width: 108%), numbering: none)[
    #place(bottom + center, dy: -64pt)[#rect(fill: rgb(234, 234, 239), stroke: 3pt + black, inset: 1.4em, radius: 0.3em)[
    #text(size: 12pt)[An adventure game for one  Warden and one or more players who act as investigators of the strange and unexplained.

    Take on delusional cultists, hide from stalking shadows and face terrifying monstrosities.

*Writing, Design & Layout*\
Linus Weber

*Editing*\
Carl Apostle | CrlBox\
Markus | DerTaurus

*Copyediting*\
Tim B. | congas.blog

*Character Sheet*\
Francesco Zanieri | Licopeoart
  ]]]
]
