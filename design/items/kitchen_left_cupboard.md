# Left cupboard

#item #kitchen

A small half-height cupboard. It has two doors. We need three views here: closed, opened with stepladder and opened without stepladder.

- Look
  - If closed

    > [marjorie](characters/marjorie.md)
    >
    > Just a cupboard.
  - If opened when [stepladder](stepladder.md) wasn't taken
    > [marjorie](../characters/marjorie.md)
    > There's a stepladder in it.
  - If opened
    > [marjorie](../characters/marjorie.md)
    > It's empty now.

- Use
  - if closed and [stepladder](stepladder.md) wasn't taken

    Play [cupboard_opening](../sfx/cupboard_opening.md)

    > [marjorie](characters/marjorie.md)
    >
    > Oh, it's mostly empty. (beat) Except for a stepladder.

    Show the open cupboard with the [stepladder](items/stepladder.md) in it.

  - if opened and [stepladder](stepladder.md) wasn't taken

    Add [stepladder](stepladder.md).
    Remove stepladder from view.

  - if opened and [stepladder](stepladder.md) was taken

    Play [cupboard_closing](../sfx/cupboard_closing.md)
	Show closed view
