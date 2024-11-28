import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ggk/hft.dart';

class Sit extends StatelessWidget {
  Sit({Key? key}) : super(key: key);

  final TextEditingController _ipcontroller = TextEditingController();

  Future<void> sendcommand(
      BuildContext context, String id, String command) async {
    final ip = _ipcontroller.text; // Ambil nilai IP dari TextEditingController

    // Tampilkan ip, id, dan command di console
    print('IP: $ip, ID: $id, Command: $command');

    final url = Uri.parse('http://$ip/srm/com.php?id=$id&cmd=$command');

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Command sent successfully')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${response.statusCode}')),
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
        title: const Text("SIT"),
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
                  decoration: const InputDecoration(
                    labelText: "ENTER IP SERVER",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "SIT:",
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
                          child: Text('SIT ALL'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("SIT ALL UP");
                                  sendcommand(context, 'allsit', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("SIT ALL DOWN");
                                  sendcommand(context, 'allsit', '1');
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
                          child: Text('SIT 1'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("SIT 1 UP");
                                  sendcommand(context, '1', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("SIT 1 DOWN");
                                  sendcommand(context, '1', '1');
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
                          child: Text('SIT 2'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("SIT 2 UP");
                                  sendcommand(context, '2', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("SIT 2 DOWN");
                                  sendcommand(context, '2', '1');
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
                          child: Text('SIT 3'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("SIT 3 UP");
                                  sendcommand(context, '3', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("SIT 3 DOWN");
                                  sendcommand(context, '3', '1');
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
                          child: Text('SIT 4'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("SIT 4 UP");
                                  sendcommand(context, '4', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("SIT 4 DOWN");
                                  sendcommand(context, '4', '1');
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
                          child: Text('SIT 5'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("SIT 5 UP");
                                  sendcommand(context, '5', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("SIT 5 DOWN");
                                  sendcommand(context, '5', '1');
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
                          child: Text('SIT 6'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("SIT 6 UP");
                                  sendcommand(context, '6', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("SIT 6 DOWN");
                                  sendcommand(context, '6', '1');
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
                          child: Text('SIT 7'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("SIT 7 UP");
                                  sendcommand(context, '7', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("SIT 7 DOWN");
                                  sendcommand(context, '7', '1');
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
                          child: Text('SIT 8'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("SIT 8 UP");
                                  sendcommand(context, '8', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("SIT 8 DOWN");
                                  sendcommand(context, '8', '1');
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
                          child: Text('SIT 9'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("SIT 9 UP");
                                  sendcommand(context, '9', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("SIT 9 DOWN");
                                  sendcommand(context, '9', '1');
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
                          child: Text('SIT 10'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("SIT 10 UP");
                                  sendcommand(context, '10', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("SIT 10 DOWN");
                                  sendcommand(context, '10', '1');
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
                          child: Text('SIT 11'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("SIT 11 UP");
                                  sendcommand(context, '11', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("SIT 11 DOWN");
                                  sendcommand(context, '11', '1');
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
                          child: Text('SIT 12'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 1
                                  print("SIT 12 UP");
                                  sendcommand(context, '12', '2');
                                },
                                child: Text("UP"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Fungsi butang 2
                                  print("SIT 12 DOWN");
                                  sendcommand(context, '12', '1');
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
                        MaterialPageRoute(builder: (context) => Hft()),
                      );
                    },
                    child: Text("HFT")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
