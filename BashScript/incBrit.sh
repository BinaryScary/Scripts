#!/bin/bash
brit=$(xbacklight -get)
zero=0
python - $brit $zero<<EOF
import subprocess
if ($brit <= $zero):
    subprocess.run(["xbacklight", "-set", "0.12"])
else:
    subprocess.run(["xbacklight", "-inc", "5"])
EOF
