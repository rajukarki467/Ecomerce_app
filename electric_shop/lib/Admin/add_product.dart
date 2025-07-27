import 'package:electric_shop/widget/support_widget.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final List<String> categoryitems = ['Watch', 'Laptop', 'Tv', 'Headphone'];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: Center(
          child: Text("Add Product", style: AppWidget.semiboldTextFieldStyle()),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Upload the Product Image",
                style: AppWidget.lightTextFieldStyle(),
              ),
              SizedBox(height: 20.0),
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(21),
                  ),
                  child: Icon(Icons.camera_alt_outlined),
                ),
              ),
              SizedBox(height: 20.0),
              Text(" Product Name", style: AppWidget.lightTextFieldStyle()),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffceecf8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(height: 24.0),
              Text(" Product Category", style: AppWidget.lightTextFieldStyle()),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffceecf8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    items: categoryitems
                        .map(
                          (item) => DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: AppWidget.semiboldTextFieldStyle(),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: ((value) => setState(() {
                      this.value = value;
                    })),
                    dropdownColor: Colors.white,
                    hint: Text("Select category"),
                    iconSize: 36.0,
                    icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                    value: value,
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Add product", style: TextStyle(fontSize: 24.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
