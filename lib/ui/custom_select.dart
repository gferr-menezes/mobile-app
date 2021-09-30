import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class CustomSelect extends StatelessWidget {
  final List<String> items;
  final String label;
  final void Function(String?)? onChanged;
  final bool? isRequired;

  CustomSelect({
    required this.items,
    required this.label,
    required this.onChanged,
    this.isRequired,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Colors.grey.shade300,
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 110,
            child: Row(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 90,
                  ),
                  child: Text(
                    label,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                isRequired != null && isRequired == true
                    ? Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          '*',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.65,
                child: DropdownSearch<String>(
                  dropdownBuilder: (BuildContext context, value) {
                    return Text(
                      value ?? '',
                      textAlign: TextAlign.end,
                    );
                  },
                  mode: Mode.BOTTOM_SHEET,
                  maxHeight: MediaQuery.of(context).size.height * .6,
                  items: items,
                  label: "",
                  onChanged: onChanged,
                  selectedItem: "",
                  showSearchBox: true,
                  searchFieldProps: TextFieldProps(
                    decoration: InputDecoration(
                      isDense: true,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.green,
                      ),
                      labelText: 'Pesquisa',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelStyle: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  showAsSuffixIcons: true,
                  dropdownSearchDecoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    labelText: 'label',
                  ),
                  emptyBuilder: (BuildContext context, value) {
                    return Center(
                      child: Text('Nenhum dado encontrado!'),
                    );
                  },
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  child: CircularProgressIndicator(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
