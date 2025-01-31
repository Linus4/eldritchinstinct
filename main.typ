#set page(
  paper: "a5",
  margin: (x: 1.4cm),
  columns: 1,
)

#set text(
  //font: "Libertinus Serif",
  font: "Vollkorn",
  size: 11pt
)

#show link: underline

#show heading.where(level: 1): set text(size: 58pt, font: "New Computer Modern Uncial")
#show heading.where(level: 2): set text(size: 16pt, font: "New Computer Modern Uncial")

#let pageref(label) = context {
  let loc = locate(label)
  let nums = counter(page).at(loc)
  link(loc, numbering(loc.page-numbering(), ..nums))
}

#page(
  //background: image("images/cover_arthur_rackham.jpg", fit: "cover", width: 101%)
  background: image("images/Émile Beau design-shroud-1600.jpg", fit: "cover", width: 107%)
)[
#place(top + center, dy: +30pt)[#rect(fill: rgb(234, 234, 239), stroke: 3pt + black, inset: 0.8em, radius: 0.3em)[
#par(leading: 0.2em)[#heading(level: 1, outlined: false)[Eldritch Instinct]]]]
#place(top+center, dy: +138pt)[#rect(fill: rgb(234, 234, 239), stroke: 2pt + black, inset: 0.8em, radius: 0.2em)[
#text(size: 14pt)[Cosmic Horror & Pulp Action]]]
]

#page(background: image("images/Caspar David Friedrich - Statue of the Madonna in the Mountains left.png", fit: "stretch", width: 100%))[

*Eldritch Instinct* is an #link("https://questingblog.com/adventure-game-vs-osr/")[adventure game] for one facilitator (the *Warden*) and at least one other player.
Players act as curious investigators of the strange and unexplained. They will take on delusional cultists, hide from stalking shadows and face terrifying monstrosities.

The Mythos is a collection of stories, entities, characters and places conceived by Howard Phillips Lovecraft with contributions from his contemporary authors such as Clark Ashton Smith, Robert E. Howard and Robert Bloch. Since then, many authors, directors, artists and scenario designers have contributed their, often contradictory, ideas to the Mythos.

Written by Linus Weber. The Eldritch Instinct SRD is licensed under #link("https://creativecommons.org/licenses/by-sa/4.0/")[CC-BY-SA 4.0] and is derived from Yochai Gal’s #link("https://cairnrpg.com")[Cairn] SRD (cairnrpg.com).

Images from #link("https://www.oldbookillustrations.com/")[oldbookillustrations.com]. Featuring public domain art by: Émile Beau, Arthur Rackham, Caspar David, Frederic Edwin Church, Frederick Catherwood, Hablot Knight Browne, Gustave Doré, Sidney Paget, George Houseman Thomas, Arthur Rackham, John Tenniel, Hubert Robert and Alphonse de Neuville in order of appearance.

#align(center+bottom, link("https://eldritchinstinct.com")[
#text(fill: white)[*eldritchinstinct.com*]
])
#align(center)[#text(fill: white)[Version 0.8 #sym.circle.filled.small January 2025]]

#pagebreak()
]

#page(background: image("images/Caspar David Friedrich - Statue of the Madonna in the Mountains right.png", fit: "stretch", width: 100%))[

#outline(depth: 2, indent: auto)
]

#counter(page).update(1)
#set page(numbering: "1")

== Overview

Eldritch Instinct was written with the following design philosophies in mind:

#grid(
  columns: (auto, auto),
  inset: 3pt,
  gutter: 8pt,
  [=== External Interaction], [Players interact with the game world directly through questions and descriptions instead of mechanics. Questions are gameplay.],
  [=== Roll-Play], [Mechanics should create exciting situations, both in and out of the game, and force players to make tough choices. They are not a simulation.],
  [=== Immersion], [The rules, or the absence thereof, help players immerse themselves in the game world and create verisimilitude where it matters.],
  [=== Fail Forward], [Players roll saves to avoid complications in risky situations. Don’t think of success and failure as binary options.],
  [=== Neutrality], [The Warden's role is to portray the rules, situations, NPCs, and narrative clearly, while acting as a neutral arbiter.],
  [=== Rulings], [This book is not an authoritative specification for how you must play your game, but rather a set of tools to experiment and play around with.],
  [=== Assumed Competence], [Player characters are capable investigators who can stand up to the servants of the Mythos.],
)

#pagebreak()

== Principles for Players

=== Exploration
- Asking questions and listening to detail is more useful than any stats, items, or skills you have.
- Take the Warden's description without suspicion, but don't shy away from seeking more information.

=== Talking
- Treat NPCs as if they were real people, and when you're asking for a favor, consider the stakes, their goals, your reputation and your leverage over them.
- NPCs don’t always tell the whole truth. Your Warden should give hints, but who you do and don’t trust is ultimately your decision.

=== Atmosphere
- Prepare to die; combat is extremely quick and violent. Make your last moments count and revel in your investigator's tragic demise.
- Riff off of your investigator's occupation in the way you approach situations and describe your actions.

=== Planning
- Think of ways to avoid your obstacles and to stack the odds in your favor through reconnaissance, subtlety, and fact-finding.
- Keep notes to help you remember details from your investigation.

=== Agency
- Don't ask only what your character would do; ask what _you_ would do, too.
- Be creative with your intuition, items, and connections.

=== Teamwork
- Seek consensus from the other players before barreling forward.
- Stay on the same page about goals and limits, respecting each other and accomplishing more as a group than alone.

