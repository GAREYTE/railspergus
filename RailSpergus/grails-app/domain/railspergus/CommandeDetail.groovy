package railspergus;

 class CommandeDetail{
	
	 Commande commande
	 Produit produit
	
	 BigDecimal quantite
	 
	 static belongsTo = {commande:Commande}
}
