#!/bin/bash

if grep -q "FREETYPE_PROPERTIES=" /etc/environment; then
  echo "FREETYPE_PROPERTIES already exists"
else
  echo "FREETYPE_PROPERTIES=\"cff:no-stem-darkening=0 autofitter:no-stem-darkening=0\"" >> /etc/environment
  echo "FREETYPE_PROPERTIES added"
fi
