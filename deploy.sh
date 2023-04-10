#!/bin/bash
echo"
imports:
    - { resource: 'parameters.yml' }

parameters:
  database:
    doctrine:
      dbname: 'highlearning'
      host: 'rds.prod.aurlom.local'
      port: ~
      user: 'administrator'
      password: '$0'
  broker:
    rabbitmq:
      connections:
        default:
          host: '127.0.0.1'
          port: 5672
          login: 'highlearning'
          password: '$1'
          vhost: 'rmq.high-learning.com'
  search:
    elastic:
      hosts:
        - default:
          host: 'elasticsearch.prod.aurlom.local'
          port: '9200'
          scheme: 'https'
          user: 'highlearning'
          pass: '$2'
" > parameters_prod.yml
