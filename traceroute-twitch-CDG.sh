#!/bin/bash
for i in 1 2 3 4 5
do
  echo "---" >> result.txt
  echo "---" >> result.txt
  echo "---" >> result.txt
  echo "---" >> result.txt
  echo "---" >> result.txt
  echo "--- Test number $i ---" >> result.txt
  echo "--- Test number $i en cours..."
  traceroute -T -p 1935 live-cdg.justin.tv >> result.txt 
done
