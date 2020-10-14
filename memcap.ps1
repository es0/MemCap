write-host "Dumping Memory.."
Start-Process -FilePath "C:\Tools\DFIR\memcap\resources\winpmem_v3.3.rc3.exe" -ArgumentList "-o C:\Tools\DFIR\memcap\memory\test1.raw --format raw -dd"
write-host "Converting Memory dump to img format"
Start-Process -FilePath "C:\Tools\DFIR\memcap\resources\winpmem_v3.3.rc3.exe" -ArgumentList "C:\Tools\DFIR\memcap\memory\test1.raw --mode PhysicalMemory -o C:\Tools\DFIR\memcap\memory\memimg.img"

write-host "[[ DONE! ]]"