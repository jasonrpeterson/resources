# Getting TSS and expanding it
md C:\Software\TSS
Set-ExecutionPolicy -scope Process -ExecutionPolicy RemoteSigned -Force
Start-BitsTransfer https://aka.ms/getTSS -Destination C:\Software\TSS.zip
Expand-Archive -LiteralPath C:\Software\TSS.zip -DestinationPath C:\Software\TSS -force
cd C:\Software\TSS
