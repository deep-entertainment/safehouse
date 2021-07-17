# Wardrobe lower drawer

#item #bedroom

The lower drawer of the wardrobe. We need a closed and an open state here. It strangely has a padlock on it.

- Look
  > [marjorie](characters/marjorie.md)
  > A drawer. With a padlock on it. (beat) Strange.

- Use
  - if locked

    > [marjorie](characters/marjorie.md)
    >
    > It's locked.

  - if unlocked and diary is not in inventory

    Play [drawer_opening](../sfx/drawer_opening.md)

    > [marjorie](characters/marjorie.md)
    >
    > What's this?

    Add [diary](items/diary.md) to inventory

    Play [drawer_opening](../sfx/drawer_opening.md)

  - if unlocked and diary is in inventory:

    > [marjorie](characters/marjorie.md)
    >
    > It's empty.
