#!/bin/bash

path=$1
name=$2

# Component template
comp="import React, { Component } from 'react';

import styles from './style.scss';


class ${name} extends Component {

    render() {
        return (
            <div>${name}</div>
        );
    }
}

export default ${name};
"

style="// add styles here"

(
set -e

echo "Creating $path"
mkdir -p $path

echo "Creating ${path}/index.js"
echo "$comp" > "${path}/index.js"

echo "Creating ${path}/style.scss"
echo "$style" > "${path}/style.scss"
echo "Done"
)
