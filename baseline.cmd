:: logman create counter BASELINE : This creates the BASELINE Data Collector on the local machine
:: 
:: -f bincirc -max 500 -si 2 : This piece of the command specifies that we are creating a Binary Circular file, sets the Maximum Log file size to 500MB, sets the Capture Interval at 2 seconds
::--v -o "e:\perflogs\SERVERBASELINE" : In this part of the command, we turn off the versioning information, and set the Output Location and Filename.  The Performance Monitor log will be created with a .BLG extension
::–cf \\<FILESERVER>\Baseline\Baseline.config : Finally, we point the LOGMAN utility to the location of our standard counter configuration file
::
:: To check status of the collector use LOGMAN.EXE QUERY
:: To start the collector use LOGMAN.EXE START BASELINE

logman create counter BASELINE -f bincirc -max 500 -si 2 --v -o "%USERPROFILE%\PERFBASELINE" -cf "%USERPROFILE%\Baseline.config%"