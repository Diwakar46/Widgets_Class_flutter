String? _validator(String? value) {
  if (value!.isEmpty) {
    return 'Please enter a username';
  }
  return null;
}


validator : (
value){
if(value!.isEmpty){
return 'Please enter an Email';
}
RegExp _emailCheck = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

return null;
}