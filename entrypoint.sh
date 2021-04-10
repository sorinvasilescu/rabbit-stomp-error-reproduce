#!/bin/bash
service rabbitmq-server start
rabbitmqctl add_user test test
rabbitmqctl set_user_tags test administrator
rabbitmqctl set_permissions -p / test ".*" ".*" ".*"
service nginx start
/bin/bash