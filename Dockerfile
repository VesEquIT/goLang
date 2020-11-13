FROM golang:latest

RUN mkdir /build
WORKDIR /build
COPY . .

RUN export GO111MODULE=ON
RUN go get github.com/VesEquIT/goLang/goWebAPI/main
RUN cd /build && git clone https://github.com/VesEquIT/goLang.git

RUN cd /build/goWebAPI/main && go build

EXPOSE 8080

ENTRYPOINT [ "/goWebAPI/main/main" ]