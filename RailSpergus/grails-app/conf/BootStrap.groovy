import railspergus.* 

class BootStrap {

    def init = { servletContext ->
		def cat1 =new Categorie(name: "Détails" )
		cat1.save()
	
		def prod1 = new Produit(prixUnitaire: 5.5,  categorie: cat1,numero: 1,description: "16+"   )	 
		prod1.save(true)
		def prod2 = new Produit(prixUnitaire: 6.5,categorie: cat1,numero: 2,description: "22+"   )
		prod2.save(true)
		def prod3 = new Produit(prixUnitaire: 4.5,categorie: cat1,numero: 3,description: "10/16"   )
		prod3.save(true)
		def cat2 =new Categorie(name: "Conserve" )
		cat2.save(true)
		
		
		def prod4 = new Produit(prixUnitaire: 5, categorie: cat2,numero: 4,description: "16+"   )
		prod4.save()
		def prod5 = new Produit(prixUnitaire: 6,  categorie: cat2,numero: 5,description: "22+"   )
		prod5.save()
		def prod6 = new Produit(prixUnitaire: 2,  categorie: cat2,numero: 6,description: "10/16"   )
		prod6.save()
		def sal1 = new Salarie(numero: 1,nom: "Fabrice" ,visible: true  )
		sal1.save(true)
		def sal2 = new Salarie(numero: 2,nom: "Nicole" ,visible: false  )
		sal2.save(true)
		
	
		def ad = new Adresse(codePostal: 97422,rue: "bec alouette",ville: "La saline"   ).save(true)
		
		def client1 = new Client(prenom: "jerome", adresse: ad, nom: "GAREYTE",numero: 1  )
		client1.save(true)
		def client2 = new Client(prenom:" aurelie" ,adresse: ad, nom: "NOEL",numero: 2  )
		client2.save(true)
		
		
    }
    def destroy = {
		
    }
}
