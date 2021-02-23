import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  double hasil_luas = 0.0;
  double hasil_volume = 0.0;

  TextEditingController panjang_luas = TextEditingController();
  TextEditingController lebar_luas = TextEditingController();

  TextEditingController panjang_vol = TextEditingController();
  TextEditingController lebar_vol = TextEditingController();
  TextEditingController tinggi_vol = TextEditingController();

  void hitungLuas() {
    FocusScope.of(context).requestFocus(FocusNode());
    setState(() {
      hasil_luas =
          double.parse(panjang_luas.text) * double.parse(lebar_luas.text);
    });
  }

  void hitungVol() {
    FocusScope.of(context).requestFocus(FocusNode());
    setState(() {
      hasil_volume = double.parse(panjang_vol.text) *
          double.parse(lebar_vol.text) *
          double.parse(tinggi_vol.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hitung Luas dan Volume",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Menghitung Luas",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.amber,
                    ),
                  ),
                ),
                SizedBox(height: 18.0),
                InputNumberTextField(
                    "Panjang (m)", "Masukkan panjang", panjang_luas),
                SizedBox(height: 12.0),
                InputNumberTextField("Lebar (m)", "Masukkan lebar", lebar_luas),
                SizedBox(height: 12.0),
                ButtonCountResult(
                    (hasil_luas == 0.0) ? "" : "Luas = $hasil_luas m2",
                    "Hitung Luas", () {
                  hitungLuas();
                }),
                SizedBox(height: 24),
                Center(
                  child: Text(
                    "Menghitung Volume",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.amber,
                    ),
                  ),
                ),
                SizedBox(height: 18.0),
                InputNumberTextField(
                    "Panjang (m)", "Masukkan panjang", panjang_vol),
                SizedBox(height: 12.0),
                InputNumberTextField("Lebar (m)", "Masukkan lebar", lebar_vol),
                SizedBox(height: 12.0),
                InputNumberTextField(
                    "Tinggi (m)", "Masukkan tinggi", tinggi_vol),
                SizedBox(height: 12.0),
                ButtonCountResult(
                    (hasil_volume == 0.0) ? "" : "Volume = $hasil_volume m3",
                    "Hitung Volume", () {
                  hitungVol();
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget InputNumberTextField(
      String title, String hint, TextEditingController controller) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey[800],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: hint,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amberAccent,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ButtonCountResult(String result, String button, Function count_func) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            result,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          MaterialButton(
            padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              button,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            color: Colors.amber,
            onPressed: count_func,
          )
        ],
      ),
    );
  }
}