#pagebreak()

== Principles for Wardens

=== Information
- Provide useful information about the game world as the investigators explore it and present threads that the players can pull to uncover more information.
- Tailor your answers to the investigator's occupation: a doctor would pick up on different details than a police officer or a journalist.
- Players do not need to roll dice to learn about their circumstances.
- Respond honestly, describe consistently, and always let them know they can keep asking questions.
- Telegraph serious danger to players when it is present. The more dangerous, the more obvious.

=== Rolls
- Is what the players describe and how they leverage the situation sensible? Let it happen. Reward clever ideas and creative use of equipment or the environment.
- Ask for saves to introduce interesting complications in intense situations; not to see whether an investigator is able to do something.

=== Motivations
- NPCs act independently of the investigators and are guided by their own motivations.
- They remember what the investigators say and do, and how they affect the world.
- NPCs and even monsters don't want to die. Infuse their own self-interest and will to live into every personality.

=== Narrative Focus
- Pay attention to the needs and wants of the players, then put realistic opportunities in their path.
- Let every investigator be useful in their own way considering their occupation.
- Ensure that the investigators' actions leave their mark on the world.

=== Questions
- Ask the investigators questions like: What is going on in your head? How does that make you feel? How do you respond? What are you doing? What should be done about this?
- Employ Jason Cordova's #link("https://www.gauntlet-rpg.com/blog/paint-the-scene")[Paint The Scene] technique: "if there is an idea, theme, or visual motif that is particularly important for an encounter or scene, ask the players what their characters observe in the scene that reinforces that idea, theme, or motif."

=== Pacing
- Know how to escalate a scenario if the players are taking too long to solve a situation, based on the monster's or NPCs' motivations.
- During tense situations, keep up the time pressure in real life as well. Demand quick answers during a fight or chase, or use sand timers to limit how long the players get to plan before the monster finds them.
- Jump cut between players when they are separated to keep players involved, and fade out scenes when nothing new is happening to keep the game moving.
- Make sure to leave space for interaction between investigators.

=== Expectations
- Before playing, establish shared expectations with your players using P. R. O'Leary's #link("https://proleary.com/2016/04/25/the-cats-method-a-story-telling-game-opening-ritual")[CATS method] which stands for Concept, Aim, Tone and Subject Matter. At only 200 words, the article is well worth reading.
- Prepare a strong introduction for your session in order to create the right mood, pull your players into the game world and serve as an example for the players.
- Your goal is not to explicitly scare your players, but to create an immersive, eerie atmosphere and to build tension.

#pagebreak()

== Character Creation

=== Name & Occupation

First, choose or roll a *name* for your character, then their *occupation*, which informs their knowledge and potential skills (see tables on p. #pageref(<chargen_tables>)). Note however, that investigators do not hold positions of power.

=== Specialty, Appearance & Age

Elaborate on your character's _specialty_: this could be a workplace or their area of expertise. Next, make up one detail about your investigator’s face or hair and clothes. Decide how old your character is, or roll a d4 representing the tens digit, a d10 for the single digit and add 7.

=== Ability Scores

Player Characters (PCs) have three attributes: *Strength (STR)*, *Dexterity (DEX)*, and *Willpower (WIL)*. 

Roll 3d6 for each of your character’s attributes, in order. You may then swap any two of the results.

=== Hit Protection

A PC’s ability to avoid damage in combat through skill, stamina and luck is reflected by their *Hit Protection (HP)*. Every PC starts with 4 HP.

=== Magic Points

Magic Points (MP) start at the PC's WIL score and are spent to cast spells. You regenerate 1 MP per hour.

=== Mythos Knowledge

Every PC begins with 0 Mythos Knowledge (MK) and gains more through encounters with the Mythos and by studying tomes. You may spend 5 MK to re-roll one of your damage rolls or saves, unless it is a critical fail. MK is also used to cast spells.

=== Contacts

Every PC knows one person they trust and who helps them with favors such as research, translation or transport. Give them a name and an occupation.

=== Inventory

Characters have a total of 9 inventory slots. Most items such as a magazine or a flashlight take up one slot, and small items can be bundled together. *Bulky* items take up two slots and are typically two-handed or awkward to carry. 

Anyone carrying a full inventory (e.g. filling all 9 slots) or something very heavy is reduced to 0 HP. A PC cannot carry more items than their inventory allows.

As carrying bulky weapons would raise suspicion, it is generally assumed that PCs keep their bulky weapons hidden in their car or at home, unless the players say otherwise.

If you have a gun, divide the circle labeled *Magazine* into a number of sections equal to the weapon's Shots value. A loaded magazine does not count towards the inventory limit.

=== Starting Gear

All PCs begin with two items from the *Gear Table* (p. #pageref(<gear_table>)) and any other items as the Warden sees fit depending on the occupation and the scenario.

The PC with the lowest ability score total also starts with a source of light.

#place(center, dx: -30pt)[
    #image("images/clovis-dardentor-by-leon-benett-44-f55373_cut.png", width: 50%)
]
#place(right, dx: -81pt, dy: +0pt)[
  #image("images/holmes-revolver-1600-sidney-paget_cut.png", width: 10%)
]

#pagebreak()

=== Background and Relationships

First, write a short sentence about your character on the back page and pass your character sheet on to the player on your right. They add a sentence linking their character to yours and defining the relationship. Repeat this process one more time, or give your sheet to a third player so that they can expand on the first relationship.

