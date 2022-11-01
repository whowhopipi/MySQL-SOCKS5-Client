export CGO_ENABLED=0
export GOOS=linux
export GOARCH=amd64
go build -a -ldflags '-extldflags="-static"' -o ./build/mysql-socket5-proxy ./
