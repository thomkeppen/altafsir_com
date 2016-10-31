#!/bin/bash

find . -type d -name 'madhab_??' -exec sh -c "echo {} ; git add {} && git commit --untracked-files=no {} -m 'Last couple of days worth of downloading' && git push" \;
