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
    final l10n = context.l10n;

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
                          icon: Icon(
                            Icons.contacts,
                            color: Colors.blue,
                            semanticLabel: l10n.selectContact,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.phone,
                          color: Colors.blue,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return l10n.notEmptyField;
                        }

                        if (value.length < 8) {
                          return l10n.digitsWarning;
                        }

                        if (value[0] != '5') {
                          return l10n.startWithDigit;
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
                            return l10n.notEmptyField;
                          }

                          try {
                            final cant = double.parse(value);

                            if (cant.isNegative) {
                              return l10n.greaterZero;
                            }
                            if (value.split('.')[1].length > 2) {
                              return l10n.onlyMonetaryValues;
                            }
                          } on Exception {
                            return l10n.onlyMonetaryValues;
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
                          return l10n.notEmptyField;
                        }

                        if (value.length != 4) {
                          return l10n.fourDigitsKey;
                        }

                        try {
                          if (int.parse(value) < 0) {
                            return l10n.notSymbolsKey;
                          }
                        } catch (e) {
                          return l10n.notSymbolsKey;
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
                          return l10n.notEmptyField;
                        }

                        if (value.length != 16) {
                          return l10n.digitsOfCard;
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

              return Text(l10n.fieldTypeError(field.type));
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
