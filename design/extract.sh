#!/usr/bin/env bash

DIFF=0

if [ "$1" == '-d' ]
then
    DIFF=1
fi

TEMP1=$(mktemp)
TEMP2=$(mktemp)

function dodiff() {
    MISSING=$(diff --new-line-format= --unchanged-line-format= --old-line-format='%L' $TEMP1 $TEMP2)
    if [ "$MISSING" != "" ]
    then
        echo "Missing in overview:"
        echo
        echo -e "$MISSING"
        echo
    fi
    ONLY=$(diff --new-line-format='%L' --unchanged-line-format= --old-line-format= $TEMP1 $TEMP2)

    if [ "$ONLY" != "" ]
        then
        echo "Only in overview:"
        echo
        echo -e "$ONLY"
        echo
    fi
}

# Items

echo "#### Items"
echo

ggrep -oP '(?<!##### )`[a-z_0-9]+`' gdd.md | sort | uniq | sed -re "s/^/##### /gi" > $TEMP1

if [ $DIFF -eq 0 ]
then
    cat $TEMP1
else
    ggrep -oP '##### `[a-z_0-9]+`' gdd.md | sort | uniq > $TEMP2
    dodiff
fi

echo

# Rooms

echo "#### Rooms"
echo

ggrep -oP '(?<!##### )`[A-Z_0-9]+`' gdd.md | sort | uniq | sed -re "s/^/##### /gi" > $TEMP1

if [ $DIFF -eq 0 ]
then
    cat $TEMP1
else
    ggrep -oP '##### `[A-Z_0-9]+`' gdd.md | sort | uniq > $TEMP2

    dodiff
fi

echo

# SFX

echo "### SFX"
echo

ggrep -oP '\*SFX: ([^*]+)\*' gdd.md | sed -re 's/\*SFX: ([^*]+)\*/#### SFX: \1/gi' | sort | uniq > $TEMP1

if [ $DIFF -eq 0 ]
then
    cat $TEMP1
else
    ggrep -oP '#### SFX: .+' gdd.md | sort | uniq > $TEMP2

    dodiff
fi

echo

# Ambient

echo "### Ambient"
echo

ggrep -oP '\*AMBIENT: ([^*]+)\*' gdd.md | sed -re 's/\*AMBIENT: ([^*]+)\*/#### AMBIENT: \1/gi' | sort | uniq > $TEMP1

if [ $DIFF -eq 0 ]
then
    cat $TEMP1
else
    ggrep -oP '#### AMBIENT: .+' gdd.md | sort | uniq > $TEMP2

    dodiff
fi

echo

# Music

echo "### Music"
echo

ggrep -oP '\*MUSIC: ([^*]+)\*' gdd.md | sed -re 's/\*MUSIC: ([^*]+)\*/#### MUSIC: \1/gi' | sort | uniq > $TEMP1

if [ $DIFF -eq 0 ]
then
    cat $TEMP1
else
    ggrep -oP '#### MUSIC: .+' gdd.md | sort | uniq > $TEMP2

    dodiff
fi

echo

# Characters

echo "### Characters"
echo

ggrep -oP '(?<!\*)\*([A-Z]+)\*(?!\*)' gdd.md | sort | uniq | sed -re "s/^/### /gi" > $TEMP1

if [ $DIFF -eq 0 ]
then
    cat $TEMP1
else
    ggrep -oP '### \*[A-Z]{2,}\*' gdd.md | sort | uniq > $TEMP2

    dodiff
fi

echo



# Clean up

rm $TEMP1 &>/dev/null
rm $TEMP2 &>/dev/null
