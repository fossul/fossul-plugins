#!/bin/bash

#Copyright 2019 The Fossul Authors.
#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.
#

function discover {
    echo "INFO *** Application Discover ***"
    exit 0
}

function quiesce {
    echo "INFO *** Application Quiesce ***"
    exit 0
}

function unquiesce {
    echo "INFO *** Application Unquiesce ***"
    exit 0
}

function info {
    pluginName="sample-app"
    pluginDesc="A sample plugin"
    pluginVer="1.0.0"
    pluginType="app"
    capDiscover="discover"
    capQuiesce="quiesce"
    capUnquiesce="unquiesce"
    capInfo="info"
    capPreRestore="preRestore"
    capPostRestore="postRestore"

    echo -e "{\"name\":\""$pluginName"\", \"description\":\""$pluginDesc"\", \"version\":\""$pluginVer"\", \"type\":\""$pluginType"\", \"capabilities\":[{\"name\":\""$capDiscover"\"},{\"name\":\""$capQuiesce"\"},{\"name\":\""$capUnquiesce"\"},{\"name\":\""$capInfo"\"},{\"name\":\""$capPreRestore"\"},{\"name\":\""$capPostRestore"\"}]}"
    exit 0
}

function preRestore {
    echo "INFO *** Application Pre Restore ***"
    exit 0
}

function postRestore {
    echo "INFO *** Application Post Restore ***"
    exit 0
}

case "$1" in
  "--discover")
    discover
    ;;
  "--quiesce")
    quiesce
    ;;
  "--unquiesce")
    unquiesce
    ;;
  "--info")
    info
    ;;
  "--preRestore")
    info
    ;;   
  "--postRestore")
    info
    ;;               
  *)
    echo "ERROR Argument is invalid! Valid arguments are: --discover, --quiesce, --unquiesce, --info, --preRestore and --postRestore"
    exit 1
    ;;
esac