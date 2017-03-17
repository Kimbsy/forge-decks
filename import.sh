#!/bin/bash
#
# Script to copy over all decks.

CYAN='\033[0;36m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

for format in {Modern,Standard}; do
	printf "${CYAN}Importing $format decks...${NC}\n"
	for event in "$format"/*; do
		printf "  ${GREEN}${event#$format/}${NC}\n"
		for deck in "$event"/*.dck; do
			echo "  >> ${deck#$format/$event/}"
			cp "$deck" ~/.forge/decks/constructed/
		done
		echo ""
	done
done

printf "${CYAN}Importing misc decks...${NC}\n"

for misc_deck in Misc/*.dck; do
	echo "  >> ${misc_deck#Misc/}"
	cp "$misc_deck" ~/.forge/decks/constructed/
done

printf "\n${CYAN}Import complete.${NC}\n"
