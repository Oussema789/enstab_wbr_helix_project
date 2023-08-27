import '../../widgets/Generate_Image_List.dart';

class PeecProjects {
  final String name;
  final String description;
  final String image;

  PeecProjects({
    required this.name,
    required this.description,
    required this.image,
  });
}

PeecProjects peecInfo = PeecProjects(
  name: "CARTHAGE STUDENT ENTREPRENEUR POLE (PEEC)",
  description:
      '''CARTHAGE STUDENT ENTREPRENEUR POLE (PEEC) is an initiative of Carthage University as part of its participation in an Erasmus+ project: SALEEM (Structuration et Accompagnement de l'Entreprenariat Etudiant au Maghreb).

The project aims to promote the entrepreneurial spirit of UCAR students and encourage their innovative initiatives, in synergy and complementarity with existing actions and structures.

The main missions of the PEEC cluster are to promote the federation of good entrepreneurial practices and to create the necessary conditions to foster an environment conducive to the creation and development of start-ups by Carthage University students.''',
  image: "assets/associations/peec_projects/peecs/peec_10.jpg",
);

PeecProjects antennePeec = PeecProjects(
    name: "PEEC ANTENNA",
    description:
        '''Within our school, there exists a scientific environment that nurtures the emergence of numerous talents. This environment fosters a diverse range of skills, including a profound mastery of various scientific disciplines, a flair for innovation and creativity, a strong entrepreneurial spirit, and adaptability. This is facilitated by our distinctive pedagogical approach, which places a heavy emphasis on practical application and experiential learning. Students are encouraged to engage actively in their learning journey, which cultivates not only a deep understanding of subjects but also the ability to apply knowledge effectively. Our school's commitment to differentiation ensures that each student's unique strengths and learning style are catered to, fostering an inclusive and supportive learning community. Through this holistic approach, students are equipped not only with academic excellence but also with the tools and mindset to excel in real-world challenges, making them valuable contributors to the ever-evolving scientific landscape.''',
    image: "assets/associations/peec_projects/peec_antenne.jpg");

String antenneText =
    '''A look back at the inauguration of the new PEEC branch at ENSTAB and the announcement of the results of the SNEE student-entrepreneur status on February 15, 2023 at ENSTAB. Hamouda KHECHINI, Director of ENSTAB, Mme Chiraz GOUIDER BELHAJ, Director of Programs and Renovation at the General Directorate of University Renovation (DGRU, MESRS), M. Imed MAATOUK, Director of the CARTHAGE STUDENT ENTREPRENEUR POLE (PEEC), Mme. Olfa DAALOUL BOUACHA and Mrs. Houyem MRABET MESSAOUDI in charge of the PEEC, the Directors of the UCAR schools and institutes, the PEEC Referents and over 200 students from the various UCAR establishments.
 Our thanks to Carthage University and the PEEC, which, through the JAWDA quality support project, is promoting student entrepreneurship through the creation of the 3rd PEEC Antenna, in addition to those of SupCOM and ISSAT Mateur, a support center within ENSTAB. 
We would also like to thank the directors of Carthage University's schools and institutes, as well as the PEEC referents, for their participation in this event.
''';

List<PeecProjects> peecProjects = [
  PeecProjects(
    name: "START-UP DEEPVOLT",
    description: karimDeepVolt,
    image:
        "assets/associations/peec_projects/peec_projects/startups/peec_1.jpg",
  ),
  PeecProjects(
    name: "First Price | Carthage Innov'startup 2.0",
    description: wajdiProject,
    image:
        "assets/associations/peec_projects/peec_projects/peec_event/peec_1.jpg",
  ),
];

String karimDeepVolt =
    '''Karem Chatti shines as a distinguished individual among our outstanding students, consistently showcasing remarkable dedication and excellence in his academic pursuits. Notably, he actively participates in various projects within the Carthage Student Entrepreneur Center Program (PEEC), demonstrating his prowess in both academia and the world of entrepreneurship. His exceptional aptitude has propelled him to prominence, particularly in the entrepreneurship realm.

At present, Karem Chatti assumes the pivotal role of CEO at "DeepVolt," a Tunisian startup that stands as a beacon of innovation in the data science field. Specializing in the strategic planning of electric vehicle (EV) charging infrastructure, DeepVolt exemplifies Karem's visionary leadership and unwavering commitment. Under his astute guidance, the startup has achieved remarkable success, solidifying its position as a trailblazer in the technological landscape.

DeepVolt, as a pioneering data science enterprise, redefines the deployment of EV charging stations with a strong emphasis on sustainability. Karem, alongside a team of accomplished professionals versed in electric mobility and artificial intelligence (AI), recognizes the indispensability of data analytics for the triumphant establishment of EV charging networks. With a mission to democratize AI solutions, DeepVolt strives to make these cutting-edge technologies accessible to a wide spectrum of individuals.''';

String wajdiProject =
    '''Our student Wajdi Omrani had expressed his thoughts on the matter, stating that 3D printing industries had been experiencing rapid growth over the years. The student also observed the significant environmental impact caused by plastic waste. In response to these observations, the student shared that this team, CREATIVITY which participated and won the first price of Carthage innov'startup 2.0 competition, had taken the initiative to contribute to this progress while addressing the environmental concerns. Their approach involved making 3D printing more accessible and eco-friendly by repurposing plastic waste into filament, which serves as the raw material for 3D printers. Additionally, the student mentioned CREATIVITY's ambitious goal of developing an affordable and highly efficient 3D printer, entirely designed in Tunisia. This printer would be designed to utilize the CREATIVITY filament, thereby facilitating entry into the world of 3D printing for hobbyists and enthusiasts on a smaller scale.''';

String enstabPeecproject =
    '''Carthage University's CARTHAGE STUDENT ENTREPRENEUR POLE Program (Pôle Etudiant Entrepreneur de Carthage) is a noteworthy project that illustrates the university's commitment to instilling an entrepreneurial mindset in its students. This program encourages students to embrace innovation and take charge of their own destinies. 

The Carthage Student Entrepreneur Center inspires students to unleash their creativity and create new enterprises by fostering the exchange of practical entrepreneurial techniques and fostering a supportive atmosphere. Success stories of the talented students at the National School of Advanced Sciences and Technologies of Borj Cédria - ENSTAB, who not only win competitions but also learn priceless information, show the program's real-world effects. Some of these aspiring business owners even make the audacious decision to launch their very own enterprises, exemplifying the creativity and entrepreneurship that Peec seeks to foster. The Carthage Student Entrepreneur Center Program serves as an example of how committed assistance and nurturing can help turn students into successful businesses.

Here's examples of Enstab's shining stars:''';

List<String> imgPeecAntenne =
    generateImageList("assets/associations/peec_projects/peecs", "peec_", 15);
/*
List<String> socioEconomicDayImgs =
    generateImageList("assets/socio-economic", "peec_", 7);*/
