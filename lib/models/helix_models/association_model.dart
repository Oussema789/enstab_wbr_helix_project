class EnstabAssociation {
  String name;
  int numberOfMembers;
  String image;
  String description; // New field added for description

  EnstabAssociation({
    required this.name,
    required this.numberOfMembers,
    required this.image,
    required this.description, // New field added for description
  });
}

List<EnstabAssociation> enstabAssociationsList = [
  EnstabAssociation(
      name: "ENSTAB IEEE SB",
      numberOfMembers: 122,
      image: "assets/associations/enstab_ieee.png",
      description:
          "As an IEEE Student Chapter, our mission is to advance technology and improve social statuses through a diverse range of projects and initiatives. Through technical projects, workshops, and seminars, we aim to foster innovation and technical excellence among our members. Additionally, we are committed to making a positive social impact by engaging in projects that address real-world challenges faced by our community. By organizing community outreach programs, hackathons, and competitions, we seek to promote STEM education, creativity, and problem-solving skills. Upholding ethical standards and professionalism, we encourage our members to contribute to research and publications, expanding knowledge in various fields. Networking, collaboration, and leadership development opportunities are offered to empower our members to succeed in their future careers while making meaningful contributions to society. Through recognition and awards, we celebrate achievements and motivate our members to continue their dedication to creating a better world through technology and social responsibility."), // Add the description for each association accordingly
  EnstabAssociation(
      name: "ETC",
      numberOfMembers: 122,
      image: "assets/associations/ETC_Logo.png",
      description:
          "ETC (Energetic Technological Consulting) is a dynamic office of studies and consultancy, playing a vital role in the global Junior Enterprise Movement, with a strong focus on the domains of energy, technology, and industry. As a part of this influential movement, ETC is driven by a passion for innovation and excellence, aiming to make a significant impact in these pivotal sectors. Through its specialized expertise, ETC endeavors to provide cutting-edge solutions and strategic insights to clients, driving progress and fostering sustainable development. With a team of dedicated and skilled young professionals, ETC thrives in delivering high-quality services that cater to the evolving demands of the energy and technology landscape. Its commitment to staying at the forefront of industry advancements and best practices empowers ETC to continuously adapt and thrive in an ever-changing market. As a result, ETC emerges as a trusted partner, driving positive change and contributing to the advancement of energy, technology, and industry worldwide."),
  EnstabAssociation(
      name: "GDSC",
      numberOfMembers: 122,
      image: "assets/associations/gdsc_enstab.png",
      description:
          '''GDSC ENSTAB is a Google Developer Student Club founded at the National School of Advanced Sciences and Technologies of Borj Cedria. The club aims to promote new technologies and provide a peer-to-peer learning environment for students to grow their knowledge. By joining the club, students can build solutions for local businesses and their communities. The club hosts workshops and events to help students learn about developer products and platforms through hands-on activities. GDSC ENSTAB also works with local partners to lead project building activities. The official website of ENSTAB mentions that the school's engineers will be able to work in many advanced industrial sectors in Tunisia or abroad, such as aeronautics. GDSC ENSTAB has a Twitter account where they share updates about their activities and events. Students can learn more about GDSC ENSTAB and their upcoming events by visiting their page on the Google Developer Student Clubs website.'''),
  EnstabAssociation(
      name: "NATEG",
      numberOfMembers: 122,
      image: "assets/associations/nateg_enstab.jpg",
      description:
          "NATEG Enstab is a student chapter or group associated with ENSTAB, the National School of Advanced Sciences and Technologies of Borj Cedria in Tunisia.and aims to build networks and bridges between Tunisians in Tunisia and those in North America."),
  EnstabAssociation(
      name: "ELECTRONIX",
      numberOfMembers: 122,
      image: "assets/associations/electronix_enstab.png",
      description:
          "Electronix Enstab, founded by exceptionally talented students of Enstab with a passion for electronics, serves as a platform to cultivate an enduring love for electronics among engineering students. Committed to making this discipline accessible to all, Electronix Enstab seamlessly integrates electronics and programming, welcoming both beginners and advanced individuals seeking to refine their skills. The club's core mission revolves around the captivating world of robotics, with a particular emphasis on designing and crafting robots, including the impressive quadruped robot, among an array of other innovative projects. By actively participating in a multitude of competitions, Electronix Enstab continually challenges its members, fostering growth and excellence in the field. With a vibrant community of like-minded individuals, the club thrives on collaboration and knowledge-sharing, encouraging each member to push their boundaries and contribute to the advancement of electronics and robotics."),
];
