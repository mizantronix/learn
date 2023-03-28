#!/bin/bash

# create new file (edit /etc/sudoers -> include /etc/sudoers.d if commented)
touch /etc/sudoers.d/mizantornix
echo 'mizantronix ALL=(ALL)NOPASSWD:ALL' >> /etc/sudoers.d/mizantronix