#!/bin/bash

PYSPARK_DRIVER_PYTHON=jupyter PYSPARK_DRIVER_PYTHON_OPTS='notebook' PYSPARK_PYTHON=$PWD/venv/bin/python $SPARK_HOME/bin/pyspark \
    --conf spark.sql.execution.arrow.enabled=true \
    --driver-memory 3g \
    --master local[*] \
    --conf spark.scheduler.mode=FAIR \
    --conf spark.scheduler.allocation.file=scheduler.xml \
    --packages org.apache.spark:spark-sql-kafka-0-10_2.11:2.4.4
