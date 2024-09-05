podman run -p 8889:8888 -v $(pwd):/app py-data-analysis:1

podman build -t py-data-analysis:1 .



## fedora - permission error

Error with `podman build`
```
/bin/sh: error while loading shared libraries: /lib/x86_64-linux-gnu/libc.so.6: cannot apply additional memory protection after relocation: Permission denied
```

fix: `restorecon -RFv $HOME/.local/share/containers`
