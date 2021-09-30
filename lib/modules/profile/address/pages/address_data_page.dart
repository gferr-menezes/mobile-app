import 'package:cade_moto_app/application/validators/input_validators.dart';
import 'package:cade_moto_app/modules/profile/address/controllers/address_data_controller.dart';
import 'package:cade_moto_app/ui/custom_app_bar.dart';
import 'package:cade_moto_app/ui/custom_input.dart';
import 'package:cade_moto_app/ui/custom_select.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressDataPage extends GetView<AddressDataController> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final appBarHeight = AppBar().preferredSize.height;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final pageHeight = Get.height - appBarHeight - statusBarHeight;

    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Dados do Endereço',
          style: TextStyle(
            color: Color(0xff222222),
          ),
        ),
        centerTitle: false,
      ),
      body: LayoutBuilder(
        builder: (_, constrains) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: pageHeight,
                maxWidth: Get.width,
              ),
              child: Card(
                elevation: 2,
                margin: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 20),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 20)),
                        CustomInput(
                          label: 'Endereço',
                          //controller: controller.nameController,
                          validator: (value) {
                            final validadeRequired =
                                InputValidators.requiredValidator(value);

                            if (validadeRequired != null) {
                              return validadeRequired;
                            }
                          },
                        ),
                        Padding(padding: EdgeInsets.only(top: 30)),
                        CustomInput(
                          label: 'Bairro',
                          //controller: controller.nameController,
                          validator: (value) {
                            final validadeRequired =
                                InputValidators.requiredValidator(value);

                            if (validadeRequired != null) {
                              return validadeRequired;
                            }
                          },
                        ),
                        Padding(padding: EdgeInsets.only(top: 30)),
                        CustomSelect(
                          items: controller.statesForSelect,
                          label: 'Estado',
                          onChanged: controller.onChangeState,
                        ),
                        Padding(padding: EdgeInsets.only(top: 30)),
                        CustomSelect(
                          items: controller.citiesForSelect,
                          label: 'Cidade',
                          onChanged: controller.onChangeCity,
                        ),
                        Padding(padding: EdgeInsets.only(top: 40)),
                        SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                //controller.saveData();
                              }
                            },
                            child: Text('Salvar Dados'.toUpperCase()),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
