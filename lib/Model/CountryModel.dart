class whatsAppModel{

  String _name;
  String _messages;
  String _time;
  String _image;

  whatsAppModel(this._name, this._messages, this._time, this._image);

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get time => _time;

  set time(String value) {
    _time = value;
  }

  String get messages => _messages;

  set messages(String value) {
    _messages = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}