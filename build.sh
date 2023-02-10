#!/bin/zsh

rm -Rf $PHASEREDITOR_HOME/PhaserEditor2D-v3-beta-docs-html/docs

# build docs

cd $PHASEREDITOR_HOME/PhaserEditor2D-v3-docs
./build.sh
cp -R _build/html $PHASEREDITOR_HOME/PhaserEditor2D-v3-beta-docs-html/

# clean

cd $PHASEREDITOR_HOME/PhaserEditor2D-v3-beta-docs-html/
mv html docs
rm -R docs/_sources
rm -R docs/.doctrees
cp _config.yml.template docs/_config.yml
cp CNAME.template docs/CNAME
