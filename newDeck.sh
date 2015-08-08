# get args
if [ -z $1 ]; then
  echo "Error: No deck name supplied"
  echo "Usage:"
  echo "    ./newDeck.sh deckName.dck [directoryName]"
  exit;
fi
DECK=$1

if [ -z $2 ]; then
  DIR="Misc/"
else
  DIR=$2
fi

# copy template deck into specified directory as new deck
cp deckTemplate.dck $DIR$DECK

echo "New deck '$DIR$DECK' created"

# open new deck file in sublime
subl $DIR$DECK
