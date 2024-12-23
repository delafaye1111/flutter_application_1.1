import 'package:flutter/material.dart';

class EvchargingPage extends StatefulWidget {
  const EvchargingPage({super.key});
  @override
  State<EvchargingPage> createState() => _EvChargingState();
}

class _EvChargingState extends State<EvchargingPage> {
  String _output = '';
  String _CPoutput = '';
  String _CToutput = '';
  String _formattedNumber = '';
  final TextEditingController _currentSOC = TextEditingController();  
  
  final TextEditingController _targetSOC = TextEditingController();
  
  final TextEditingController _chargingRATE = TextEditingController();
  
  final TextEditingController _voltage = TextEditingController();
  
  final TextEditingController _batteryCap = TextEditingController();
  
  final TextEditingController _efficiency = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EV Charging',
          style: TextStyle(color: Colors.white),
        ),
        // leading: IconButton(
        //     onPressed: () {
        //       debugPrint('leading icon pressed');
        //     },
        //     icon: const Icon(Icons.menu)),
        // actions: [
        //   // IconButton(
        //   //     onPressed: () {
        //   //       debugPrint('actions pressed');
        //   //     },
        //   //     icon: const Icon(Icons.abc)),
        //   // IconButton(
        //   //     onPressed: () {
        //   //       debugPrint('actions2 pressed');
        //   //     },
        //   //     icon: const Icon(Icons.ac_unit))
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.car_repair_outlined,
              color: Colors.white,
              size: 150,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                SizedBox(width: 10, height: 50),
                Card(
                  color: Color.fromARGB(255, 59, 99, 68),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Charging Info',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                // Row(
                //   children: [
                //     TextField(
                //       decoration: InputDecoration(
                //         border: OutlineInputBorder(),
                //         labelText: 'Name',
                //         hintText: 'Enter Name',
                //       ),
                //     ),
                //   ],
                // )
              ],
            ),
            // TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: 'Name',
            //     hintText: 'Enter Name',
            //   ),
            // ),
            // Image.network(
            //     'https://cdn.shopify.com/s/files/1/0597/4209/3363/files/jd_FJ9509-001_al_large.jpg?v=1726193826'),
            const SizedBox(
              height: 10,
            ),
            // Card(
            //   color: Colors.orange,
            //   child: Padding(
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            //     child: const Text(
            //       'Thank you',
            //       style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 26,
            //           fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // ),
            // const Text('We appreciating for bought items from our shop',
            //     style: TextStyle(fontSize: 16)),

            // ElevatedButton(
            //     onPressed: () {
            //       debugPrint('asd');
            //     },
            //     child: const Text(
            //       'Sent',
            //       style: TextStyle(fontSize: 26),
            //     )),
            TextField(
              controller: _currentSOC,
              style: const TextStyle(
                  fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0)),
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                labelText: 'Current SOC',
                hintText: 'Enter %',
            
              ),
            ),
            TextField(
              controller: _targetSOC,
              style: TextStyle(
                  fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                labelText: 'Target SOC',
                hintText: 'Enter %',
              ),
            ),
            TextField(
              controller: _chargingRATE,
              style: TextStyle(
                  fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                labelText: 'Charging Rate',
                hintText: 'Enter A',
              ),
            ),
            TextField(
              controller: _voltage,
              style: TextStyle(
                  fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                labelText: 'Voltage',
                hintText: 'Enter V',
              ),
            ),

            TextField(
              controller: _batteryCap,
              style: TextStyle(
                  fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                labelText: 'Battery Capacity',
                hintText: 'Enter kWh',
              ),
            ),
            TextField(
              controller: _efficiency,
              style: TextStyle(
                  fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                labelText: 'Effciency',
                hintText: 'Enter %',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.electrical_services,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10, height: 50),
                      Text(
                        'Charging Power',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Spacer(),
                      Card(
                        color: Color.fromARGB(255, 59, 99, 68),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '$_CPoutput kWh',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.timelapse,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10, height: 50),
                      Text(
                        'Charging Time',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Card(
                        color: Color.fromARGB(255, 59, 99, 68),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '$_formattedNumber hrs',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        String currentSOC = _currentSOC.text;
                        String targetSOC = _targetSOC.text;
                        String batteryCap = _batteryCap.text;
                        String efficiency = _efficiency.text;
                        String voltage = _voltage.text;
                        String chargingRATE = _chargingRATE.text;
                        double? currentSOCnum = double.parse(currentSOC);
                        double? targetSOCnum = double.parse(targetSOC);
                        double? batteryCapnum = double.parse(batteryCap);
                        double? effciencynum = double.parse(efficiency);
                        double? voltagenum = double.parse(voltage);
                        double? chargingRATEnum = double.parse(chargingRATE);
                        setState(() {
                          //_output = 'Go to Next Page';
                          _output ='$currentSOCnum';
                          _CPoutput = '${(voltagenum*chargingRATEnum)/1000}';
                          double? cpoutputnum = double.parse(_CPoutput);
                          _CToutput = '${targetSOCnum*batteryCapnum/100/(cpoutputnum *effciencynum)}';
                          double? ctoutputnum = double.parse(_CToutput);
                          _formattedNumber = ctoutputnum.toStringAsFixed(4);
                          
                        });
                        debugPrint('pressed button . . $_output');
                      },
                      child: const Text(
                        'Calculate',
                        style: TextStyle(fontSize: 26),
                      )),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.start,
                  //             children: [
                  //               Icon(Icons.attach_money),
                  //               SizedBox(width: 10, height: 50),
                  //               Text(
                  //                 'Estimated Total',
                  //                 style: TextStyle(
                  //                     fontSize: 20, fontWeight: FontWeight.w300),
                  //               ),
                  //               Spacer(),
                  //               Text(
                  //                 '1000.00 THB',
                  //                 style: TextStyle(
                  //                     fontSize: 22, fontWeight: FontWeight.bold),
                  //               )
                  //             ],
                  //           ),
                ],
              ),
            )
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     debugPrint('fabtest');
      //   },
      //   child: const Icon(Icons.shopping_cart),
      // ),
    );
  }
}
