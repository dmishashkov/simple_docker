#!/bin/bash
spawn-fcgi -p 8080 ./my_server
service nginx start
