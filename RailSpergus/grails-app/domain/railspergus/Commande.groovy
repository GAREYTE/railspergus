package railspergus;


 class Commande  {
	
	 Integer annee
	
	 Integer numero
	
	 Date dateCommande
	
	 Salarie prisePar
	
	 Date datePreparation
	
	 Salarie preparePar
	
	 Date dateLivraison
	
	 Salarie livrePar
	
	 Integer tva
	
	 Client client
	
	 String remarque
	 
	 Set details
	
	 static hasMany = [details:CommandeDetail]
}
