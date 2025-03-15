#!/bin/bash
echo "Enter a starting number:"
read start_num

countdown() {
  local num=$1
  while [ $num -gt 0 ]; do
    echo "$num"
    sleep 1
    num=$((num - 1))
  done
  echo "Time's up!"
}
countdown $start_num