=== Bonds

Roll on the *Bonds Table* to determine the four most significant things that tie your PC to this world. Use the results as a starting point and come up with something short and _specific_.

#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { rgb(225,225,245) },
  table.header(
    table.cell(colspan: 8, align: center)[#set text(fill: white, weight: "bold")
    === Bonds (d20)]
  ),
  [*1*], [Family], [*6*], [Sports], [*11*], [Music], [*16*], [Interest],
  [*2*], [Work], [*7*], [Friend], [*12*], [Faith], [*17*], [Activism],
  [*3*], [Pet], [*8*], [Outdoors], [*13*], [Community], [*18*], [Going out],
  [*4*], [Partner], [*9*], [Travel], [*14*], [Contemplate], [*19*], [Home],
  [*5*], [Literature], [*10*], [Art], [*15*], [Self-Care], [*20*], [Gardening]
)

=== Motivation

Investigators are confronted with life-threatening violence and mind-breaking revelations. _During play_, conceive and adapt the reason why your character would push on despite all of this. See *Motivation Ideas* to help you develop your PC's motivation.

#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { rgb(225,225,245) },
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
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { rgb(225,225,245) },
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
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { rgb(225,225,245) },
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
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { rgb(225,225,245) },
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
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { rgb(225,225,245) },
  table.header(
    table.cell(colspan: 8, align: center)[#set text(fill: white, weight: "bold")
      === Occupation (d20)]
  ),
  [*1*], [Journalist], [*6*], [Priest], [*11*], [Scholar], [*16*], [Private Eye],
  [*2*], [Librarian], [*7*], [Sailor], [*12*], [Trades], [*17*], [Drifter],
  [*3*], [Custodian], [*8*], [Artist], [*13*], [Criminal], [*18*], [Pilot],
  [*4*], [Police], [*9*], [Bureaucrat], [*14*], [Author], [*19*], [Antiquarian],
  [*5*], [Doctor], [*10*], [Ranger], [*15*], [Farmer], [*20*], [Mechanic]
)

#pagebreak()

#table(
  columns: (auto, 1fr, auto, 1fr),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { rgb(225,225,245) },
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
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { rgb(225,225,245) },
  table.header(
    //[*Weapon*], [*Damage*], [*Shots*], [*Special*]
    table.cell(colspan: 4, align: center)[#set text(fill: white, weight: "bold")
      === Weapons]
  ),
  [*Weapon*], [*Damage*], [*Shots*], [*Special*],
  [Magazine], [n/a], [n/a], [Occupies one inventory slot unless loaded.],
  [Unarmed], [1d4], [n/a], [],
  [Knife, Machete, Crowbar], [1d6], [n/a], [],
  [Colt M1911], [1d6], [6], [Spend 2 (or 3) shots to deal d6 + d6 (+ d6) damage.],
  [Stevens 311 Shotgun], [1d6], [2], [Bulky, Blast. Fire both barrels for d8+d8 damage.],
  [Fire Axe, Baseball Bat], [1d8], [n/a], [Bulky.],
  [Lee-Enfield Mk III], [1d8], [4], [Bulky. Enhanced when used as a sniper rifle and not under fire.],
  [Thompson Submachine Gun], [1d10], [3], [Bulky, spend 3 shots for Blast.],
  [.30 Browning Machine Gun], [1d12], [4], [Mounted, Very Heavy, Blast.],
  [Dynamite Stick], [1d6], [1], [Blast.],
  [Molotov Cocktail], [1d4], [1], [Blast, lasts d4 rounds.],
  [Frag Grenade], [1d10], [1], [Blast.],
  [Flamethrower], [1d8], [4], [Bulky, Blast.]
)

#pagebreak()

#page(background: image("images/Frederic Edwin Church  - View of Cotopaxi_left_color.png", fit: "cover", width: 100%), numbering: none)[
#pagebreak()
]

#page(background: image("images/Frederic Edwin Church  - View of Cotopaxi_right_color.png", fit: "cover", width: 100%), numbering: none)[
#pagebreak()
]

== Core Rules

=== Abilities

Each of the three abilities are used in different circumstances.

*Strength (STR)*: Used for saves requiring physical power, like lifting gates, climbing, restraining a person, etc.\
*Dexterity (DEX)*: Used for saves requiring poise, speed, and reflexes like dodging, sneaking, balancing, etc.\
*Willpower (WIL)*: Used for saves to endure horrors, provoke, resist manipulation of your thoughts, deceive, charm, etc.

=== Saves

A save is a roll to avoid bad outcomes from risky choices and circumstances. PCs roll a d20 for an appropriate ability score. If they roll equal to or under that ability score, they pass. Otherwise, they fail.

A 1 is always a *critical success*, and a 20 is always a *critical fail*.

For an *opposed* save, both the PC and their opponent make a save. Whoever rolls the _highest_ number under or equal to their ability score wins the save. If both sides fail, the _highest_ result wins. Add any ability score above 20 to the result.

=== Difficulty

When a PC must make a save in a favorable or in a particularly difficult situation, don’t use a mechanical solution to make success more or less likely. Rather, limit or increase the risks and possible effects purely in the game world.

=== Healing

Resting for a few moments and having a drink of water restores lost HP. Ability loss can usually be restored with a couple of weeks’ rest in a safe place.

A PC *deprived* of a crucial need (such as food or rest) is unable to recover HP or ability scores.

=== Die of Fate

