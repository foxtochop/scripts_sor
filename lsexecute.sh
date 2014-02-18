#!/bin/bash
directory=$1
ls -l $directory | grep -P "...x" | cut -c50-
