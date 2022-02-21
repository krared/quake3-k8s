# Just 4 fun Quake 3 Arena in k8s

1. Download Quake 3 and ioquake for linux and mv to /app
2. ```sudo chmod 777 /app/ioq3ded.x86_64 /app/ioquake3.x86_64```
3. ```docker build -t qq .```
4. kubectl apply -f quake.yaml
5. on pod ```./ioq3ded.x86_64 +set dedicated 2 +set sv_allowDownload 1 +set sv_dlURL "" +set com_hunkmegs 64 "$@"
 map q3dm17```

https://ioquake3.org/help/sys-admin-guide/#useful
