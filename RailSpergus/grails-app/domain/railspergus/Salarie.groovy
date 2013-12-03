package railspergus;

 class Salarie {

	 Integer numero
	 String nom
	 Boolean visible
	
	static constraints = {numero nullable:false 
		nom nullable:false  }
	
	String toString() {
		"${numero} ${nom} "
	}
	
	//static belongsTo = {commande:Commande}
}
