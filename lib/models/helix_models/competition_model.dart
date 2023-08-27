import '../../widgets/Generate_Image_List.dart';

class EnstabCompetitions {
  final bool isInternal;
  final String type;
  final String description;
  final String image;
  final Future<List<String>> images;

  EnstabCompetitions({
    required this.image,
    required this.isInternal,
    required this.type,
    required this.description,
    required this.images,
  });
}

List<EnstabCompetitions> internalEnstabCompetitions = [
  EnstabCompetitions(
    image:
        "assets/associations/electronix/events/ensta_robots_1/ensta_robots_8.jpg",
    type: "ENSTAROBOT 1 | ACE AGE",
    description:
        '''The inaugural ENSTA ROBOTS event has been officially launched, generating great excitement for what lies ahead. Presented by ELECTRONIX ENSTAB & IEEE ENSTAB SB, this robotics competition, themed "ESCAPING THE ICE AGE," features three captivating subcompetitions: Artificial Intelligence, All Terrain/Line Follower, and Sumo Fight. Prepare for a novel experience with innovative robotics challenges that have never been seen before in the country. Mark your calendars for the event date: 01/03/2020 at the National School of Sciences and Advanced Technologies of Borj Cedria (ENSTA Borj Cedria). It's a promise of ultimate fun and discovery!''',
    images: generateImageListFromFirebase(
        "assets/associations/electronix/events/ensta_robots_1",
        "ensta_robots_",
        10),
    isInternal: true,
  ),
  EnstabCompetitions(
    image:
        "assets/associations/electronix/events/ensta_robots_2/ensta_robots_1.jpg",
    type: "ENSTAROBOTS 2",
    description:
        '''In the year 3000, humanity's advanced space civilization faces an alien invasion after successfully colonizing the seventh galaxy. The struggle for freedom begins against technologically superior invaders. The ENSTA ROBOTS' second edition is unveiled, hosted by ELECTRONIX ENSTAB & IEEE ENSTAB SB. The competition, themed "A BATTLE BEYOND THE HORIZON," features 5 subcompetitions: Smart Robot, All Terrain, Line Follower, Sumo Fight, and Junior Model. Get ready for an exciting robotics showcase!''',
    images: generateImageListFromFirebase(
        "assets/associations/electronix/events/ensta_robots_2",
        "ensta_robots_",
        10),
    isInternal: true,
  ),
  EnstabCompetitions(
    image:
        "assets/associations/electronix/events/ensta_robots_3/ensta_robots_11.jpg",
    type: "ENSTAROBOTS 3 | DOULICHA IN MEDINA",
    description:
        '''The historic core of Tunis holds a rich history spanning from the Middle Ages to the Islamic era, evident in its 700 monuments like palaces, mosques, and schools. This area was once among the most affluent cities in the Islamic world. Enclosed by a continuous wall, the oval-shaped medina features a prominent Kasbah serving as the government hub. The Great Mosque of Ezzaitouna is the religious center, adjoining a vast platform used as a marketplace, public space, and parade ground. Narrow lanes hold traditional houses around bustling souks. ELECTRONIX ENSTAB presents a theme centered on this unique medina, offering participants a journey through its heart. The initiative encourages starting at the origin within the old city of Tunis and embarking on a robotic exploration toward the gates. The goal is to highlight the Medina's significance and foster pride as participants exhibit their robotics expertise.''',
    images: generateImageListFromFirebase(
        "assets/associations/electronix/events/ensta_robots_3",
        "ensta_robots_",
        10),
    isInternal: true,
  ),
];

List<EnstabCompetitions> externalEnstabCompetitions = [
  EnstabCompetitions(
    image: "assets/associations/enstab_competitions/enicarth_competition.jpg",
    type: "ENICARTHAGE ROBOT 6",
    description:
        '''"My town called that game "the squid game" it was named so because the game was played in a squid-like outline.
The rules are simple " Squid Game
Have you been dreaming of the Squid Game experience, with a happier ending than in the series?
It's about to happen, but this time with rules set by ENICarthage Robots.
The ENICarthage Robots 6.0 competition follows the story of a hundred robots who come together to overcome challenges and pass tests inspired by the games of our childhood.
So if you've got a knack for the world of robotics, we're honored to welcome you on February 20, 2022 to experience unforgettable moments and share in the good sense of innovation and competition. ''',
    images: generateImageListFromFirebase(
        "assets/associations/electronix/participation", "ensta_robots_", 10),
    isInternal: false,
  ),
];
