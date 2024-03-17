create event chiffre_affaire_hebdomadaire
	ON schedule every 5 minute
    DO
		call chiffre_affaire();