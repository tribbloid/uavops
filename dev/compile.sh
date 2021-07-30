#!/usr/bin/env bash

ansible-lint

molecule destroy

molecule converge
#molecule idempotence