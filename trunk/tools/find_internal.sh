#!/bin/sh

gzcat $* | grep '\(\.c[ :]\)\|\(\.cc[ :]\)' | sort -u
