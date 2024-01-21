import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormPage extends StatefulWidget {
  @override
  State<FormPage> createState() => _FormPageState();
}

//OJOOOOOO-> es importante que la funcion de _validateTiltle se ejecute para manejar el estado del form, si esta no se ejecuta el form siempre va a tener un estado true, asi no llenemos data en el textformfield, por ello podriamos llamar a la función _validateTile al inicio o al presionar el botón agregar
class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _titleController = TextEditingController();
  String? _titleErrorText;

  void _validateTitle(String? value) {
    if (value == null || value.isEmpty || value == "") {
      setState(() {
        _titleErrorText = "El titulo no debe estar vacio";
      });
      print(value);
    } else if (isValidTitle(value) == false) {
      _titleErrorText = "Se excedio el tamaño del valor";
      setState(() {});
    } else {
      setState(() {
        print(value);
        _titleErrorText = null;
      });
    }
  }

  bool isValidTitle(String title) {
    //si encuentra coincidencia devuelve TRUE
    //caso contrario FALSE
    //OJO: La expresion regular ^.{1,30}$ evalua si la cadena tiene de 1 a 30 caracteres
    return RegExp(r'^.{1,2}$').hasMatch(title);
  }

  void _submitForm() {
    _validateTitle(_titleController.text);
    print(_formKey.currentState?.validate() ?? "es null");

    if (_formKey.currentState?.validate() == true) {
      setState(() {});
      print("Se subió correctamente");
      print(_titleController.text);
    } else {
      print("No es valuido");
    }
  }

  @override
  void initState() {
    _validateTitle(_titleController.text);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                validator: (value) => _titleErrorText,
                onChanged: (valor) => _validateTitle(valor),
                style: TextStyle(
                  color: Colors.white,
                ),
                cursorColor: Color(0xffEDA971),
                //tipo de teclado
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  labelStyle: TextStyle(color: Colors.orange),
                  hintText: "Sugerencia de nombre de ttulo",
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Color(0xff626B92),
                  prefixIcon: SvgPicture.asset(
                    "assets/icons/type.svg",
                    fit: BoxFit.scaleDown,
                    colorFilter: ColorFilter.mode(
                      Colors.white54,
                      BlendMode.srcIn,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    _submitForm(); // if (_titleController.text == null) {
                    //   print(_titleController.text);
                    //   _submitForm();
                    // } else {
                    //   return null;
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Color(0xffEDA971),
                  ),
                  child: Text(
                    "Agregar",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
