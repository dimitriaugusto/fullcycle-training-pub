sudo docker run -it -v /home/vntdilo/repo/dimilo/fullcycle-training/fullcycle-training-repo/docker/desafio-go/:/go/src \
       golang:1.20rc3-alpine3.17 \
       go build -o /go/src /go/src/hello-full-cycle.go