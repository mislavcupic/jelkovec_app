import 'package:flutter/material.dart';

class IzracunBodova extends StatefulWidget {
  const IzracunBodova({super.key});

  // Unutar klase _IzracunBodovaState


  @override
  _IzracunBodovaState createState() => _IzracunBodovaState();
}

class _IzracunBodovaState extends State<IzracunBodova> {
  // Promijenjene varijable za kalkulaciju u int
  int opciUspjeh5 = 0;
  int opciUspjeh6 = 0;
  int opciUspjeh7 = 0;
  int opciUspjeh8 = 0;
  int hrvatskiJezik7 = 0;
  int matematika7 = 0;
  int hrvatskiJezik8 = 0;
  int matematika8 = 0;
  int straniJezik7 = 0;
  int straniJezik8 = 0;
  int kemija7 = 0;
  int kemija8 = 0;
  int fizika7 = 0;
  int fizika8 = 0;
  int tehnicki7 = 0;
  int tehnicki8 = 0;
  int ukupnoBodova = 0;

  // Promijenjene bodovne vrijednosti pragova
  int bodovniPragElektrotehnicar = 60;
  int bodovniPragTehnicarZaElektroniku = 60;
  int bodovniPragTehnicarZaRacunalstvo = 64;

  // Declare variable to store selected smjer
  String selectedSmjer = '';

  int getBodovniPrag(String smjer) {
    // Implementirajte logiku za dobivanje bodovnog praga na temelju odabranog smjera
    // Na primjer, možete koristiti switch-case za različite smjerove i vratiti odgovarajući bodovni prag
    switch (smjer) {
      case 'Elektrotehničar':
        return bodovniPragElektrotehnicar;
      case 'Tehničar za elektroniku':
        return bodovniPragTehnicarZaElektroniku;
      case 'Tehničar za računalstvo':
        return bodovniPragTehnicarZaRacunalstvo;
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
              // Text inputs for various subjects
              _buildTextInput('Opći uspjeh 5. razred', opciUspjeh5.toString(), (newValue) {
                setState(() {
                  opciUspjeh5 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Opći uspjeh 6. razred', opciUspjeh6.toString(), (newValue) {
                setState(() {
                  opciUspjeh6 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Opći uspjeh 7. razred', opciUspjeh7.toString(), (newValue) {
                setState(() {
                  opciUspjeh7 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Opći uspjeh 8. razred', opciUspjeh8.toString(), (newValue) {
                setState(() {
                  opciUspjeh8 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Hrvatski jezik (7. razred)', hrvatskiJezik7.toString(), (newValue) {
                setState(() {
                  hrvatskiJezik7 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Matematika (7. razred)', matematika7.toString(), (newValue) {
                setState(() {
                  matematika7 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Hrvatski jezik (8. razred)', hrvatskiJezik8.toString(), (newValue) {
                setState(() {
                  hrvatskiJezik8 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Matematika (8. razred)', matematika8.toString(), (newValue) {
                setState(() {
                  matematika8 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Strani jezik (7. razred)', straniJezik7.toString(), (newValue) {
                setState(() {
                  straniJezik7 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Strani jezik (8. razred)', straniJezik8.toString(), (newValue) {
                setState(() {
                  straniJezik8 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Kemija (7. razred)', kemija7.toString(), (newValue) {
                setState(() {
                  kemija7 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Kemija (8. razred)', kemija8.toString(), (newValue) {
                setState(() {
                  kemija8 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Fizika (7. razred)', fizika7.toString(), (newValue) {
                setState(() {
                  fizika7 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Fizika (8. razred)', fizika8.toString(), (newValue) {
                setState(() {
                  fizika8 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Tehnička kultura (7. razred)', tehnicki7.toString(), (newValue) {
                setState(() {
                  tehnicki7 = int.tryParse(newValue) ?? 0;
                });
              }),
              _buildTextInput('Tehnička kultura (8. razred)', tehnicki8.toString(), (newValue) {
                setState(() {
                  tehnicki8 = int.tryParse(newValue) ?? 0;
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
                      builder: (context) => AlertDialog(
                        title: const Text('Upozorenje'),
                        content: const Text('Molimo ispunite sva polja prije izračuna bodova.'),
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
                    // Ako su sva polja popunjena, izračunajte ukupne bodove
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
                        // Ako su ukupni bodovi veći od bodovnog praga, čestitajte
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Čestitamo! Procijenjeni broj bodova je $ukupnoBodova'),
                            content: const Text('Imate velike šanse za upis našeg smjera.'),
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
                        // Ako su ukupni bodovi manji ili jednaki od bodovnog praga, upozorite korisnika
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Vaš procijenjeni broj bodova je $ukupnoBodova'),
                            content: const Text('Broj bodova koji ste ostvarili nije dovoljan za upis na naš smjer. Nastavite se truditi!'),
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
        ]
          ),
        ),
      ),
    );
  }

  // Function to build text input field
  Widget _buildTextInput(String labelText, String value, void Function(String) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(labelText),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: TextFormField(
              initialValue: value,
              keyboardType: TextInputType.number,
              onChanged: onChanged, // Ovdje proslijeđujemo funkciju onChanged koja će se pozvati kada se promijeni vrijednost polja
            ),
          ),
        ],
      ),
    );
  }}
