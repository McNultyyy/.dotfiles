echo "Microsoft Windows [Version $(uname -r)]"
echo "Copyright (c) $(date +"%Y") Microsoft Corporation. All rights reserved."
echo
PS1="C:\$(pwd | sed 's://:\\\\\\\:g')> "


