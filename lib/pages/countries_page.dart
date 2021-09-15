import 'package:distance_guard_flutter/blocs/blocs.dart';
import 'package:distance_guard_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({Key? key}) : super(key: key);

  @override
  _CountriesPageState createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CountryListBloc, CountryListState>(
        builder: (context, state) {
          if (state is CountryListFetchedInitial) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CountryListFetchedSuccess) {
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.clear),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        contentPadding: EdgeInsets.all(18.0),
                        hintStyle: TextStyle(color: Color(0xFF80BDFF)),
                        hintText: "Type country or province region",
                        fillColor: Color(0xFFE6F2ff)),
                  ),
                  SizedBox(height: 10.0),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.countryList.length,
                      itemBuilder: (context, index) {
                        return CountryItem(state.countryList[index]);
                      },
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
