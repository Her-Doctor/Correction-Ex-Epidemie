program Epidemie;

uses crt;
{
//AlGO de depart (Original)

//BUT: Dterminer le nombre de jours que prendrait une épidémie pour infecter la totalité de la population
//ENTREES: Un entier indiquant le nombrer d'habitants total
//SORTIES: Un entier indiquant le nombre de jours pris par lépidémie pour infecter toutnle monde

VAR
	nbpopulation,nbmalade,nbjour,test:ENTIER


	DEBUT

		REPETER
			DEBUT

				nbmalade<-1
				nbjour <-1




					REPETER
						DEBUT	
							ECRIRE "Entrez la population totale"									//Empêche de rentrer des valeurs négatives.									
							LIRE nbpopulation																
						FIN
						JUSQU'A nbpopulation > 0



						TANT QUE nbmalade<nbpopulation 												//BOUCLE décompant le nombre d'infectés chaque jour selon la 
							DEBUT																		fonction x+(x*2) (Chaque infecté en crée 2 par jours, le 
								nbjour:=nbjour+1														double de malades s'additionne donc chaque jour au nombre 	
								nbmalades:=nbmalade+ (nbmalade*2)										de malades initial.).
							FIN


						ECRIRE "La population sera contaminée au bout de" & nbjours & "jours"
						ECRIRE "Veuillez entrer 0 pour quitter"
						LIRE test


			FIN
			JUSQU'A test=0																			//Permet de relancer le programme ou de le quitter.
	FIN.
			JEUX d'ESSAI
			ENTREE:						
			nbpopulation=-1					nbpopulation=	27						
											JOUR 1:=1
											JOUR 2: 1+(1*2)=3
											JOUR 3: 3+(3*2)=9
											JOUR 4: 9+(9*2)=27
			SORTIE:
			Saisie impossible				4


//CORRECTION
//inconvénient:
// -toutes les boucles ont un "debut" et une "fin" , comme au pascal , or  en algo on ne l'écrit pas
// exemple "tantque" ce termine par "fintantque" et le "repeter" se termine deja par "jusqua"
//Note : 18/20

}
VAR
	nbpopulation,nbmalade,nbjour,test: INTEGER;
BEGIN
	clrscr;
	REPEAT
		begin
			nbmalade:=1;
			nbjour:=1;
			REPEAT
				begin
					writeln('Entrez la population totale'); //Empêche de rentrer des valeurs négatives.
					readln(nbpopulation);
				end;
			UNTIL nbpopulation >0;

			WHILE nbmalade < nbpopulation DO
				begin
					nbjour:=nbjour+1;
					nbmalade:=nbmalade+(nbmalade*2);
				end;
			writeln('La population sera contaminee au bout de ',nbjour,' jours');
			writeln('veuillez entrer 0 pour sortir');
			readln(test); //Permet de relancer le programme ou de le quitter.
		end;
	UNTIL test=0;
END.

