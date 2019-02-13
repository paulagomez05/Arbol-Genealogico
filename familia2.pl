padrede('claudia','angel').
padrede('luz','daniel').
padrede('carolina','gabriela').
padrede('carolina','juancho').
padrede('javier','gabriela').
padrede('javier','juancho').
padrede('diana','laura').
padrede('claudia','paula').
padrede('claudia','karen').
padrede('harold','paula').
padrede('leonor','harold').
padrede('josue','harold').
padrede('ines','elizabeth').
padrede('enrique','hernando').
padrede('hernando','javier').
padrede('hernando','luz').
padrede('hernando','diana').
padrede('hernando','claudia').
padrede('elizabeth','diana').
padrede('elizabeth','javier').
padrede('elizabeth','carolina').
padrede('elizabeth','claudia').


hijode(A,B):-padrede(B,A).
abuelode(A,B):-padrede(A,C), padrede(C,B).
hermanode(A,B):-padrede(C,A), padrede(C,B), A \== B.
familiarde(A,B):-padrede(A,B).
familiarde(A,B):-abuelode(A,B).
familiarde(A,B):-hermanode(A,B).
escasado(A,C):-hijode(B,A),hijode(B,C),C\==A.
escasado(A):-hijode(B,A),padrede(C,B), C\==A.
esfeliz(A):-not(escasado(A)).
tiode(A,B):-hermanode(A,C),padrede(C,B).
primode(A,B):-padrede(C,A),tiode(C,B).
sobrinode(A,B):-tiode(B,A).
nietode(A,B):-abuelode(B,A).






