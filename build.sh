#!/bin/bash

set -e

./autogen.sh --prefix=/usr --with-selection_color=#558B2F \
        --disable-gnome \
        --disable-flashback \
        --disable-xfce \
        --disable-mate \
        --disable-openbox \
        --with-accent_color=#8BC34A \
        --with-suggestion_color=#689F38 --enable-parallel;

make

make install
