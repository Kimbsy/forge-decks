# get args
if [ -z $1 ]; then
  echo "Error: No deck name supplied"
  echo "Usage:"
  echo "    ./newDeck.sh deckName [directoryName]"
  exit;
fi
DECK=$1

if [ -z $2 ]; then
  DIR="Misc/"
else
  DIR=$2
fi

# create new deck
echo "[metadata]
Name=$1
[Main]

[Sideboard]
" > "$DIR$DECK.dck"

echo "New deck file '$DIR$DECK.dck' created"

# open new deck file in sublime
subl "$DIR$DECK.dck"
