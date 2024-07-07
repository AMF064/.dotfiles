set debuginfod enabled off
set disassembly-flavor intel
set follow-fork-mode child
# Good for when I'm checking my ROP chains
#define hook-stop
#x/i $rip
#x/20w $rsp
#end