Occasionally you will want an element of randomness (e.g. the weather, looking for specific items, etc.). In these situations, roll 1d6. A roll of 4 or more generally favors the players. A roll of 3 or under tends to mean bad luck for the PCs or their allies.

=== Agenda Clock

You track the passage of time on the Agenda Clock#footnote[Credit goes to Arnold K from #link("https://goblinpunch.blogspot.com")[goblinpunch.blogspot.com].] which you can represent using a d20. It starts at 20 and a complication occurs when it is reduced _below_ 0. Reset it to 20 after the complication is resolved.

A complication could be an encounter, an event, a change in the environment or the evil agenda advances.

When a PC does something that takes *time* or attracts unwanted *attention*, roll a d6 (Agenda Die) and subtract its result from the Agenda Clock.

Examples of when you must roll the Agenda Die:
#grid(
  columns: 2,
  gutter: 10pt,
  [
    - travelling to another location,
    - searching for something,
    - resting to restore lost HP,
    - convincing a reluctant NPC,],
  [
    - doing research or reading tomes,
    - crafting or preparing a trap,
    - getting the authorities involved,
    - breaking open a door.]
)

The Agenda Die explodes - meaning every time you roll a 6, you immediately roll an additional Agenda Die and subtract its result from the Agenda Clock as well.

When the Agenda Clock is reduced to 0 exactly, bump it back up to 3.

When the Agenda Clock is bumped up or reduced to 3 exactly, you either see a glimpse of the horror or a foreshadowing event for the next complication.

It is totally acceptable to delay the complication or foreshadowing for a little while to fit the scenario.

#pagebreak()

== Example of Play

Arlene Snow the Antiquarian and Rosalie Buck, a lookout for the mob, seek out a Mayan artifact at the Miskatonic Prehistorical Museum.

*Warden:* The sun has already set by the time you arrive at the museum. The doors are not locked, and inside you find a watchman keeping an eye on the entrance hall. _Rolls 2d6 to determine the NPC’s reaction._ An 8! He looks at you curiously and says: _“Excuse me, the museum is currently closed. Can I help you with anything?”_

*Arlene:* _“Good evening, my name is Dr. Snow and I work for Miskatonic’s archaeology department. I’m here with my student assistant to check our catalog against the exhibits.”_

*Warden:* As an antiquarian you certainly look the part. And the watchman is clearly out of his depth, but satisfied with your answer.

*Rosalie:* Quick, let’s find the Yaxuná casket.

*Warden:* You make an educated guess, Arlene, and head to the Yucatán section. Another watchman sits slumped over his desk, and you spot the casket in its showcase in the center of the dimly lit exhibition room.

*Rosalie:* Does it look like the watchman is asleep?

*Warden:* As you approach the watchman silently, you recognize a treacherous sweet smell – chloroform.

*Arlene:* I'll quickly pry the showcase open with my screwdriver.

*Warden:* Make a DEX save. _Arlene fails the save._ Right when you crack it open, a bell in the corner of the room starts to ring and you hear footsteps coming up the stairs.

*Arlene:* I put the casket in my bag and run down the corridor.

*Warden:* Alright, let’s do a chase then. Roll DEX against the watchman. _Both fail._ You give it your all, but the watchman is catching up.

*Rosalie:* Let’s hide in one of the rooms, wait for him to run past and then go back the other way.

*Warden:* Sounds like a WIL save to me. _Arlene fails, but Rosalie scores a critical success._ The watchman runs straight past Rosalie, but just notices Arlene’s bag sticking out behind the corner. There are a few rows of these queue line dividers between you and the exit. Rosalie, you are already quite far ahead, do you want to help Arlene out?

*Rosalie:* Yes, I will hold up the last divider for her.

*Warden:* Alright, but there’s the risk that he will get you both. _Arlene fails again, but Rosalie succeeds._ Arlene is struggling to jump over the dividers in her skirt, but with your help you both make it out the front door while the watchman gets tangled up in the line dividers.

*Arlene:* _“Thank you, Rosa! He almost got me.”_ What’s in the casket?

*Warden:* The amulet you were hoping to find appears to have been removed. Instead, you find what is undoubtedly another one of your husband’s fingers, ripped crudely off his hand.

#align(center, image("images/chichen-itza-1600_frederick_catherwood.jpg", width: 98%))

#pagebreak()

== Insight

You gain a certain amount of Insight from seeing the Unnatural, like a corpse, a monster, or other horrifying evidence of the Mythos. When you do, make a WIL save to reduce the amount of Insight you gain (denoted by INS X/X, e.g. INS 1/1d4).

Fill in the corresponding number of pips on your character sheet beginning at the 1 position (1 o’clock) going clockwise.

If you gain 5 or more Insight in one go or if you cannot fill enough Insight pips, make an Insight Save.

=== Insight Save

When you experience something mind-shatteringly dreadful, roll 1d12. If it hits an empty Insight pip or a Hardened notch, you keep it together. If it hits a filled-in pip or a Broken notch, you panic.

=== Panic & Notches

You or the Warden come up with a reaction for your character (see *Panic Effect Ideas*). The reaction should be disruptive, last for a few rounds (d4) and have your character end up in a tough spot.

When you’ve had a chance to calm down, make a WIL save. On a success, draw a permanent box around an Insight pip starting at the 4 position going clockwise as you are *Hardened*. 

On a fail, cross out an Insight pip starting at the 12 position going counter-clockwise as you are *Broken*.

