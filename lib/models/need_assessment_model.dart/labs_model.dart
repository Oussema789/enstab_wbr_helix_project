import '../../widgets/Generate_Image_List.dart';

class Lab {
  final String name;
  final String description;
  final String imagePath;
  final List<String> images; // New property for the image path

  Lab(this.name, this.description, this.imagePath, this.images);
}

List<String> laRINAImags = generateImageList("assets/larina", "larina_", 4);
List<String> unitSerives =
    generateImageList("assets/research/unit_services", "Picture", 7);

final List<Lab> labs = [
  Lab(
    'LaRINA',
    '''The multidisciplinary research team of LARINA covers diverse fields of expertise. LaRINA’ activities are seeking to explore, acquire and implement innovative technologies and techniques to optimize industrial processes, promote sustainable and fair management of energy and water services. Recent advances in numerical modeling of Internet of Things (IoT) have created new topics of interest for our team which include the following: digitization of the energy and water systems, Artificial Intelligence (AI) and numerical modeling for smart cities and adaptive algorithms for home automation.''',
    'path_to_embedded_image',
    laRINAImags,
    // Replace with actual image path
  ),

  // Add more labs here
];

String equipements = '''
· Three service units containing:

   - Scanning Electron Microscope;  
   - X-ray Diffractometer;
   - Atomic Force Microscope;
   - Scanning Tunneling Microscope; 
   - Reactive Sputtering System.

· Semiconductor and RF (Radio Frequency) Laboratory
· Remote Real-time Enterprise Resource Pilot Station
· Nanocomposites Laboratory

· Smartgrid Station:

   - DC Multicircuit Compound Wound Machine Model;
   
   - Asynchronous Motor Model (Wind Turbine);
   
   - Wind Turbine & Smart Grid Model;
   
   - Pumping & Turbine Model;
   
   - Transmission Line Model with Switch;
   
   - 2 RLC Load Models & Transmission Line Models;
   
   - Reactive Compensation or RLC Load Model;
   
   - Solar Module Simulation Model;
   
   - Electrical Converter Model;
   
   - Fuel Cell Model;

· Fluidics Laboratory;

· Heat Transfer Laboratory;

· Biogas Station with Gas Analyzer and 2-pH Electrodes;

· Sensors and Instrumentation Laboratory;

· Mechanical Workshop:

   - WEIDA Milling Machine;
   
   - DAHUI Lathe;
   
   - DAHUI Shearing Machine;
   
   - Traction Machine;
   
   - Hardness Measurement Device.

Other educational and research equipment available:

· Computer hardware;

· Educational and research laboratory equipment;

· Educational materials in both paper and digital formats;

· Audiovisual equipment;

· Experimental support for practical work;

· Simulation software in the specialty.''';
