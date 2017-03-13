#!/bin/bash
procid=$(ps -ef | grep mono | awk '{ print $2 }' | head -1)
kill -9 $procid
procid=$(ps -ef | grep mono | awk '{ print $2 }' | head -2)
kill -9 $procid
procid=$(ps -ef | grep FaultToleranceExamp | awk '{ print $2 }' | head -1)
kill -9 $procid
procid=$(ps -ef | grep FaultToleranceExamp | awk '{ print $2 }' | head -2)
kill -9 $procid
