import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'test.dart';

class Hft extends StatelessWidget {
  Hft({Key? key}) : super(key: key);

  final TextEditingController _ipcontroller = TextEditingController();

  Future<void> sendcommand(
      BuildContext context, String id, String command) async {
    final ip = _ipcontroller.text; // Ambil nilai IP dari TextEditingController

    // Tampilkan ip, id, dan command di console
    print('IP: $ip, ID: $id, Command: $command');

    final url = Uri.parse('http://$ip/srm/com.php?id=$id&cmd=$command');

    try {
      final respon = await http.get(url);
      if (respon.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Command sent successfully')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${respon.statusCode}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to send command: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HFT"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/ggk-logo.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _ipcontroller,
                  decoration: InputDecoration(
                    labelText: "ENTER IP SERVER",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "HFT:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Table(
                  border: TableBorder.all(), // Tambahkan sempadan
                  columnWidths: const <int, TableColumnWidth>{
                    0: FixedColumnWidth(150), // Lebar kolum pertama
                    1: FlexColumnWidth(), // Lebar fleksibel kolum kedua
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    // Tambahkan baris jadual di sini seperti yang anda telah buat
                    TableRow(
                      decoration: BoxDecoration(
                        color: Colors.grey[300], // Warna latar baris pertama
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'NAMA TARGET',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'TINDAKAN',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('HFT ALL'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("HFT ALL UP");
                                  sendcommand(context, 'allhft', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("HFT ALL DOWN");
                                  sendcommand(context, 'allhft', '1');
                                },
                                child: Text("DOWN"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('HFT 1'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("HFT 1 UP");
                                  sendcommand(context, '13', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("HFT 1 DOWN");
                                  sendcommand(context, '13', '1');
                                },
                                child: Text("DOWN"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('HFT 2'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("HFT 2 UP");
                                  sendcommand(context, '14', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("HFT 2 DOWN");
                                  sendcommand(context, '14', '1');
                                },
                                child: Text("DOWN"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('HFT 3'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("HFT 3 UP");
                                  sendcommand(context, '15', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("HFT 3 DOWN");
                                  sendcommand(context, '15', '1');
                                },
                                child: Text("DOWN"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('HFT 4'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("HFT 4 UP");
                                  sendcommand(context, '16', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("HFT 4 DOWN");
                                  sendcommand(context, '16', '1');
                                },
                                child: Text("DOWN"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('HFT 5'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("HFT 5 UP");
                                  sendcommand(context, '17', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("HFT 5 DOWN");
                                  sendcommand(context, '17', '1');
                                },
                                child: Text("DOWN"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('HFT 6'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("HFT 6 UP");
                                  sendcommand(context, '18', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("HFT 6 DOWN");
                                  sendcommand(context, '18', '1');
                                },
                                child: Text("DOWN"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('HFT 7'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("HFT 7 UP");
                                  sendcommand(context, '19', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("HFT 7 DOWN");
                                  sendcommand(context, '19', '1');
                                },
                                child: Text("DOWN"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('HFT 8'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("HFT 8 UP");
                                  sendcommand(context, '20', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("HFT 8 DOWN");
                                  sendcommand(context, '20', '1');
                                },
                                child: Text("DOWN"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('HFT 9'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("HFT 9 UP");
                                  sendcommand(context, '21', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("HFT 9 DOWN");
                                  sendcommand(context, '21', '1');
                                },
                                child: Text("DOWN"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('HFT 10'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("HFT 10 UP");
                                  sendcommand(context, '22', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("HFT 10 DOWN");
                                  sendcommand(context, '22', '1');
                                },
                                child: Text("DOWN"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('HFT 11'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("HFT 11 UP");
                                  sendcommand(context, '23', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("HFT 11 DOWN");
                                  sendcommand(context, '23', '1');
                                },
                                child: Text("DOWN"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('HFT 12'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("HFT 12 UP");
                                  sendcommand(context, '24', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("HFT 12 DOWN");
                                  sendcommand(context, '24', '1');
                                },
                                child: Text("DOWN"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sit()),
                      );
                    },
                    child: Text("SIT")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
