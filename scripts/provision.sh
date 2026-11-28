#!/bin/bash

ansible-playbook ansible/local.yml --ask-become-pass --ask-vault-pass
