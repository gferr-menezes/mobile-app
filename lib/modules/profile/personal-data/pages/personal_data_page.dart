import 'package:cade_moto_app/application/validators/input_validators.dart';
import 'package:cade_moto_app/modules/profile/personal-data/controllers/personal_data_controller.dart';
import 'package:cade_moto_app/ui/custom_app_bar.dart';
import 'package:cade_moto_app/ui/custom_input.dart';
import 'package:cade_moto_app/ui/theme_extensions.dart';
import 'package:easy_mask/easy_mask.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalDataPage extends GetView<PersonalDataController> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final appBarHeight = AppBar().preferredSize.height;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final pageHeight = Get.height - appBarHeight - statusBarHeight;

    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Dados Pessoais',
          style: context.appBarTextStyle,
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
                elevation: 1,
                margin: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 20),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    key: _formKey,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 20)),
                          CustomInput(
                            label: 'Nome',
                            controller: controller.nameController,
                            validator: (value) {
                              final validadeRequired =
                                  InputValidators.requiredValidator(value);

                              if (validadeRequired != null) {
                                return validadeRequired;
                              }
                            },
                          ),
                          Padding(padding: EdgeInsets.only(top: 40)),
                          CustomInput(
                            label: 'Sobrenome',
                            controller: controller.lastNameController,
                            validator: (value) {
                              final validadeRequired =
                                  InputValidators.requiredValidator(value);

                              if (validadeRequired != null) {
                                return validadeRequired;
                              }
                            },
                          ),
                          Padding(padding: EdgeInsets.only(top: 40)),
                          CustomInput(
                            label: 'CNH',
                            controller: controller.cnhController,
                          ),
                          Padding(padding: EdgeInsets.only(top: 40)),
                          CustomInput(
                            label: 'CPF',
                            controller: controller.cpfController,
                            textInputType: TextInputType.number,
                            validator: (value) {
                              final validadeRequired =
                                  InputValidators.requiredValidator(value);

                              if (validadeRequired != null) {
                                return validadeRequired;
                              }
                            },
                            mask: [
                              TextInputMask(
                                mask: ['999.999.999-99'],
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 40)),
                          CustomInput(
                            label: 'Email',
                            controller: controller.emailController,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              final validadeRequired =
                                  InputValidators.requiredValidator(value);

                              if (validadeRequired != null) {
                                return validadeRequired;
                              }

                              final validadeEmail =
                                  InputValidators.emailValidator(value!);

                              if (validadeEmail != null) {
                                return validadeEmail;
                              }
                            },
                          ),
                          Padding(padding: EdgeInsets.only(top: 40)),
                          SizedBox(
                            width: double.infinity,
                            height: 45,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  controller.saveData();
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
            ),
          );
        },
      ),
    );
  }
}
