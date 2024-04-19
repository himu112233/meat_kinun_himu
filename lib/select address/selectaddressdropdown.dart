import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

class SelectAddressBottomSheet extends StatefulWidget {
  const SelectAddressBottomSheet({Key? key}) : super(key: key);

  @override
  State<SelectAddressBottomSheet> createState() => _SelectAddressBottomSheetState();
}

class _SelectAddressBottomSheetState extends State<SelectAddressBottomSheet> {
  String selectedRegion = 'Dhaka'; // Variable to hold the selected region
  String? selectedDistrict; // Variable to hold the selected district
  String? selectedUpazila; // Variable to hold the selected upazila
  String? selectedPostCode; // Variable to hold the selected postcode
  List<Map<String, String>> districts = [
    {
      "id": "1",
      "division_id": "3",
      "name": "Dhaka",
      "bn_name": "ঢাকা",
      "lat": "23.7115253",
      "long": "90.4111451"
    },
    {
      "id": "2",
      "division_id": "3",
      "name": "Faridpur",
      "bn_name": "ফরিদপুর",
      "lat": "23.6070822",
      "long": "89.8429406"
    },
    // Add more regions here...
  ];

  List<Map<String, String>> upazilas = [
    {
      "id": "1",
      "district_id": "1",
      "name": "Amtali",
      "bn_name": "আমতলী"
    },
    {
      "id": "2",
      "district_id": "2",
      "name": "Bamna",
      "bn_name": "বামনা"
    },
    // Add more upazilas here...
  ];

  List<Map<String, String>> postcodes = [
    {
      "division_id": "2",
      "district_id": "1",
      "upazila": "Amtali",
      "postOffice": "Amtali",
      "postCode": "8710"
    },
    {
      "division_id": "1",
      "district_id": "2",
      "upazila": "Bamna",
      "postOffice": "Bamna",
      "postCode": "8730"
    },
    // Add more postcodes here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 250,),
          Row(
            children: [
              Text(
                'Region',
                style: TextStyle(
                  color: Color(0xFF555555),
                  fontSize: 10,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              Text(
                selectedRegion, // Display selected region
                style: TextStyle(
                  color: Color(0xFF555555),
                  fontSize: 10,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'District',
                style: TextStyle(
                  color: Color(0xFF555555),
                  fontSize: 10,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              if (selectedDistrict != null)
                Text(
                  selectedDistrict!, // Display selected district
                  style: TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 10,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
            ],
          ),
          Visibility(
            visible: selectedDistrict != null, // Only show when a district is selected
            child: Row(
              children: [
                Text(
                  'Upazila',
                  style: TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 10,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                if (selectedUpazila != null)
                  Text(
                    selectedUpazila!, // Display selected upazila
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 10,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
              ],
            ),
          ),
          Visibility(
            visible: selectedUpazila != null, // Only show when an upazila is selected
            child: Row(
              children: [
                Text(
                  'PostCode',
                  style: TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 10,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                if (selectedPostCode != null)
                  Text(
                    selectedPostCode!, // Display selected postcode
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 10,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: selectedDistrict == null
                  ? districts.length
                  : (selectedUpazila == null ? upazilas.length : postcodes.length),
              itemBuilder: (context, index) {
                if (selectedDistrict == null) {
                  final district = districts[index];
                  return ListTile(
                    title: Text(district['name'] ?? ''),
                    onTap: () {
                      setState(() {
                        selectedDistrict = district['id']; // Set selected district ID
                        selectedUpazila = null; // Reset selected upazila when district is selected
                        selectedPostCode = null; // Reset selected postcode when district is selected
                      });
                    },
                  );
                } else if (selectedUpazila == null) {
                  final upazila = upazilas[index];
                  if (upazila['district_id'] == selectedDistrict) {
                    return ListTile(
                      title: Text(upazila['name'] ?? ''),
                      onTap: () {
                        setState(() {
                          selectedUpazila = upazila['name'];
                          selectedPostCode = null; // Reset selected postcode when upazila is selected
                        });
                      },
                    );
                  }
                } else {
                  final postcode = postcodes[index];
                  if (postcode['upazila'] == selectedUpazila) {
                    return ListTile(
                      title: Text(postcode['postCode'] ?? ''),
                      onTap: () {
                        setState(() {
                          selectedPostCode = postcode['postCode'];
                        });
                      },
                    );
                  }
                }
                return SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}