#!/bin/bash

# sh gen.sh
# don't create mustEmbedUnimplemented*** method

protoc --go_out=. \
    --go-grpc_out=require_unimplemented_servers=false:. \
    protoc/protoc.proto
