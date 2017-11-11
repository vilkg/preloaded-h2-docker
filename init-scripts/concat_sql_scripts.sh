#!/bin/bash

set -e
set -x

scripts_dir=${H2_HOME}/init

cat ${scripts_dir}/*.sql >> ${scripts_dir}/init.sql
rm -rf ${scripts_dir}/schema
