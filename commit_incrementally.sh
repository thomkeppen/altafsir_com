#!/bin/bash

find . -type d -name 'madhab_??' -exec sh -c "echo {} ; git add {} && git commit {} -m 'Last couple of days worth of downloading' && git push" \;
