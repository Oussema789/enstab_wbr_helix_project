import 'package:enstab_wbr_helix/views/Research/unit_services_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class EquipmentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, SizingInformation) {
        if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildSection(
                    'Service Units',
                    [
                      'Scanning Electron Microscope',
                      'X-ray Diffractometer',
                      'Atomic Force Microscope',
                      'Scanning Tunneling Microscope',
                      'Reactive Sputtering System',
                    ],
                  ),
                  SizedBox(height: 20),
                  _buildSection(
                    'Laboratories',
                    [
                      'Semiconductor and RF Laboratory',
                      'Nanocomposites Laboratory',
                      'Fluidics Laboratory',
                      'Heat Transfer Laboratory',
                      'Transmission Line Model with Switch',
                      'Biogas Station with Gas Analyzer and 2-pH Electrodes',
                      'Sensors and Instrumentation Laboratory',
                    ],
                  ),
                  SizedBox(height: 20),
                  _buildSection(
                    'Smartgrid Station',
                    [
                      'DC Multicircuit Compound Wound Machine Model',
                      'Asynchronous Motor Model (Wind Turbine)',
                      'Wind Turbine & Smart Grid Model',
                      'Pumping & Turbine Model',
                      'Transmission Line Model with Switch',
                      '2 RLC Load Models & Transmission Line Models',
                      'Reactive Compensation or RLC Load Model',
                      'Solar Module Simulation Model',
                      'Electrical Converter Model',
                      'Fuel Cell Model',
                    ],
                  ),
                ],
              ),
            ).py16(),
          );
        }
        return SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              myContainerEquipment(
                Column(
                  children: [
                    SectionTitle('Service Units'),
                    RichTextBlock([
                      'Scanning Electron Microscope',
                      'X-ray Diffractometer',
                      'Atomic Force Microscope',
                      'Scanning Tunneling Microscope',
                      'Reactive Sputtering System',
                    ]),
                  ],
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              myContainerEquipment(
                Column(
                  children: [
                    SectionTitle('Laboratories'),
                    RichTextBlock(
                      [
                        'Semiconductor and RF Laboratory',
                        'Nanocomposites Laboratory',
                        'Fluidics Laboratory',
                        'Heat Transfer Laboratory',
                        'Transmission Line Model with Switch',
                        'Biogas Station with Gas Analyzer and 2-pH Electrodes'
                            'Sensors and Instrumentation Laboratory',
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              myContainerEquipment(
                Column(
                  children: [
                    SectionTitle('Smartgrid Station'),
                    RichTextBlock(
                      [
                        'DC Multicircuit Compound Wound Machine Model',
                        'Asynchronous Motor Model (Wind Turbine)',
                        'Wind Turbine & Smart Grid Model',
                        'Pumping & Turbine Model',
                        'Transmission Line Model with Switch',
                        '2 RLC Load Models & Transmission Line Models',
                        'Reactive Compensation or RLC Load Model',
                        'Solar Module Simulation Model',
                        'Electrical Converter Model',
                        'Fuel Cell Model',
                      ],
                    ),
                  ],
                ),
              ),

              // Add more sections as needed
            ],
          ),
        );
      },
    );
  }
}

Widget _buildSection(String title, List<String> items) {
  return Container(
    width: 300,
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items.map((item) => Text('• $item')).toList(),
        ),
      ],
    ),
  );
}

class RichTextBlock extends StatelessWidget {
  final List<String> items;

  RichTextBlock(this.items);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: RichText(
        text: TextSpan(
          children: items
              .map(
                (item) => TextSpan(
                  text: '• $item\n',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

Widget myContainerEquipment(Widget child) {
  return Expanded(
    child: Container(
      height: 350,
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2), // changes the shadow position
          ),
        ],
      ),
      child: child,
    ),
  );
}