=== Broken

Pips with a Broken notch cannot be filled when gaining Insight.

When you cross out an Insight pip that is already Hardened, it counts as Broken until you remove the Broken notch.

If you gain a Broken notch but cannot cross out another Insight pip, you permanently lose control of your character.

#pagebreak()

=== Hardened

PCs start with three Hardened notches. Every three additional Hardened notches, you lose one of your bonds. At a reasonable point in time, narrate a small vignette describing your loss.

=== Delusions

If you’ve gained a Broken notch within the last 24 hours, the Warden might present you a twisted version of reality - especially when showing you a glimpse of the horror. You may attempt to see through what you believe to be delusions with a WIL save. On a success, the delusions stop. On a fail, they persist and you gain a Broken notch.

=== Getting Better

There are a number of possibilities to remove Broken notches.

*Self-help*: When you spend time with one of your bonds, make a WIL save. On a success, remove a Broken notch. Otherwise, lose your bond. On a critical fail, lose your bond and gain a Broken notch.\
*Sanatorium*: You may commit yourself to a sanatorium. At the end of each year, make a WIL save. On a success, remove a Broken notch. On a critical fail, gain a Broken notch.\
*Cover traces*: Once per scenario, if you have personally suppressed knowledge of the Mythos (e.g. burning tomes or dealing with witnesses), remove a Broken notch on a successful WIL save.

#table(
  columns: (auto, 1fr, auto, 1fr, auto, 1fr, auto, 1fr),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { rgb(225,225,245) },
  table.header(
    table.cell(colspan: 8, align: center)[#set text(fill: white, weight: "bold")
    === Panic Effect Ideas (d12)]
  ),
  [*1*], [Frenzy], [*4*], [Possessed], [*7*], [Hubris], [*10*], [Obsessed],
  [*2*], [Run], [*5*], [Hysteria], [*8*], [Paranoid], [*11*], [Bad Idea],
  [*3*], [Freeze], [*6*], [Hide], [*9*], [Faint], [*12*], [Surrender]
)

#align(center, image("images/water-reptile-1600_gustave_dore_cut_fade.png", width: 80%))

#pagebreak()

== Mythos Knowledge

Mythos Knowledge (MK) represents how much your character has learned and internalized from their encounters with and studies of the Mythos.

You may spend 5 MK to re-roll one of your damage rolls or saves, unless it is a critical fail.

=== Mythos Knowledge Save

Roll a d100 under or equal to your MK score plus your current Insight score.

=== Keeping a Journal

Once per scenario, you may turn up to 2d6 Insight into MK if you write a journal entry and get a good night’s rest.

Remaining Insight is removed at the Warden’s discretion – probably at the end of a scenario.

=== Tomes

You can acquire knowledge of the Mythos through the study of ancient tomes, most of which were written in foreign languages and often provide only a partial or inaccurate understanding of the Mythos. An *Initial Reading* allows the reader to get an overview of the knowledge that is contained in the tome. The reader gains Insight equal to the tome’s *Mythos Rating*.

Further *study* of the tome takes a few days, after which you may increase your MK by the tome’s Mythos rating. Every time, though, you must gain a Broken notch.

#align(center, image("images/chamber-mystery-1600-hablot-knight-browne_cut.png", width: 60%))

#pagebreak()

=== Spells

When you cast a spell, which you can learn from studying certain tomes, you must pay its cost and spend the specified casting time. If you cast a spell, but do not have sufficient MP, subtract the remainder from your STR instead.

For its *First Evocation*, you must also make a MK save that you cannot re-roll by spending MK. On a fail, you must either start over and learn the spell from scratch, or you make a second MK save which you may subsequently re-roll.

However, if you fail the second save without starting over, the spell is cast, but all spell costs are multiplied by d4 and the Warden rolls on the *Miscast Table*.

#table(
  columns: (auto, 1fr, 1fr),
  align: horizon,
  stroke: none,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { rgb(225,225,245) },
  table.header(
    //[*d8*], [*Lesser spells*], [*Greater spells*]
    table.cell(colspan: 3, align: center)[#set text(fill: white, weight: "bold")
    === Miscast Table (d8)]
  ),
  [*d8*], [*Lesser spells*], [*Greater spells*],
  [*1*], [Small or weak life forms wither and die.], [Mind shattering visions. Gain 6 Broken notches.],
  [*2*], [Unbearable stench.], [Your body and face contort permanently.],
  [*3*], [Moon and stars vanish. Or total solar eclipse.], [Devastating thunderstorm and tides.],
  [*4*], [Gusts of wind, rumbling, strange lights in the sky.], [Your eyes mutate as you are possessed.],
  [*5*], [Loud and horrible screams.], [Large and deep sinkholes form.],
  [*6*], [Your skin rots and forms pustules.], [Large area bursts into flames.],
  [*7*], [A Mythos creature is summoned.], [Gate to another planet opens.],
  [*8*], [Foul mist spreads around you.], [Everything dear to the caster is annihilated (contacts, bonds).],
)

#pagebreak()

== Investigation

=== Social

When the PCs encounter an NPC whose *reaction* to the party is not obvious, the Warden may roll 2d6 and consult the following table:

#table(
  columns: (5 * (1fr,)),
  align: center,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { rgb(225,225,245) },
  stroke: none,
  table.header(
    table.cell(colspan: 5)[#set text(fill: white, weight: "bold") 
    Reactions]
  ),
  [*2*], [*3-5*], [*6-8*], [*9-11*], [*12*],
  [Hostile], [Wary], [Curious], [Kind], [Helpful]
)

