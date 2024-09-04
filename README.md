podman run -p 8889:8888 -v $(pwd):/app py-data-analysis:1

podman build -t py-data-analysis:1 .