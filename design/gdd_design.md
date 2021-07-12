# Safe House design

To open the house plan, you need the software [Sweet Home 3D](http://www.sweethome3d.com/de/).

# Design document formatting specifications

* `item` (Items) Things a player can interact with (if only look at them)
  
  * Gather all items for a description paragraph:
    `ggrep -oP '(?<!##### )`[a-z_0-9]+`' gdd.md | sort | uniq | sed -re "s/^/##### /gi"`
  
* `ROOM` (rooms) Rooms the player an visit
  
  * Gather all rooms for a description paragraph
    `ggrep -oP '(?<!##### )`[A-Z_0-9]+`' gdd.md | sort | uniq | sed -re "s/^/##### /gi"`
  
* *SFX: * (Sound Effects) Description of sound effects
  
  * Gather all sound effects into a list:
    `ggrep -oP '\*SFX: ([^*]+)\*' gdd.md | sed -re 's/\*SFX: ([^*]+)\*/* \1/gi' | sort | uniq`
  
* *AMBIENT: * (Ambient sounds) Description of background sound effects
  
  * Gather all ambient sound effects into a list:
    `ggrep -oP '\*AMBIENT: ([^*]+)\*' gdd.md | sed -re 's/\*SFX: ([^*]+)\*/* \1/gi' | sort | uniq`
  
* *MUSIC: * (Music) Music descriptions
  * Gather all music descriptions into a list:
    `ggrep -oP '\*MUSIC: ([^*]+)\*' gdd.md | sed -re 's/\*MUSIC: ([^*]+)\*/* \1/gi' | sort | uniq`
  
* ALLCAPS: Character names
  * Get all characters
    `ggrep -oP '(?<!\*)\*([A-Z]+)\*(?!\*)' gdd.md | sort | uniq`
  
* Dialogs: Use the > quotation formatting. Begin with the speaking character. Leave an empty line when the speaker changes
  * Get all dialogs
    `awk '/^> \*([A-Z]+)\*/{flag=1}/^[^>]/{flag=0}flag' gdd.md`
  
* TODO: Use TODO:<text> to mark things to do.

  * Get all TODOS

    `ggrep -oP '^TODO: *(.+)$' gdd.md | sed -re 's/^TODO: *(.+)$/ * [ ] \1/gi' | sort | uniq`

