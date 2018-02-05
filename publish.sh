#!/usr/bin/env bash
version=`cat bower.json | perl -nle 'print $& if m{(?<="version": ")[^"]+}'`
git tag v${version}
git push origin --tags