#!/bin/bash

movies=("Inception" "The Matrix" "Interstellar" "The Dark Knight")

# size of the array is 4
# size of index is 0, 1, 2, 3

echo "first movie: ${movies[0]}"
echo "second movie: ${movies[1]}"
echo "third movie: ${movies[2]}"
echo "fourth movie: ${movies[3]}"
echo "All movie: ${movies[@]}"