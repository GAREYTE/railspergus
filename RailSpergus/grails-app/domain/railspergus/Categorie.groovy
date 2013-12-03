package railspergus

class Categorie {
	String name
	static  belongsTo  = {produit:Produit}
	
	String toString() {
		"${name} "
	}
	static constraints = {
    	name nullable:false 
	}
}