When the PCs try to get a favor or information from an NPC, consider the following factors:

*Stakes*: do the PCs ask for a lot or just a small favor?\
*Motivation*: does the PC's proposition align with what the NPC wants?\
*Respect*: does the NPC personally respect the PCs?\
*Leverage*: do the PCs present anything that forces the NPC's hand?

Social encounters can usually be resolved by critical thinking. Sometimes, however, the NPC's reaction is unclear. In this case, the Warden makes another reaction roll and applies a modifier between -4 and +4 to the result, based on the four factors. 

The NPC agrees if the result is 'kind' or 'helpful' (9+). If the result is 'curious' (6-8), the NPC can still be convinced given some time or a better offer considering the four factors, but if the result is 'wary' (3-5), it takes a lot more for the NPC to agree.

#align(center)[
  #grid(
    columns: 2,
    gutter: -20pt,
    inset: -8pt,
    
    [#move(dy: 8pt)[#image("images/sop-cerberus-1600-george-houseman-thomas_cut.png", width: 70%)]],
    [#image("images/maiden-magic-wand-1600-arthur-rackham_cut_nowand.png", width: 77%)]
  )
]

#pagebreak()

=== Research

You can do research by talking to strangers in bars, studying books in a library or scouring through records in an archive. First, you need to state a question you want answered, or a topic you want to explore.

Secondly, you require access to the information and must be able to understand the language or have someone translate it for you. When these conditions are met, you only need time in order to get answers, which is represented by rolling the Agenda Die.

The Warden may award only partial information after a certain amount of time and allow you to spend more time researching. In any case, the Warden should let you know whether you have learned everything from your source.

#align(center, image("images/fantastic-terrors-1600-john-tenniel_cut.jpg", width: 75%))

#pagebreak()

=== Exploration

Consider three kinds of information #footnote[Credit goes to Anne from #link("https://diyanddragons.blogspot.com")[diyanddragons.blogspot.com]]:

*Landmark* information is everything that is immediately visible when you enter a room. The Warden gives this kind of information to the players for _free_.\
*Hidden* information can only be learned if players specifically ask for it or directly interact with the fiction. It often comes at a cost: first, you probably have to spend some _time_ to examine the object. Looking in the right place yields immediate results, but a general search of a room takes about 15 minutes (roll the Agenda Die). Second, you expose your PC to _risk_ as you have to be close enough to touch the object you want to investigate.\
*Secret* information always comes at a cost and there is a _chance for failure_. In Eldritch Instinct, information should almost never be secret. If players interact with the fictional world, they will get answers.

Finding clues should not present a challenge to players. Rather, it is a conversation between the players and the Warden: when describing a location, the Warden begins by setting the mood and presenting landmark information, which often functions as threads, that the players can pull for more information. The players may then ask questions and describe their PC’s actions in order to uncover hidden information.

The Warden answers truthfully, but should make sure that characters receive information that is appropriate to their occupation. The Warden should encourage the players to state what they want to know and what their characters do to figure it out.

#pagebreak()

#page(background: image("images/Hubert Robert - The Old Temple_cropped_color.png", fit: "stretch"), numbering: none)[

#pagebreak()
]

== Combat

=== Rounds

A round is roughly ten seconds of in-game time and proceeds with each side taking turns. Each round starts with all PCs that are able to act, followed by their opponents. _The results of each side’s actions occur simultaneously._

If there is a chance that a PC is surprised at the start of combat, they have to make a DEX save in order to act in the first round.

=== Round Order

Each round, the Warden telegraphs the most likely actions taken by NPCs or monsters. All PCs declare their actions before dice are rolled.

=== Actions

On their turn, a character may move 15 m and take one action. This may be giving aid to an injured character, attacking, reloading a gun, making a second move, dragging someone to the ground or some other reasonable action.

=== Attacking & Damage

The attacker rolls their weapon die and subtracts the target’s armor, then deals the remaining total to their opponent’s HP. Attacks in combat automatically hit. Unarmed attacks always do 1d4 damage.

=== Multiple Attackers

If multiple attackers target the same foe, roll all damage dice and keep the single highest result. All actions are declared before being resolved.

=== Dual Weapons

If attacking with two weapons at the same time, roll both damage dice and keep the single highest result. This is denoted with a plus symbol, e.g. dX+dX.

#pagebreak()

=== Attack Modifiers

If fighting from a position of weakness (such as through cover or with bound hands), the attack is *Impaired* and the attacker must roll 1d4 damage regardless of the attack's damage die.

If fighting from a position of advantage (such as against a helpless foe or through a daring maneuver), the attack is *Enhanced*, allowing the attacker to roll 1d12 damage instead of their normal die.

=== Blast

Attacks with the Blast quality hit all targets in the affected area, rolling separately for each affected character. Blast refers to anything from explosions to huge cleaving onslaughts to a mass of writhing tentacles.

=== Ranged Attacks

Ranged weapons can target any enemy near enough to see the whites of their eyes. Attacks against especially distant targets are Impaired.

=== Critical Damage

Damage that reduces a target’s HP below zero decreases a target’s STR by the amount remaining. They must then immediately make a STR save to avoid Critical Damage, using their new STR score.

Additionally, some enemies have special abilities or effects that are triggered when their target fails a Critical Damage save.

