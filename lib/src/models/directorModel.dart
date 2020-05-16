
class Directors {

  List<DirectorModel> items = new List();

  Directors();

  Directors.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final director = new DirectorModel.fromJsonMap(item);
      items.add( director );
    }

  }

}

class DirectorModel {
  int id;
  String creditId;
  String name;
  int gender;
  String profilePath;

  DirectorModel({
    this.id,
    this.creditId,
    this.name,
    this.gender,
    this.profilePath,
  });

  DirectorModel.fromJsonMap(Map<String, dynamic> json){
    id          = json['id'];
    creditId    = json['credit_id'];
    name        = json['name'];
    gender      = json['gender'];
    profilePath = json['profile_path'];
  }

  getProfileImg() {
    if ( profilePath == null ) {
      return 'https://cdn11.bigcommerce.com/s-auu4kfi2d9/stencil/59512910-bb6d-0136-46ec-71c445b85d45/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }
  }
}