#!/bin/bash
[ "$(node dist/index.js)" == "Hello" ] || exit 1
