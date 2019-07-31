class Utilisateurs {
    int id;
    String nom;
    String prenom;
    String telephone;
    String adresse;
    String email;
    String profil;
    

    Utilisateurs({
        this.id,
        this.nom,
        this.prenom,
        this.telephone,
        this.adresse,
        this.email,
        this.profil,
      
    });

    factory Utilisateurs.fromJson(Map<String, dynamic> data) => Utilisateurs(
        id: data["id"],
        nom: data["nom"],
        prenom: data["prenom"],
        telephone: data["telephone"],
        adresse: data["adresse"],
        email: data["email"],
        profil:  data["profil"],
        

    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nom": nom,
        "prenom": prenom,
        "telephone": telephone,
        "adresse": adresse,
        "email": email,
        "profil": profil,
        
    };
}