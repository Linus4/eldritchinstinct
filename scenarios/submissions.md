---
layout: default
title: Submissions
nav_order: 3
parent: Scenarios
---

# Originals

Send me a message on Discord (linus7017) with a link where your scenario can be accessed. I'll be happy to include it in the list.

# Conversions

- Copy the following template when submitting an adventure to the Eldritch Instinct website.
- The file should be written in Markdown. The filename should be lowercase, and use the *.md suffix (example: cool-scenario.md).
- Make sure the add the "front matter" at the top of the file (the parts starting with the `---` at the beginning) or the submission won't work. For an example, see [here](/scenarios/conversions/roadhouse-feast/) (raw text [here](https://github.com/Linus4/eldritchinstinct/blob/main/scenarios/conversions.md?plain=1)).
- Scenario submissions should _always_ credit the author of the work _as well_ as the name of the person converting the work. 
- Please link to the author, as well as the adventure and (if you're comfortable with it) your own website or contact. 
- If possible, ask for the author's permission. If not, that's OK! We don't generally need it, but it's great to have.

## Submission Template

```
---
layout: default
parent: Conversions
grand_parent: Scenarios
title: Scenario Title
nav_exclude: true
search_exclude: true
---

# Scenario Title

- Based on the [original work](link-to-game-page) by Author Name](link-to-author-site).
- Conversion by [Your Name](link to your contact on the web]

## General Notes
- Put any notes on the conversion here!
- You can list monsters & NPCs separately or by the location they can be found

## Monsters or NPCs

### Monster Name
Monster 1
- Monster special (critical damage, abilities)
- More monster specials, etc.

## Locations
### Location A
#### Weird thing 1
- Notes on weird thing 1

```

Note that the "nav_exclude" and "search_exclude" directives in the Front Matter are for staging purposes only; when the conversion is "complete" they can be removed.