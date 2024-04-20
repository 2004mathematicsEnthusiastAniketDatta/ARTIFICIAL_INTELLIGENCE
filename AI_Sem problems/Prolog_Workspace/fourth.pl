cat(fubby).
hasblackspots(fubby).
haswhitespots(fiagro).
dog(fiagro).

owns(mary,pet):-cat(pet),hasblackspots(pet).
loves(X,Y):-owns(X,Y).

