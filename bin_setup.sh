#!/bin/bash

function install_elm_format {
  tar -zvxf bin/elm-format-0.17-0.3.1-alpha-mac-x64.tgz
  mv elm-format /usr/local/bin/
}

install_elm_format
