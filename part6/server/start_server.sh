#!/bin/bash
spawn-fcgi -p 81 ./my_server
nginx -g "daemon off;"