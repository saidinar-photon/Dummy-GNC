import 'package:aplikasi_hello_world/model/dropdownMenu.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_hello_world/model/textFormField.dart';
import 'package:aplikasi_hello_world/model/ScreenDropDown.dart';
import 'package:aplikasi_hello_world/login_page.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String srcGncreward =
      "https://cdn-ap-ec.yottaa.net/5b9fc7770b534475fab84e5b/www.gnc.com/v~4b.3d/on/demandware.static/-/Sites-GNC2-Library/default/dwf3135294/content-pages/mygnclogo.png?yocs=4_7_";
  final _firstNameController = TextEditingController();
  final FocusNode _firstNameControllerFocus = FocusNode();
  final _lastNameController = TextEditingController();
  final FocusNode _lastNameControllerFocus = FocusNode();
  final _emailController = TextEditingController();
  final FocusNode _emailControllerFocus = FocusNode();
  final _countryController = TextEditingController();
  final FocusNode _countryControllerFocus = FocusNode();
  final _firstAddressController = TextEditingController();
  final FocusNode _firstAddressControllerFocus = FocusNode();
  final _phoneNumberController = TextEditingController();
  final FocusNode _phoneNumberControllerFocus = FocusNode();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String _selectedGender = "";
  String _selectedMenu = "";
  List departmentList = [
    "Best Seller",
    "Vitamin",
    "Best Seller",
    "Vitamin",
    "Best Seller",
    "Vitamin",
    "Best Seller",
    "Vitamin",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          key: _scaffoldKey,
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.only(top: 30),
              children: <Widget>[
                // DrawerHeader(
                //   child: Text('Drawer Header'),
                //   decoration: BoxDecoration(
                //     color: Colors.blue,
                //   ),
                // ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Align(
                    child: Text(
                      'Welcome, Saidinar!',
                      style: TextStyle(fontSize: 20),
                    ),
                    alignment: Alignment(-1.5, 0),
                  ),
                  dense: true,
                  // Text('Welcome, Saidinar!')
                  // onTap: () {
                ),
                ListTile(
                  title: Text('Account'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('My List'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Purchase History'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Logout'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Find A store'),
                  onTap: () {},
                ),
                ExpansionTile(
                  title: Text('Department'),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Column(
                            // // mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: departmentList.map((name) {
                              return Container(
                                child: Text(name),
                                margin: EdgeInsets.only(bottom: 10),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          appBar: new AppBar(
            leading: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _scaffoldKey.currentState.openDrawer();
                  },
                  child: Icon(
                    Icons.menu, // add custom icons also
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(
                    Icons.location_on, // add custom icons also
                  ),
                ),
              ],
            ),
            title: Center(
              child: FlatButton(
                onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return LoginPage();
            }));
          },
                              child: (Image(
                    image: AssetImage('assets/GNC.png'), width: 150, height: 50)),
              ),
            ),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.shopping_cart,
                      size: 26.0,
                    ),
                  )),
            ],
            iconTheme: new IconThemeData(color: Colors.black),
            backgroundColor: Colors.grey[300],
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.fromLTRB(40, 20, 40, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _searchField(),
                  _menuDropdown(),
                  SizedBox(
                    height: 30,
                  ),
                  _title(),
                  _nameFormTitle(),
                  _formDivider(),
                  _buildFirstName(),
                  SizedBox(
                    height: 20,
                  ),
                  _buildLastName(),
                  SizedBox(
                    height: 20,
                  ),
                  _emailFormTitle(),
                  _formDivider(),
                  _buildEmail(),
                  SizedBox(
                    height: 20,
                  ),
                  _addressFormTitle(),
                  _formDivider(),
                  _buildCountry(),
                  SizedBox(
                    height: 20,
                  ),
                  _firstAddress(),
                  SizedBox(
                    height: 20,
                  ),
                  _phoneNumber(),
                  SizedBox(
                    height: 20,
                  ),
                  _gncRewardTitle(),
                  _formDivider(),
                  _gncRewardLogo(),
                  SizedBox(
                    height: 20,
                  ),
                  _rewardProgramText(),
                  _rewardcheckbox(),
                  SizedBox(
                    height: 20,
                  ),
                  _instructionCheckboxText(),
                  SizedBox(
                    height: 20,
                  ),
                  _aboutTitle(),
                  _formDivider(),
                  _birthdayTitleText(),
                  SizedBox(
                    height: 20,
                  ),
                  _birthdayDropdown(),
                  _birthdayInstructionText(),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _genderDropdown(),
                  SizedBox(
                    height: 20,
                  ),
                  _applyButton()
                ],
              ),
            ),
          ),
        ));
  }

  // Widget _logo() {
  //   return Center(
  //     child: Container(
  //         margin: EdgeInsets.only(top: 15, bottom: 15),
  //         padding: EdgeInsets.only(top: 20, bottom: 20),
  //         width: 500,
  //         decoration: BoxDecoration(
  //             border: Border(
  //           bottom: BorderSide(width: 2.0, color: Colors.grey[200]),
  //         )),
  //         child: Image(
  //             image: AssetImage('assets/GNC.png'), width: 150, height: 50)),
  //   );
  // }

  Widget _searchField() {
    return Container(
      child: TextFormField(
        autofocus: false,
        // obscureText: false,
        decoration: InputDecoration(
          hintText: 'What can we help you find?',
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      ),
    );
  }

  Widget _mainMenu() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: ExpansionTile(
            title: Text(
              "PROFILE",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Column(
                      // // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: departmentList.map((name) {
                        return Container(
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          margin: EdgeInsets.only(bottom: 30),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget _title() {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Text(
        "EDIT ACCOUNT",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _nameFormTitle() {
    return Padding(
      padding: EdgeInsets.only(bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              "NAME",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Text(
            "* required",
            style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }

  Widget _buildFirstName() {
    return TextFormFieldWidget(
      hintText: "First Name",
      labelText: "First Name",
      obscureText: false,
      textInputType: TextInputType.name,
      actionKeyboard: TextInputAction.done,
      functionValidate: commonValidation,
      controller: _firstNameController,
      focusNode: _firstNameControllerFocus,
      onSubmitField: () {},
      parametersValidate: "Please enter firstname.",
      // prefixIcon: Icon(Icons.keyboard_hide),
    );
  }

  Widget _buildLastName() {
    return TextFormFieldWidget(
      hintText: "Last Name",
      labelText: "Last Name",
      obscureText: false,
      textInputType: TextInputType.name,
      actionKeyboard: TextInputAction.done,
      functionValidate: commonValidation,
      controller: _lastNameController,
      focusNode: _lastNameControllerFocus,
      onSubmitField: () {},
      parametersValidate: "Please enter lastname.",
      // prefixIcon: Icon(Icons.keyboard_hide),
    );
  }

  Widget _emailFormTitle() {
    return Padding(
      padding: EdgeInsets.only(bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              "EMAIL / LOGIN INFORMATION",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Text(
            "* required",
            style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }

  Widget _buildEmail() {
    return TextFormFieldWidget(
      hintText: "Email",
      labelText: "Email",
      obscureText: false,
      textInputType: TextInputType.name,
      actionKeyboard: TextInputAction.done,
      functionValidate: commonValidation,
      controller: _emailController,
      focusNode: _emailControllerFocus,
      onSubmitField: () {},
      parametersValidate: "Please enter email.",
      // prefixIcon: Icon(Icons.keyboard_hide),
    );
  }

  Widget _addressFormTitle() {
    return Padding(
      padding: EdgeInsets.only(bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              "ADDRESS",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Text(
            "* required",
            style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }

  Widget _buildCountry() {
    return TextFormFieldWidget(
      hintText: "Country",
      labelText: "Country",
      obscureText: false,
      textInputType: TextInputType.name,
      actionKeyboard: TextInputAction.done,
      functionValidate: commonValidation,
      controller: _countryController,
      focusNode: _countryControllerFocus,
      onSubmitField: () {},
      parametersValidate: "Please enter country.",
      // prefixIcon: Icon(Icons.keyboard_hide),
    );
  }

  Widget _firstAddress() {
    return TextFormFieldWidget(
      hintText: "Address 1",
      labelText: "Address 1",
      obscureText: false,
      textInputType: TextInputType.name,
      actionKeyboard: TextInputAction.done,
      functionValidate: commonValidation,
      controller: _firstAddressController,
      focusNode: _firstAddressControllerFocus,
      onSubmitField: () {},
      parametersValidate: "Please enter country.",
      // prefixIcon: Icon(Icons.keyboard_hide),
    );
  }

  Widget _phoneNumber() {
    return TextFormFieldWidget(
      hintText: "XXX-XXXX-XXXX",
      labelText: "Phone Number",
      obscureText: false,
      textInputType: TextInputType.name,
      actionKeyboard: TextInputAction.done,
      functionValidate: commonValidation,
      controller: _phoneNumberController,
      focusNode: _phoneNumberControllerFocus,
      onSubmitField: () {},
      parametersValidate: "Please enter country.",
      // prefixIcon: Icon(Icons.keyboard_hide),
    );
  }

  Widget _gncRewardTitle() {
    return Padding(
      padding: EdgeInsets.only(bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "MYGNC REWARDS",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }

  Widget _gncRewardLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 120, height: 68, child: Image.network(srcGncreward)),
        Container(
          height: 100,
          // color: Colors.black,
          child: VerticalDivider(
            color: Colors.red[900],
            thickness: 2,
            width: 20,
          ),
        ),
        Container(
            width: 140,
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "THE FREE WAY TO \nBE REWARD",
                    style: TextStyle(
                        color: Color(0xffe32637),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Earn Rewards Points. Get Cash Back Rewards.",
                    style: TextStyle(
                        color: Color(0xffe32637),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ))
      ],
    );
  }

  Widget _rewardProgramText() {
    return Padding(
      padding: EdgeInsets.only(bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "REWARDS PROGRAMS",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _rewardcheckbox() {
    return ListTileTheme(
        contentPadding: EdgeInsets.all(0),
          child: CheckboxListTile(
        title: Text(
          "Sign me up for myGNC Rewards",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        value: false,
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (newValue) {},
      ),
    );
  }

  Widget _instructionCheckboxText() {
    return Padding(
      padding: EdgeInsets.only(bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              "By enrolling in myGNC Rewards, you agree to the Terms & Conditions  of the program.",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _aboutTitle() {
    return Padding(
      padding: EdgeInsets.only(bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "ABOUT YOU",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }

  Widget _dateDropdown() {
    return Container(
      width: 100.0,
      decoration: BoxDecoration(
        border: Border.all(
            width: 2,
            color: Colors.black //                   <--- border width here
            ),
      ),
      child: DropdownButton<String>(
        items: <String>['A', 'B', 'C', 'D'].map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
        onChanged: (_) {},
        hint: Text("Gender"),
      ),
    );
  }

  Widget _birthdayDropdown() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DropDownWidget(
          width: 100.0,
          onChanged: (value) {
            setState(() {
              _selectedGender = value;
            });
          },
          filled: true,
          fillColor: Colors.grey[300],
          items: [
            '01',
            '02',
            '03',
            '04',
            '05',
            '06',
            '07',
            '08',
            '09',
            '10',
            '11',
            '12'
          ],
          labelText: "Month",
        ),
        DropDownWidget(
          width: 100.0,
          onChanged: (value) {
            setState(() {
              _selectedGender = value;
            });
          },
          filled: true,
          fillColor: Colors.grey[300],
          items: ['01', '02', '03', '04', '05', '06', '07'],
          labelText: "Day",
        ),
        DropDownWidget(
          width: 100.0,
          onChanged: (value) {
            setState(() {
              _selectedGender = value;
            });
          },
          filled: true,
          fillColor: Colors.grey[300],
          items: ['1997', '1998'],
          labelText: "Year",
        )
      ],
    );
  }

  Widget _birthdayTitleText() {
    return Padding(
      padding: EdgeInsets.only(bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "BIRTHDAY",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _birthdayInstructionText() {
    return Padding(
      padding: EdgeInsets.only(bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              "Don't miss out on your myGNC Rewards birthday gift!",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _genderDropdown() {
    return DropDownWidget(
      width: double.infinity,
      onChanged: (value) {
        setState(() {
          _selectedGender = value;
        });
      },
      items: ['Male', 'Female'],
      labelText: "Gender",
      hintText: "Gender",
      filled: true,
      fillColor: Colors.grey[300],
    );
  }

  Widget _menuDropdown() {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: ScreenDropdownWidget(
        width: double.infinity,
        onChanged: (value) {
          setState(() {
            _selectedMenu = value;
          });
        },
        hintText: "PROFILE",
        items: ['ACCOUNT', 'PROFILE', 'ADDRESS', 'REWARDS'],
        // labelText: "PROFILE",
        // filled: true,
        // fillColor: Colors.grey[300],
      ),
    );
  }

  Widget _applyButton() {
    return Container(
      width: double.infinity,
      height: 40,
      child: RaisedButton(
          // padding: EdgeInsets.fromLTRB(62.5, 15, 62.5, 15),
          color: Color(0xffe32637),
          onPressed: () {},
          child: Text('APPLY ALL CHANGES TO ACCOUNT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ))),
    );
  }
}

Widget _formDivider() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
    child: Divider(
      color: Colors.grey[500],
      thickness: 3,
    ),
  );
}
