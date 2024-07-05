import 'package:flutter/material.dart';

class IzracunBodova extends StatefulWidget {
  const IzracunBodova({Key? key}) : super(key: key);

  @override
  _IzracunBodovaState createState() => _IzracunBodovaState();
}

class _IzracunBodovaState extends State<IzracunBodova> {
  // Promijenjene varijable za kalkulaciju u int
  int opciUspjeh5 = 1;
  int opciUspjeh6 = 1;
  int opciUspjeh7 = 1;
  int opciUspjeh8 = 1;
  int hrvatskiJezik7 = 1;
  int hrvatskiJezik8 = 1;
  int matematika7 = 1;
  int matematika8 = 1;
  int straniJezik7 = 1;
  int straniJezik8 = 1;
  int kemija7 = 1;
  int kemija8 = 1;
  int fizika7 = 1;
  int fizika8 = 1;
  int tehnicki7 = 1;
  int tehnicki8 = 1;
  int ukupnoBodova = 1;

  // Declare variable to store selected smjer
  String selectedSmjer = '';

  int getBodovniPrag(String smjer) {
    // Implementirajte logiku za dobivanje bodovnog praga na temelju odabranog smjera
    // Na primjer, možete koristiti switch-case za različite smjerove i vratiti odgovarajući bodovni prag
    switch (smjer) {
      case 'Elektrotehničar (bodovni prag: 60)':
        return 60;
      case 'Tehničar za elektroniku (bodovni prag: 60)':
        return 60;
      case 'Tehničar za računalstvo (bodovni prag: 64)':
        return 64;
      default:
        return 0; // Defaultni bodovni prag, možete prilagoditi prema potrebi
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Izračunaj svoje bodove'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Radio buttons for selecting smjer
              RadioListTile(
                title: const Text('Elektrotehničar (bodovni prag: 60)'),
                value: 'Elektrotehničar (bodovni prag: 60)',
                groupValue: selectedSmjer,
                onChanged: (value) {
                  setState(() {
                    selectedSmjer = value!;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Tehničar za elektroniku (bodovni prag: 60)'),
                value: 'Tehničar za elektroniku (bodovni prag: 60)',
                groupValue: selectedSmjer,
                onChanged: (value) {
                  setState(() {
                    selectedSmjer = value!;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Tehničar za računalstvo (bodovni prag: 64)'),
                value: 'Tehničar za računalstvo (bodovni prag: 64)',
                groupValue: selectedSmjer,
                onChanged: (value) {
                  setState(() {
                    selectedSmjer = value!;
                  });
                },
              ),
              const SizedBox(height: 20),
              // Slider inputs for various subjects
              _buildSlider('Opći uspjeh 5. razred', opciUspjeh5, (newValue) {
                setState(() {
                  opciUspjeh5 = newValue;
                });
              }),
              _buildSlider('Opći uspjeh 6. razred', opciUspjeh6, (newValue) {
                setState(() {
                  opciUspjeh6 = newValue;
                });
              }),
              _buildSlider('Opći uspjeh 7. razred', opciUspjeh7, (newValue) {
                setState(() {
                  opciUspjeh7 = newValue;
                });
              }),
              _buildSlider('Opći uspjeh 8. razred', opciUspjeh8, (newValue) {
                setState(() {
                  opciUspjeh8 = newValue;
                });
              }),
              _buildSlider(
                  'Hrvatski jezik (7. razred)', hrvatskiJezik7, (newValue) {
                setState(() {
                  hrvatskiJezik7 = newValue;
                });
              }),
              _buildSlider(
                  'Hrvatski jezik (8. razred)', hrvatskiJezik8, (newValue) {
                setState(() {
                  hrvatskiJezik8 = newValue;
                });
              }),
              _buildSlider('Matematika (7. razred)', matematika7, (newValue) {
                setState(() {
                  matematika7 = newValue;
                });
              }),

              _buildSlider('Matematika (8. razred)', matematika8, (newValue) {
                setState(() {
                  matematika8 = newValue;
                });
              }),
              _buildSlider(
                  'Strani jezik (7. razred)', straniJezik7, (newValue) {
                setState(() {
                  straniJezik7 = newValue;
                });
              }),
              _buildSlider(
                  'Strani jezik (8. razred)', straniJezik8, (newValue) {
                setState(() {
                  straniJezik8 = newValue;
                });
              }),
              _buildSlider('Kemija (7. razred)', kemija7, (newValue) {
                setState(() {
                  kemija7 = newValue;
                });
              }),
              _buildSlider('Kemija (8. razred)', kemija8, (newValue) {
                setState(() {
                  kemija8 = newValue;
                });
              }),
              _buildSlider('Fizika (7. razred)', fizika7, (newValue) {
                setState(() {
                  fizika7 = newValue;
                });
              }),
              _buildSlider('Fizika (8. razred)', fizika8, (newValue) {
                setState(() {
                  fizika8 = newValue;
                });
              }),
              _buildSlider(
                  'Tehnička kultura (7. razred)', tehnicki7, (newValue) {
                setState(() {
                  tehnicki7 = newValue;
                });
              }),
              _buildSlider(
                  'Tehnička kultura (8. razred)', tehnicki8, (newValue) {
                setState(() {
                  tehnicki8 = newValue;
                });
              }),

              const SizedBox(height: 20),
              // Button to calculate
              ElevatedButton(
                onPressed: () async {
                  // Check if smjer is selected
                  if (selectedSmjer.isEmpty) {
                    // If smjer is not selected, show AlertDialog
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Upozorenje'),
                        content: Text('Morate odabrati smjer i unijeti ocjene!'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // If smjer is selected, continue with calculations
                    // Check if all fields are filled
                    if (opciUspjeh5 == 1 ||
                        opciUspjeh6 == 1 ||
                        opciUspjeh7 == 1 ||
                        opciUspjeh8 == 1 ||
                        hrvatskiJezik7 == 1 ||
                        matematika7 == 1 ||
                        hrvatskiJezik8 == 1 ||
                        matematika8 == 1 ||
                        straniJezik7 == 1 ||
                        straniJezik8 == 1 ||
                        kemija7 == 1 ||
                        kemija8 == 1 ||
                        fizika7 == 1 ||
                        fizika8 == 1 ||
                        tehnicki7 == 1 ||
                        tehnicki8 == 1) {
                      // If not all fields are filled, show a message
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Upozorenje'),
                          content: Text('Molimo ispunite sva polja prije izračuna bodova.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('OK'),
                            ),
                          ],
                        ),
                      );
                    } else {
                      // If all fields are filled, calculate the total points
                      ukupnoBodova = opciUspjeh5 +
                          opciUspjeh6 +
                          opciUspjeh7 +
                          opciUspjeh8 +
                          hrvatskiJezik7 +
                          matematika7 +
                          hrvatskiJezik8 +
                          matematika8 +
                          straniJezik7 +
                          straniJezik8 +
                          kemija7 +
                          kemija8 +
                          fizika7 +
                          fizika8 +
                          tehnicki7 +
                          tehnicki8;

                      // Check if the total points are not 0
                      if (ukupnoBodova != 0) {
                        // Get the score threshold for the selected smjer
                        int bodovniPragSmjera = getBodovniPrag(selectedSmjer);

                        // Check the comparison of total points with the score threshold for the selected smjer
                        if (ukupnoBodova >= bodovniPragSmjera) {
                          // If they are higher, congratulate the user
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Čestitamo! Procijenjeni broj bodova je $ukupnoBodova'),
                              content: Text('Imate velike šanse za upis našeg smjera.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            ),
                          );
                        } else {
                          // If they are not higher, warn the user
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Vaš procijenjeni broj bodova je $ukupnoBodova'),
                              content: Text('Broj bodova koji ste ostvarili nije dovoljan za upis na odabrani smjer. Nastavite se truditi!'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            ),
                          );
                        }
                      }
                    }
                  }
                },
                child: const Text('Izračunaj'),
              ),

            ],
          ),
        ),
      ),
    );
  }

  // Function to build slider
  Widget _buildSlider(String labelText, int value,
      void Function(int) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(labelText),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.blue[700],
              // Adjust the active track color as needed
              inactiveTrackColor: Colors.grey[300],
              // Adjust the inactive track color as needed
              thumbColor: Colors.orangeAccent,
              // Adjust the thumb color as needed
              overlayColor: Colors.blue[700],
              // Adjust the overlay color as needed
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
              // Adjust the thumb shape and size
              overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
              // Adjust the overlay shape and size
              trackHeight: 45.0, // Adjust the track height to make it thicker
            ),
            child: Slider(
              value: value.toDouble(),
              min: 1,
              max: 5,
              divisions: 4,
              label: value.toString(),
              onChanged: (double newValue) {
                onChanged(newValue.round());
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('1'),
              Text('5')
            ],
          ),
        ],
      ),
    );
  }
}