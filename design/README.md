# Safe House design

To open the house plan, you need the software [Sweet Home 3D](http://www.sweethome3d.com/de/).

# Design document formatting specifications

* `item` (Items) Things a player can interact with (if only look at them)
  
  * Gather all items for a description paragraph:
    `ggrep -oP '(?<!##### )`[a-z_]+`' Safe\ House\ -\ Game\ Design\ Document.md | sort | uniq | sed -re "s/^/##### /gi"`

* *SFX: * (Sound Effects) Description of sound effects
  
  * Gather all sound effects into a list:
    `ggrep -oP '\*SFX: ([^*]+)\*' Safe\ House\ -\ Game\ Design\ Document.md | sed -re 's/\*SFX: ([^*]+)\*/* \1/gi' | sort | uniq`

* *AMBIENT: * (Ambient sounds) Description of background sound effects
  
  * Gather all ambient sound effects into a list:
    
    `ggrep -oP '\*AMBIENT: ([^*]+)\*' Safe\ House\ -\ Game\ Design\ Document.md | sed -re 's/\*SFX: ([^*]+)\*/* \1/gi' | sort | uniq`

* *MUSIC: * (Music) Music descriptions
  
  * Gather all music descriptions into a list:
    `ggrep -oP '\*MUSIC: ([^*]+)\*' Safe\ House\ -\ Game\ Design\ Document.md | sed -re 's/\*SFX: ([^*]+)\*/* \1/gi' | sort | uniq`

* ALLCAPS: Character names
  
  * Get all characters
    `ggrep -oP '(?<!\*)\*([A-Z]+)\*(?!\*)' Safe\ House\ -\ Game\ Design\ Document.md | sort | uniq`

* Dialogs: Use the > quotation formatting. Begin with the speaking character. Leave an empty line when the speaker changes
  
  * Get all dialogs
    `awk '/^> \*([A-Z]+)\*/{flag=1}/^[^>]/{flag=0}flag' Safe\ House\ -\ Game\ Design\ Document.md`
