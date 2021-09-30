import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/app/app.dart';

@injectable
class SaveAccountBloc extends FormBloc<String, String> {
  SaveAccountBloc(this._repository) {
    addFieldBlocs(fieldBlocs: [
      username,
      password,
    ]);
  }

  final NautaRepository _repository;

  final username = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final password = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  @override
  Future<void> onSubmitting() async {
    final userName = username.value!.contains('@')
        ? username.value!
        : '${username.value}@nauta.com.cu';

    final account = NautaAccount(
      username: userName,
      password: password.value!,
    );

    await _repository.saveAccount(account);

    emitSuccess();
  }
}
