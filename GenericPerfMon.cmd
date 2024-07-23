:: Generic Performance Monitor Logging
:: In this example, we are using a five minute capture interval - the rest of the parameters are fairly straightforward.  Remember that in both of these cases, you will need to use LOGMAN.EXE with the START verb and specifying the name of the Data Collector Set to begin the capture.  These samples work on all Windows Operating Systems from Windows XP onwards.


logman.exe create counter Perf-Counter-Log -f bincirc -v mmddhhmm -max 250 -c "\LogicalDisk(*)\*" "\Memory\*" "\Network Interface(*)\*" "\Paging File(*)\*" "\PhysicalDisk(*)\*" "\Process(*)\*" "\Redirector\*" "\Server\*" "\System\*"  -si 00:05:00


