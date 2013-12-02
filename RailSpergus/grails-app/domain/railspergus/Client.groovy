package railspergus


class Client {
	
	Integer numero;
	
	String nom;
	
	String prenom;
	Adresse adresse;

	String telephone;
	String email;
	static constraints = {numero nullable:false }
	
	static hasOne = {adresse:Adresse}
	
	//private Collection<Commande> commande;
	

	
}
