package railspergus;

import javax.persistence.*;

import org.openxava.annotations.*;

import fr.jg.aspergus.calculator.*;
 class Salarie {

	 Integer numero
	 String nom
	 Boolean visible
	
	static constraints = {numero nullable:false 
		nom nullable:false  }
}
