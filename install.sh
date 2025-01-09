#!/bin/zsh

if [[ $# -ne 1 ]]; then
    echo "Wrong number of arguments. Usage: ./install.sh </path/to/profile-file>" >&2
    return 1
fi

CURRENT_DIR=$(dirname -- "$(readlink -f -- "$0";)";)
SRC_DIR=$CURRENT_DIR/src/gost-7-32/tex/latex
BIBLATEX_DIR=$SRC_DIR/gost-7-32/bibtex/bst
PROFILE_FILE=$1

if [ ! -f $PROFILE_FILE ]; then
    echo "Profile file doesn't exist"
    return 1
fi

echo "[i] Profile file: $PROFILE_FILE" >&1
echo "[i] LaTeX files: $SRC_DIR" >&1
echo "[i] Biblatex files: $BIBLATEX_DIR" >&1

#
# Write header
#

echo "" >> $PROFILE_FILE
echo "# Begin GOST LaTeX section" >> $PROFILE_FILE
echo "#" >> $PROFILE_FILE

#
# Set variables
#

echo "[i] Setting environment variables" >&1

echo "export TEXINPUTS=$SRC_DIR:\$TEXINPUTS" >> $PROFILE_FILE
echo "export BSTINPUTS=$BIBLATEX_DIR:\$BSTINPUTS" >> $PROFILE_FILE

echo "[+] Environment variables done" >&1

#
# Write trailer
#

echo "#" >> $PROFILE_FILE
echo "# End GOST LaTeX section" >> $PROFILE_FILE
echo "" >> $PROFILE_FILE

echo "[+] Installation completed. Please source your profile file or restart terminal" >&1

