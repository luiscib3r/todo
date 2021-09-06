import 'package:flutter/material.dart';
import 'package:todo/app/app.dart';

class UssdCodeForm extends StatefulWidget {
  const UssdCodeForm({
    Key? key,
    required this.fields,
    required this.code,
    required this.type,
    required this.icon,
  }) : super(key: key);

  final List<UssdCodeField> fields;
  final String code;
  final String type;
  final Widget icon;

  @override
  _UssdCodeFormState createState() => _UssdCodeFormState();
}

class _UssdCodeFormState extends State<UssdCodeForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController phoneNumberController = TextEditingController();

  late String code;

  @override
  void initState() {
    super.initState();

    setState(() {
      code = widget.code;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          widget.icon,
          const SizedBox(height: 30),
          ...widget.fields.map(
            (field) {
              switch (field.type) {
                // Phone Number
                case 'phone_number':
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextFormField(
                      controller: phoneNumberController,
                      maxLength: 8,
                      autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: field.name.toUpperCase(),
                        suffixIcon: IconButton(
                          onPressed: () async {
                            final number = await getContactPhoneNumber();

                            if (number != null) {
                              phoneNumberController
                                ..text = number
                                ..addListener(
                                  () {
                                    phoneNumberController.selection =
                                        const TextSelection(
                                      baseOffset: 8,
                                      extentOffset: 8,
                                    );
                                  },
                                );
                            }
                          },
                          icon: const Icon(
                            Icons.contacts,
                            color: Colors.blue,
                            semanticLabel: 'Seleccionar contacto',
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.phone,
                          color: Colors.blue,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Este campo no debe estar vacío';
                        }

                        if (value.length < 8) {
                          return 'Este campo debe contener 8 digitos';
                        }

                        if (value[0] != '5') {
                          return 'Este campo debe comenzar con el dígito 5';
                        }

                        return null;
                      },
                      keyboardType: TextInputType.phone,
                      onSaved: (val) {
                        if (val != null) {
                          final rem = '{${field.name}}';

                          final newCode = code.replaceAll(rem, val);

                          setState(() {
                            code = newCode;
                          });
                        }
                      },
                    ),
                  );

                // Money
                case 'money':
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        maxLength: 4,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: field.name.toUpperCase(),
                          prefixIcon: const Icon(
                            Icons.attach_money,
                            color: Colors.blue,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Este campo no debe estar vacío';
                          }

                          try {
                            final cant = double.parse(value);

                            if (cant.isNegative) {
                              return 'Debe poner una cantidad mayor que cero';
                            }
                            if (value.split('.')[1].length > 2) {
                              // ignore: lines_longer_than_80_chars
                              return 'Solo se admiten valores de tipo monetario';
                            }
                          } on Exception {
                            return 'Solo se admiten valores de tipo monetario';
                          }

                          return null;
                        },
                        keyboardType: TextInputType.number,
                        onSaved: (val) {
                          if (val != null) {
                            final rem = '{${field.name}}';

                            String newCode;

                            if (val.contains('.')) {
                              newCode = code.replaceAll('*$rem', '');
                            } else {
                              newCode = code.replaceAll(rem, val);
                            }

                            setState(() {
                              code = newCode;
                            });
                          }
                        }),
                  );
                // Key number
                case 'key_number':
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextFormField(
                      obscureText: true,
                      maxLength: 4,
                      autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: field.name.toUpperCase(),
                        prefixIcon: const Icon(
                          Icons.vpn_key,
                          color: Colors.blue,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Este campo no debe estar vacío';
                        }

                        if (value.length != 4) {
                          return 'La clave debe contener 4 dígitos';
                        }

                        try {
                          if (int.parse(value) < 0) {
                            return 'La clave no debe contener símbolos';
                          }
                        } catch (e) {
                          return 'La clave no debe contener símbolos';
                        }

                        return null;
                      },
                      keyboardType: TextInputType.number,
                      onSaved: (val) {
                        if (val != null) {
                          final rem = '{${field.name}}';

                          final newCode = code.replaceAll(rem, val);

                          setState(() {
                            code = newCode;
                          });
                        }
                      },
                    ),
                  );
                // Card number
                case 'card_number':
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextFormField(
                      maxLength: 16,
                      autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: field.name.toUpperCase(),
                        prefixIcon: const Icon(
                          Icons.credit_card,
                          color: Colors.blue,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Este campo no debe estar vacío';
                        }

                        if (value.length != 16) {
                          // ignore: lines_longer_than_80_chars
                          return 'El número de la tarjeta debe contener 16 dígitos';
                        }

                        return null;
                      },
                      keyboardType: TextInputType.number,
                      onSaved: (val) {
                        if (val != null) {
                          final rem = '{${field.name}}';

                          final newCode = code.replaceAll(rem, val);

                          setState(() {
                            code = newCode;
                          });
                        }
                      },
                    ),
                  );
              }

              return Text('El tipo de campo ${field.type} es desconocido');
            },
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: MaterialButton(
              elevation: 0,
              color: Colors.blue,
              onPressed: () {
                final form = _formKey.currentState;

                if (form != null && form.validate()) {
                  form.save();
                  callTo(code);
                  setState(() {
                    code = widget.code;
                  });
                }
              },
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Icon(
                  Icons.call,
                  size: 48,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
