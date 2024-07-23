::High CPU Issue
:: In this example, we have a capture interval of five seconds, with a Maximum Log size of 250MB.  The Performance Counters that we are capturing are fairly generic.

logman.exe create counter High-CPU-Perf-Log -f bincirc -v mmddhhmm -max 250 -c "\LogicalDisk(*)\*" "\Memory\*" "\Network Interface(*)\*" "\Paging File(*)\*" "\PhysicalDisk(*)\*" "\Process(*)\*" "\Redirector\*" "\Server\*" "\System\*" "\Thread(*)\*"   -si 00:00:05


