# #!/bin/bash

sudo docker build -t gcc:test_inf .

sudo docker run -di --name inf-tst-1 gcc:test_inf

sudo docker ps