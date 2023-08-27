import 'package:enstab_wbr_helix/widgets/Generate_Image_List.dart';

final imgListAnimals = generateImageListFromFirebase(
  'assets/associations/etc/visites/animal_shelter',
  'etc_',
  5,
);

final imgListTrees = generateImageListFromFirebase(
  'assets/associations/nateg/voluntary',
  'nateg_',
  5,
);
final imgListChildren = generateImageListFromFirebase(
  'assets/associations/electronix/workshops/visites',
  'electronix_',
  11,
);

String text1 =
    '''The ETC Junior Enterprise, a student-run organization, recently paid a heartwarming visit to a shelter located in Soliman, Nabeul, dedicated to the well-being of animals. With compassion at the forefront, the team embarked on a mission to provide nourishment and care to these furry residents. By delivering essential food supplies, they not only demonstrated their commitment to making a positive impact on the community but also displayed their genuine concern for the welfare of these animals. This act of kindness not only benefitted the shelter's inhabitants but also highlighted the power of collective action in addressing societal issues. The visit offered a chance for the ETC Junior Enterprise members to witness firsthand the significance of their contribution, fostering a sense of empathy and responsibility within the team. Through this initiative, they not only filled bowls but also hearts, leaving behind a trail of goodwill that will hopefully inspire others to follow suit.''';

String text =
    '''NATEG ENSTAB showcased their commitment to environmental well-being by participating in a voluntary tree planting event. On this special occasion, students came together to plant trees and contribute to a greener future. The act not only emphasized their dedication to sustainable practices but also echoed their responsibility towards the planet. By taking part in this tree planting initiative, NATEG ENSTAB members demonstrated their collective effort in fostering a healthier ecosystem. The event not only symbolized their care for nature but also served as a reminder of the positive impact a unified community can make. With shovels in hand and hearts aligned, they sowed seeds of change that will flourish for generations to come.''';

String text2 =
    '''The associations "Electronix" and "NATEG ENSTAB" recently opened their doors to a group of children under the care of a local community organization. The students, with their enthusiasm and dedication, embarked on an inspiring journey to introduce the young minds to the wonders of engineering. They skillfully navigated through various disciplines, including civil, embedded, and software engineering, employing a remarkably engaging and lighthearted approach. The children were captivated as the students ingeniously simplified complex concepts, turning them into enjoyable and amusing learning experiences. Through interactive demonstrations and hands-on activities, the students effectively conveyed the essence of each field, fostering curiosity and sparking interest. The event not only provided the children with a glimpse into the world of engineering but also instilled a sense of wonder and excitement, leaving an indelible impact on their budding aspirations. This collaborative initiative beautifully bridged the gap between academia and community, nurturing a passion for learning and igniting dreams of a future filled with endless possibilities.''';
