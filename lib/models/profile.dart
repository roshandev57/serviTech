class Profile {
  dynamic userId;
  String email, name, pic;

  Profile({this.userId = 0, this.email = '', this.name = '', this.pic = ''});

  Profile.copy(from)
      : this(
            userId: from.userId,
            email: from.email,
            name: from.name,
            pic: from.pic);

  Profile.fromJson(Map<String, dynamic> json)
      : this(
            userId: json['userId'],
            email: json['email'],
            name: json['name'],
            pic: json['pic']);

  Map<String, dynamic> toJson() =>
      {'userId': userId, 'email': email, 'name': name, 'pic': pic};
}