A PC that suffers critical damage cannot do anything but crawl weakly, grasping for life. If left untreated, they die within the hour. If given aid (such as bandages), they will stabilize: roll a d100 on the *Wounds Table* (p. #pageref(<wounds_table>)).

=== Ability Score Loss

If a PC’s STR is reduced to 0, they die. If their DEX is reduced to 0, they are paralyzed. If their WIL is reduced to 0, they are delirious.

If a PC takes damage outside of combat, they should instead receive damage to an Attribute, typically STR.

=== Unconsciousness & Death

When a character dies, the player is free to create a new character or take control of an NPC. They join the party not long after in order to reduce downtime.

=== Massive

Swarms of creatures and huge monsters have the Massive quality. When a Massive creature takes Critical Damage, it is significantly weakened or changes tactics. When it reaches 0 STR, it is destroyed.

Attacks against Massive creatures by individuals are Impaired (excluding Blast damage). Attacks against individuals by Massive creatures deal Blast damage.

=== Retreat

Running away from a dire situation always requires a successful DEX save, as well as a safe destination to run to.

#table(
  columns: (auto, 1fr, auto, auto),
  align: horizon,
  fill: (_, y) => if y == 0 { rgb(60,60,60) },
  stroke: (_, y) => if y == 0 { rgb(60,60,60) } else { black },
  table.header(
    //[*d100*], [*Effect*], [*d10*], [*Area*]
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

During a chase, the PCs are confronted with three critical obstacles. The PCs make a save for each obstacle. Rolling a critical fail yields -1 point, a fail yields 0 points, a success yields 1 point and critical success yields 2 points. A PC needs 1 point at the end of the chase in order to escape or 2 points to catch a fugitive.

=== Helping others escape

If a PC has 2 or more points at the start of the third obstacle, they may help a slow PC. The result of their third save is added to the points of the slow PC. If the slow PC does not have the required amount of points at the end, both PCs are caught.

=== Carrying something heavy

If a PC is carrying something heavy such as a critically injured character, they must score an additional point and can only help someone else if they have at least 3 points at the start of the third obstacle.

=== Chase Obstacles

The obstacles that must be overcome should be what is in the path each fugitive chooses in the game world. Alternatively, the Warden may put one or two obstacles in the players’ way. This allows the players to split up and choose their own path, while giving the Warden opportunities to throw a spanner in the works.

=== Longer Chases
If you want to draw out the chase, do five rounds total and require PCs to score an additional point. In order to help others escape, a PC must have at least 3 points at the start of the fifth obstacle.

=== Chases with Vehicles

Similar to characters, vehicles have HP and Armor, but use a different set of ability scores:  Mayhem represents the vehicle's health and how hard it is to force it off the road, Handling indicates how easy it is to navigate around obstacles, and Engine represents the vehicle’s acceleration and top speed. Crashing into a vehicle reduces its Mayhem score, but PCs may go after Engine and Handling with targeted attacks. A vehicle is disabled when it takes Critical Damage, and is destroyed when its Mayhem score is reduced to 0.

*Ford Model T:* 10 Mayhem, 8 Handling, 7 Engine, 5 HP, 2 Armor\
*Motorcycle:* 5 Mayhem, 13 Handling, 14 Engine, 3 HP

#table(
  columns: (auto, auto, 1fr),
  align: horizon,
  fill: (_, y) => if y == 0 { rgb(60,60,60) } else if calc.even(y) { rgb(225,225,245) },
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

In Eldritch Instinct, players get ahead by using their environment, the game world or their gear to their advantage. They find creative solutions to obstacles, using critical thinking and making difficult decisions. Furthermore, assume that investigators are fundamentally capable of disguising themselves and remaining hidden as long as they are acting _on their own_. Allow the players to _get in over their heads_, then put the screws on them.

Simple situations can usually be resolved with a save, with the Agenda Die or just within the fiction. In more complex situations, however, you should zoom in and draw out the decision whether a PC is detected or remains hidden.

Two concepts you should always have in mind are risk and effect. For example, when the PC has everything under control and the stakes are low, they may be able to back out of an attempt or deal with a minor complication in order to remain hidden. Otherwise, players might be detected outright or find themselves in a seriously desperate situation.

You don't want to ask for a save at the beginning of a stealthy action, but first allow them to proceed until they reach a critical point. Then, you put an (unexpected) obstacle in front of them which they usually overcome with a save or a more creative solution.

How long are the investigators able to remain hidden before a fight breaks out or they have to run away? Players should feel vulnerable, it should be a pressure cooker, but they should also expect to get reasonably far with a stealthy or deceptive approach.

#pagebreak()

=== Illustrative Situations

1. The investigators are breaking into a warehouse as the criminal proprietors return. The players decide to hide behind stacks of crates and stay quiet. There are plenty of places to hide and the criminals will just quickly drop something off. Every player makes a DEX save, and on a critical fail, their PC is detected or there is a major compromise. (*Don’t roll a 20!*)

2. The investigators must pass a cultist checkpoint to leave the village before they are caught and used as human sacrifice. Just going through the checkpoint hoping for the best would be extremely risky as the cultists surely recognize strangers. In order to improve their odds, they go looking for drying clothes in the neighborhood to disguise themselves, rolling the Agenda Die and possibly dealing with other minor obstacles along the way. (*Multi-stage plan*)

3. An investigator carrying an ancient artifact is being pursued by an undead mummy and has just turned the corner into another room. Quickly scanning the room, they identify a number alternatives to running away: leave the artifact behind and escape safely; hide in a big urn with a 4-in-6 chance, but on a fail they are trapped inside; or hide behind a statue with a 2-in-6 chance, but on a fail the mummy stands between them and the exit, forcing the investigator back into the pyramid. (*Offer choices*)

4. An investigator is scouting out a cult compound on the outskirts of town, but regular patrols make it difficult to gather more valuable intel. They decide to sneak in regardless and peek through the windows. Failing a DEX save, an approaching patrol forces them deeper into the compound on their own. (*Raise the stakes*)

#pagebreak()

== Downtime

In the background or between scenarios, you can do a number of things that are summarized at the table. You can:
#grid(columns: 2, gutter: 5pt,
  [
    - Read tomes to increase your Mythos Knowledge,
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

This can translate into gaining HP or ability score, upgrading inventory space or damage with a particular weapon, but also learning cool skills, gaining the ability to handle specific situations with ease or promoting a contact so that they can be more helpful.

This is an opportunity to hack the game and adjust it to your liking. Ask yourself: What would you like to be capable of? What would you like to see? Then, work with the Warden to determine the effects and the amount of time that must be spent in accordance with the tone of the game that the group agreed upon.

A good rule of thumb for the length of a downtime action is two weeks, or simply allow two downtime actions between scenarios.

It is always a good idea to build on events of the previous scenario or on memorable successes and failures of the investigators. The Warden might even consider handing out free improvements rewarding courageous feats, brilliant ideas and overcoming seemingly impossible odds.

=== Organization

When you are playing a series of short and unrelated scenarios, you might want to come up with an organization that all players belong to or that they found after their first adventure. The organization should have a way of recruiting new members, should be sworn to secrecy and strive to study and suppress the Mythos.

#pagebreak()

== Bestiary

*Cultist*\
4 HP, 8 STR, 10 DEX, 13 WIL, dagger or pistol (d6)
- Some cultists know spells.

*Deep One Youngling*\
3 HP, 1 Armor, 5 STR, 11 DEX, 4 WIL, bite (d6), INS 1/1d4
- *Venomous stinger:* shoots a stinger that deals d20 damage to DEX for 20 minutes.

*Mi-Go Warrior*\
6 HP, 2 Armor, 14 STR, 7 DEX, 8 WIL, claws (d8), INS 1/1d6
- Can fly and call to summon additional Mi-Go.

*Shoggoth*\
8 HP, 18 STR, 5 DEX, 6 WIL, tentacles (d6), Massive, INS 1d6/1d12
- *Critical damage:* grapples character, deals d4 damage per round until freed.

=== Creating Monsters and NPCs

Use the following template to model any more sophisticated monster or NPC:

*Name*\
X HP, X Armor, X STR, X DEX, X WIL, weapon (dX), INS X/X
- Quirk, tactic, or peculiarity making this NPC unique
- Special effect or critical damage consequence

=== General Principles

Ability Scores: 3 is deficient, 6 is weak, 10 is average, 14 is noteworthy, and 18 is legendary. Adjust as necessary. Give average creatures 3 HP, give hardy ones 6 HP, and serious threats get 10+ HP. Use flavor and style to help them stand out.

Use critical damage to lean into the threat or strangeness of any aggressive NPC. Remember that HP is Hit Protection, not Hit Points. It’s a measure of resilience, luck, and gumption - not health.

If monsters have cool abilities or special effects, they usually just happen. However, Wardens should telegraph particularly dangerous abilities and give PCs an opportunity to avoid the effects.

Remember that PCs usually have 4 HP and no Armor. Most human opponents deal d6 damage and most monsters deal d8 damage. Give particularly strong opponents interesting special abilities, critical damage effects, Blast or the Massive quality, but don't go overboard with the damage.

=== Converting from other Systems

This is a horror game - you do not need to be exact when you convert monsters or spells. Use the Bestiary and General Principles as a baseline and focus on making each monster unique and interesting.

=== Creating Tomes

Use the following template to model a tome:

*Name*\
Language, Mythos Rating (between 3 and 10)
- Appearance and condition
- Summary of its content
- Suggestion for spells

#place(center, dx: 105pt, dy: -80pt)[
  #image("images/book-candle-tailpiece-1600-unknown_cut.png", width: 35%)
]

*Book of Eibon*\
Old English, Mythos Rating 8
- Ancient, falling apart, only few chapters legible.
- Accounts of the wizard Eibon from Hyperborea.

=== Creating Spells

Use the following template to model a spell:

*Name*\
X MP, X WIL, dX Insight, X Broken notches, (opposed), X Casting Time
- Engaging descriptor of effects

#pagebreak()

#page(background: image("eldritch_instinct_charsheet.png", fit: "cover"), numbering: none)[
  #pagebreak()
]

#page(background: image("images/Émile Beau design-shroud-1600.jpg", fit: "cover", width: 107%), numbering: none)[
    #place(bottom + center, dy: -35pt)[#rect(fill: rgb(234, 234, 239), stroke: 3pt + black, inset: 2em, radius: 0.3em)[
    #par(justify: false)[#text(size: 15pt)[An Adventure Game where players act as curious investigators of the strange and unexplained. 
    
    They will take on delusional cultists, hide from stalking shadows and face terrifying monstrosities.

*Writing, Design & Layout*\
Linus Weber

*Editing*\
Carl Apostle | CrlBox

*Copyediting*\
xxx

*Character Sheet*\
xxx
  ]]]]
]