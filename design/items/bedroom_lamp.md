# Lamp

#item #bedroom

A hanging lamp with spherical, green lampshade that hides a sturdy hook that the lamp is attached to. The light is only visible in the night scenes and accentuates the area around the door, but doesn't cast hard shadows for the rest of the room.

- Look

  - If lamp is working

  > [marjorie](characters/marjorie.md)
  > The light is a bit too bright for my taste, but it's all I got.

  - If lamp is not working

    > [marjorie](characters/marjorie.md)
    >
    > Oh, the bulb's dead. I need to replace it

  - If bulb was replaced before

    Show [bedroom_lamp](../closeups/bedroom_lamp.md)
- Use
  - If [stepladder](stepladder.md) was used and [broken_bulb](broken_bulb.md) was not taken:

    [marjorie](characters/marjorie.md) unscrews the bulb. Add [broken_bulb](items/broken_bulb.md) to inventory.
  - If [stepladder](stepladder.md) was used and [broken_bulb](broken_bulb.md) was taken:

	> [marjorie](../characters/marjorie.md)
    > Let's find a replacement for the broken bulb.

  - with [bulb](bulb.md) If [stepladder](stepladder.md) was used:

    See [PUZZLE 3 1: Fixing the lamp](../gdd.md#PUZZLE%203%201:%20Fixing%20the%20lamp)

  - if [stepladder](stepladder.md) was not used on [Day 3](../gdd.md#Day%203):
    > [marjorie](../characters/marjorie.md)
    > I can't reach it
  - Default

    > [marjorie](characters/marjorie.md)
    > There's no switch on the lamp itself.
