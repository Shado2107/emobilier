class Offres {
    int id_offres;
    String nom_offres;
    String type;
    String ville;
    String quartier;
    String description;
    String prix;
    String date_enreg;
    String active;
    String active_admin;
    String imgUrl;

    Offres({
        this.id_offres,
        this.nom_offres,
        this.type,
        this.ville,
        this.quartier,
        this.description,
        this.prix,
        this.date_enreg,
        this.active,
        this.active_admin,
        this.imgUrl,
    });

    factory Offres.fromJson(Map<String, dynamic> data) => Offres(
        id_offres: data["id_offres"],
        nom_offres: data["nom_offres"],
       type: data["type"],
        ville: data["ville"],
        quartier: data["quartier"],
        description:  data["description"],
        prix:  data["prix"],
        date_enreg:  data["date_enreg"],
        active:  data["active"],
        active_admin:  data["active_admin"],
        imgUrl: data["imgUrl"],

    );

    Map<String, dynamic> toJson() => {
        "id_offres": id_offres,
        "nom_offres": nom_offres,
        "type":type,
        "ville": ville,
        "quartier": quartier,
        "description": description,
        "prix": prix,
        "date_enreg": date_enreg,
        "active": active,
        "active_admin": active_admin,
        "imgUrl": imgUrl,
    };
}