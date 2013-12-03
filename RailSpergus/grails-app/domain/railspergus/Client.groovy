package railspergus


class Client {
	static scaffold = true
	
	Integer numero
	
	String nom
	
	String prenom
	Adresse adresse

	String telephone
	String email
	
	String toString() {
		"${nom} ${prenom}"
	}
	static constraints = {numero nullable:false }
	
	
	//private Collection<Commande> commande;
	

	
}
