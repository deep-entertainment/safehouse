# Wardrobe lower drawer

#item #bedroom 

The lower drawer of the wardrobe. We need a closed and an open state here.

- Look
  > [marjorie](characters/marjorie.md)
  > A drawer. With a padlock on it. (beat) Strange.

- Use
  - if locked

    > [marjorie](characters/marjorie.md)
    >
    > It's locked.

  - if unlocked and diary is not in inventory
    *SFX: Drawer open*

    > [marjorie](characters/marjorie.md)
    >
    > What's this?

    Add [diary](items/diary.md) to inventory

    *SFX: Drawer closed*

  - if unlocked and diary is in inventory:

    > [marjorie](characters/marjorie.md)
    >
    > It's empty.