package railspergus

import java.math.*;

import javax.persistence.*;

import org.openxava.annotations.*;


class Produit {
	Integer numero;
	
	String description;
	
	Categorie categorie;
	
	BigDecimal prixUnitaire;
    static hasOne = {categorie:Categorie}
	static constraints = {
    	categorie nullable:false 
		description nullable:false 
		numero nullable:false 
		}
}
