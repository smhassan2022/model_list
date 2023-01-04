class CountryModel{
  String _name;
  String _countryCode;
  String _capital;
  String _image;

  CountryModel(this._name, this._countryCode, this._capital, this._image);

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get capital => _capital;

  set capital(String value) {
    _capital = value;
  }

  String get countryCode => _countryCode;

  set countryCode(String value) {
    _countryCode = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}