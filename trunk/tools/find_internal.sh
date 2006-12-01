#!/bin/sh

bzcat $* | grep '\(\.c[ :]\)\|\(\.cc[ :]\)' | sort -u
