#!/usr/bin/env bash

cd ./module/Quad/OpenSolo || exit

ansible-lint

molecule destroy

molecule converge
#molecule idempotence