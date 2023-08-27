class EnstabProgram {
  final String title;
  final String image;
  final String program;

  EnstabProgram({
    required this.title,
    required this.image,
    required this.program,
  });
}

List<EnstabProgram> enstabPrograms = [
  EnstabProgram(
      title: "Common Core",
      image: "assets/program/ta.jpg",
      program:
          '''The common core curriculum ensures the mastery of a diverse range of skills encompassing:

- Analysis for Engineering
- Integral and Probability
- Advanced Algorithmic and Programming (C,C++)
- Physics for Engineering
- Fluid Mechanics
- Electrical Systems
- Semiconductors
- English 
- Numerical Analysis & Optimization
- Statistics for Engineering
- Object-oriented programming 
- Thermodynamics for Engineering
- Electronics
- Servo and industry regulation
- Law
- Economy and green economy
- Operational Research 1
- Artificial Intelligence
- Thermal Transfer
- Materials physics
- Project Management
- Team Management
- Deutsch or Japanese Language

The comprehensive curriculum empowers students to develop expertise in industrial engineering and management, enabling them to address complex challenges. Through theoretical learning, practical projects, and exposure to modern methodologies, students build a strong foundation to optimize industrial processes and manage operations effectively, preparing them for the dynamic industrial landscape.'''),
  EnstabProgram(
      title: "Energy systems and clean technologies (SETP)",
      image: "assets/program/setp.jpg",
      program:
          '''Being a student engineer in SETP (Energy Systems and Renewable Energies) can ensure the acquisition of various skills, including:

- Artificial Intelligence (AI)
- Programmable Automation
- Electrical Machinery and Static Converters
- Thermal Energy Conversion
- Internet of Things (IoT) and Cloud Computing
- Big Data
- Smart Grids
- Electronic Functions
- Small and Medium-sized Enterprises (SME)
- Nuclear Techniques
- Energy Auditing and Energy Management
- Electrical Systems of Renewable Energy
- hydrogen energy 

In the SETP program, students have the opportunity to develop expertise in these areas, equipping them to tackle challenges in the evolving field of energy technology. Through a comprehensive curriculum, hands-on projects, and exposure to cutting-edge technologies, students can cultivate a strong foundation in a wide range of subjects related to energy systems and renewable technologies.'''),
  EnstabProgram(
      title: "Industrial systems and competitiveness (SIC)",
      image: "assets/program/sic.jpg",
      program:
          '''Being a student engineer in SIC (Industrial Engineering and Management) can ensure the acquisition of various skills, including:

- Supply Chain Management
- Quality System Management
- Technical Consulting
- Procurement and Supply
- Integrated Management Systems
- SAP Development
- Enterprise Resource Planning (ERP)
- Risk Management
- Operations Management
- Industry 4.0 and Internet of Things (IoT)
- Six Sigma Methodology
- Lean Management

In the SIC program, students have the opportunity to develop expertise in these domains, preparing them to address complex challenges in the realm of industrial engineering and management. Through a comprehensive curriculum, practical projects, and exposure to modern methodologies and technologies, students can build a strong foundation across a diverse spectrum of subjects related to optimizing industrial processes and managing complex operations.'''),
  EnstabProgram(
      title: "Advanced electronics and nanotechnologies (EAN)",
      image: "assets/program/ean.jpg",
      program:
          '''Being a student engineer in EAN (Electronic Systems and Automation) can ensure the acquisition of various skills, including:

- Design of Electronic Systems
- Fabrication Technologies and MEMS
- Microwave Electronics
- Fabrication and Characterization Techniques of Nanomaterials
- Reconfigurable Systems Architecture
- Video Processing
- Robotics
- Interface and Communication of Embedded Systems
- Methodologies for Embedded Digital Circuit Design
- Graphical Programming
- Microsystem Modeling
- Nanotechnologies Applied to Components

In the EAN program, students have the opportunity to develop expertise in these areas, preparing them to address complex challenges in the field of electronic systems and automation. Through a comprehensive curriculum, hands-on projects, and exposure to cutting-edge technologies, students can build a strong foundation across a diverse range of subjects related to designing, optimizing, and implementing electronic systems and technologies.'''),
];

String introForProgram =
    "After a year and a half in the common core at ENSTAB, the student must choose one of our specialties: SETP, SIC, and EAN. After making their choice, the student undergoes a duration of 1 year, culminating in an End-of-Studies Internship (PFE).";
