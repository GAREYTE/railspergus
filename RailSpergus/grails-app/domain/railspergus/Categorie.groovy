package railspergus

class Categorie {
	String name
		
	String toString() {
		"${name} "
	}
	static constraints = { 
    	name nullable:false 
	}
}
