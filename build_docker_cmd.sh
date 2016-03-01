#!/bin/bash

##
# Copyright IBM Corporation 2016
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
##

# This script builds the Kitura sample app on OS X (Travis CI).
# Homebrew (http://brew.sh/) must be installed on the OS X system for this
# script to work.

# If any commands fail, we want the shell script to exit immediately.
set -e

# Build Kitura-CouchDB
cd /root/Kitura-CouchDB
swift build -Xcc -fblocks

# Work in progress...
#echo ">> About to execute test cases for Kitura..."
#swift test
#echo ">> Execution of test cases completed (see above for results)."