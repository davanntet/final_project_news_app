
import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:flutter/material.dart';

class FormInput extends StatefulWidget {
  const FormInput({super.key, this.prefixIcon = Icons.input, this.obscureText = false, this.labelText="", this.hintText="",required TextEditingController controller,}):_controller=controller;
  final String labelText;
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final TextEditingController _controller;
  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: TextFormField(
        controller: widget._controller,
        obscureText: widget.obscureText?_obscureText:false,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: const TextStyle(
            color: AppColors.greyscale,
            fontSize: 18,
          ),
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: AppColors.greyscale,
            fontSize: 18,
          ),
          prefixIcon: Icon(widget.prefixIcon,color: AppColors.greyscale,),
          suffixIcon: widget.obscureText?Builder(builder: (BuildContext context){
              return InkWell(
                onTap: (){
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child:_obscureText?const Icon(Icons.visibility_off_outlined,color: AppColors.greyscale,):const Icon(Icons.visibility_outlined,color: AppColors.greyscale,)
              );
          }):const Text(""),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.greyscale,width: 1.5),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.white,width: 1.75),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.blue,width: 1.75),
          ),
        ),
      ),
    );
  }
}