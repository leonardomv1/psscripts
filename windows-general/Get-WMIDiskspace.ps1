gwmi win32_volume -Filter 'drivetype = 3' | select driveletter, label, @{LABEL='GBfreespace';EXPRESSION={"{0:N2}" -f ($_.freespace/1GB)} }