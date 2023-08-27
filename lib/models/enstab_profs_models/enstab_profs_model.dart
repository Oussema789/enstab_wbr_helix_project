class EnstabProfs {
  String name;
  String position;
  String email;
  String imagePath;

  EnstabProfs({
    required this.name,
    required this.position,
    required this.email,
    required this.imagePath,
  });
}

List<EnstabProfs> enstabProfList = [
  EnstabProfs(
    name: "Dr. Hamouda Khechini",
    position: "Enstab's Director",
    email: "hamouda.khechini@enstab.ucar.tn",
    imagePath: "assets/team_members/img_1.jpg",
  ),
  EnstabProfs(
    name: "Dr. Amira Kaddour",
    position: "Assistant Professor at ENSTA-B",
    email: "Amira.kaddour@ensta.u-carthage.tn",
    imagePath: "assets/team_members/img_3.jpg",
  ),
  EnstabProfs(
    name: "Dr. Sana Kordoghli",
    position: "Assistant Professor at ENSTA-B",
    email: "sana.kordoghli@enstab.ucar.tn",
    imagePath: "assets/team_members/img_2.jpg",
  ),
  EnstabProfs(
    name: "Dr. Dorra Lounissi",
    position: "Assistant Professor at ENSTA-B",
    email: "dorra.lounissi@enstab.ucar.tn",
    imagePath: "assets/team_members/img_4.jpg",
  ),
  EnstabProfs(
    name: "Dr. Zied Antar",
    position: "Assistant Professor at ENSTA-B",
    email: "Zied.Antar@ensta.u-carthage.tn",
    imagePath: "assets/team_members/img_5.jpg",
  ),
  EnstabProfs(
    name: "Oussama Khelifi",
    position: "Advanced Technologies Engineering Student",
    email: "oussamakhlifi000@gmail.com",
    imagePath: "assets/team_members/img_6.jpg",
  ),
];
