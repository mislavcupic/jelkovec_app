import 'package:flutter/material.dart';

class IzracunBodova extends StatefulWidget {
  const IzracunBodova({Key? key}) : super(key: key);

  @override
  _IzracunBodovaState createState() => _IzracunBodovaState();
}

class _IzracunBodovaState extends State<IzracunBodova> {
  // Promijenjene varijable za kalkulaciju u double
  double opciUspjeh5 = 0;
  double opciUspjeh6 = 0;
  double opciUspjeh7 = 0;
  double opciUspjeh8 = 0;
  double hrvatskiJezik7 = 0;
  double matematika7 = 0;
  double hrvatskiJezik8 = 0;
  double matematika8 = 0;
  double straniJezik7 = 0;
  double straniJezik8 = 0;
  double kemija7 = 0;
  double kemija8 = 0;
  double fizika7 = 0;
  double fizika8 = 0;
  double tehnicki7 = 0;
  double tehnicki8 = 0;
  double ukupnoBodova = 0;

  // Declare variable to store selected smjer
  String selectedSmjer = '';

  int getBodovniPrag(String smjer) {
    // Implementirajte logiku za dobivanje bodovnog praga na temelju odabranog smjera
    // Na primjer, možete koristiti switch-case za različite smjerove i vratiti odgovarajući bodovni prag
    switch (smjer) {
      case 'Elektrotehničar':
        return 60;
      case 'Tehničar za elektroniku':
        return 60;
      case 'Tehničar za računalstvo':
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
                title: const Text('Elektrotehničar'),
                value: 'Elektrotehničar',
                groupValue: selectedSmjer,
                onChanged: (value) {
                  setState(() {
                    selectedSmjer = value!;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Tehničar za elektroniku'),
                value: 'Tehničar za elektroniku',
                groupValue: selectedSmjer,
                onChanged: (value) {
                  setState(() {
                    selectedSmjer = value!;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Tehničar za računalstvo'),
                value: 'Tehničar za računalstvo',
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
              _buildSlider('Matematika (7. razred)', matematika7, (newValue) {
                setState(() {
                  matematika7 = newValue;
                });
              }),
              _buildSlider(
                  'Hrvatski jezik (8. razred)', hrvatskiJezik8, (newValue) {
                setState(() {
                  hrvatskiJezik8 = newValue;
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
                  // Provjerite jesu li sva polja popunjena
                  if (opciUspjeh5 == 0 ||
                      opciUspjeh6 == 0 ||
                      opciUspjeh7 == 0 ||
                      opciUspjeh8 == 0 ||
                      hrvatskiJezik7 == 0 ||
                      matematika7 == 0 ||
                      hrvatskiJezik8 == 0 ||
                      matematika8 == 0 ||
                      straniJezik7 == 0 ||
                      straniJezik8 == 0 ||
                      kemija7 == 0 ||
                      kemija8 == 0 ||
                      fizika7 == 0 ||
                      fizika8 == 0 ||
                      tehnicki7 == 0 ||
                      tehnicki8 == 0) {
                    // Ako nisu sva polja popunjena, prikažite poruku
                    showDialog(
                      context: context,
                      builder: (context) =>
                          AlertDialog(
                            title: const Text('Upozorenje'),
                            content: const Text(
                                'Molimo ispunite sva polja prije izračuna bodova.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  print(ukupnoBodova);
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                    );
                  } else {
                    // Ako jesu, izračunajte ukupne bodove
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

                    // Provjerite je li ukupni bodovi različiti od 0
                    if (ukupnoBodova != 0) {
                      // Dobijte bodovni prag za odabrani smjer
                      int bodovniPragSmjera = getBodovniPrag(selectedSmjer);

                      // Provjerite usporedbu ukupnih bodova s bodovnim pragom za odabrani smjer
                      if (ukupnoBodova > bodovniPragSmjera) {
                        // Ako jesu, čestitajte
                        showDialog(
                          context: context,
                          builder: (context) =>
                              AlertDialog(
                                title: Text(
                                    'Čestitamo! Procijenjeni broj bodova je $ukupnoBodova'),
                                content: const Text(
                                    'Imate velike šanse za upis našeg smjera.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                        );
                      } else {
                        // Ako nisu, upozorite korisnika
                        showDialog(
                          context: context,
                          builder: (context) =>
                              AlertDialog(
                                title: Text(
                                    'Vaš procijenjeni broj bodova je $ukupnoBodova'),
                                content: const Text(
                                    'Broj bodova koji ste ostvarili nije dovoljan za upis na odabrani smjer. Nastavite se truditi!'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                        );
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
  Widget _buildSlider(String labelText, double value,
      void Function(double) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(labelText),
          Slider(
            value: value,
            min: 0,
            max: 5,
            divisions: 5,
            label: value.toString(),
            onChanged: onChanged,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('0'),
              Text('1'),
              Text('2'),
              Text('3'),
              Text('4'),
              Text('5'),
            ],
          ),
        ],
      ),
    );
  }
}