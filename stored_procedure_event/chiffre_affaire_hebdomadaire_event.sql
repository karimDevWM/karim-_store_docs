create event chiffre_affaire_hebdomadaire
	ON schedule every 5 day
    DO
		call chiffre_affaire();