hombre(enrique_7).
hombre(enrique_8).
hombre(eduardo).
hombre(arturo).

mujer(catalina).
mujer(maria).
mujer(ana).
mujer(isabel).
mujer(juana).
mujer(margarita).

progenitor(enrique_8,maria).
progenitor(catalina,maria).
progenitor(enrique_8,isabel).
progenitor(ana,isabel).
progenitor(enrique_8,eduardo).
progenitor(juana,eduardo).
progenitor(enrique_7,enrique_8).
progenitor(enrique_7,margarita).
progenitor(enrique_7,arturo).



conyuge(enrique_8,catalina).
conyuge(enrique_8,ana).
conyuge(enrique_8,juana).

antepasados_de(X):-progenitor(M,X),write(M).

abuelo(X,Y):-progenitor(M,Y),progenitor(X,M),hombre(X).
abuela(X,Y):-progenitor(M,Y),progenitor(X,M),mujer(X).

hermano(X,Y):-progenitor(M,Y),progenitor(M,X),hombre(X).
hermana(X,Y):-progenitor(M,Y),progenitor(M,X),mujer(X).

tio(X,Y):-progenitor(M,Y),hermano(M,X).
tia(X,Y):-progenitor(M,Y),hermana(M,X).