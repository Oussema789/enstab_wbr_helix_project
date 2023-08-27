class MasterEnstab {
  final String name;
  final String description;
  final String program;
  final String image;

  MasterEnstab(this.name, this.description, this.image, this.program);
}

List<MasterEnstab> mastersEnstab = [
  MasterEnstab(
      "Professional Master in Innovation Engineering and Technology Transfer (2I2T) ",
      '''The National School of Advanced Sciences and Technologies of Borj Cedria (ENSTAB) – University of Carthage, in Tunisia, is offering a new master's level program in Innovation Engineering and Technology Transfer, with the support of the WIPO Academy. The program is aimed at professionals engaged in research and development activities, researchers, research center managers, individuals responsible for commercializing scientific research, business leaders, and innovators.''',
      "assets/master_2.gif",
      text2I2T),
  MasterEnstab(
      "Master of Research in Energy Management and Digitalization (MaDE)",
      '''This Master's program focuses on preparing young researchers, experts, and project leaders to optimize energy production while considering demand and constraints. It offers a comprehensive 360-degree view of the energy sector to address challenges like regulatory issues, sustainable technology development, and economic concepts.

The "Energy Management and Digitalization" program employs a multidisciplinary approach, incorporating active learning through projects and problem-solving. It aims to develop strategies for energy policy, innovate technologies for smart energy systems, and understand the energy business landscape. Students benefit from experiential learning using available resources and research platforms.''',
      "assets/master_1.gif",
      textMaDE)
];

String text2I2T =
    '''This two-year program will be delivered in a hybrid format combining online lectures and in-person classes at ENSTAB in Tunisia. The program will be taught by intellectual property experts from academia, public and private sectors, and WIPO. Through interactive lectures, group activities, and a final project, students will become familiar with a range of topics including:

1. Data analysis.
2. Innovation and technology management.
3. Business intelligence and technology transfer.
4. Innovation management.
5. Intellectual property and patents.
6. Technology transfer and sustainable development.''';

String textMaDE =
    '''The Master's program "Management and Digitalization of Energy" meets these criteria through a multidisciplinary curriculum based on active pedagogy that integrates project-based and problem-based learning, as well as an experiential methodology through the available resources and materials at the institution and the various research structures and platforms supporting this project. Specific Objectives:


1. Mastering cutting-edge clean energy production technologies.
2. Acquiring innovation techniques, research skills, and theoretical knowledge in the energy field.
3. Developing expertise in using advanced digital tools for energy system analysis and optimization.
4. Gaining proficiency in "Big Data" analysis and applying it to predict energy market trends.
5. Improving skills in intelligent technologies and their application in controlling and managing complex energy systems.
6. Enhancing management, communication, teamwork, and research skills for potential research and development roles or preparation for doctoral thesis work.''';

String introToMaster =
    "ENSTAB (Ecole Nationale des Sciences et Technologies Avancées Borj Cedria), a hub of advanced learning and innovation at the forefront of higher education. Within our esteemed institution, we proudly present two exceptional Master's degree programs that cater to the dynamic needs of the modern world.";
