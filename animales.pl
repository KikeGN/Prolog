instancia(avestruz, ave).
instancia(albatroz,ave).
instancia(ballena,mamifero).
instancia(tigre,mamifero).

subclase(ave,animal).
subclase(mamifero,animal).

propiedad(avestruz,patas,largas).
propiedad(avestruz,vuela,no_puede).
propiedad(albatroz,vuela,muy_bien).
propiedad(avestruz,es_un,ave).
propiedad(albatroz,es_un,ave).
propiedad(ave,pone,huevos).
propiedad(ave,tiene,plumas).
propiedad(ave,vuela,bien).
propiedad(ave,es_un,animal).
propiedad(animal,puede,respirar).
propiedad(mamifero,es_un,animal).
propiedad(mamifero,tiene,pelo).
propiedad(mamifero,da,leche).
propiedad(ballena,es_un,mamifero).
propiedad(ballena,tine,piel).
propiedad(ballena,vive_en,mar).
propiedad(tigre,es_un,mamifero).
propiedad(tigre,come,carne).


es(X,Y):-instancia(Y,X).
es(X,Y):-instancia(Y,M),subc(M,X).
subc(C1,C2):-subclase(C1,C2).
subc(C1,C2):-subclase(C1,C3),subc(C3,C2).

prop(X,Y):-propiedad(X,A,B),es(M,X),propiedad(M,N,O),Y=.. [N,O].