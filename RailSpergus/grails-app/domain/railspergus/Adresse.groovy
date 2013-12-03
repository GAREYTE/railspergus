package railspergus


 class Adresse {
	String rue
	String codePostal
	
	String ville 
	String toString() {
		"${codePostal} ${rue} ${ville}"
	}

	static constraints = {
		
	}
}
