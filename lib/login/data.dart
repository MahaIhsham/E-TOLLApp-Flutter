class Data {
  final int id;
  final String? name;
  final String? email;
  final String? created_at;
  final String? updated_at;
  final String? account_type;
  final String? cnic;
  final String mobile_number;
  final String? biometeric_string;
  final int user_status;

  Data(
      this.id,
      this.name,
      this.email,
      this.created_at,
      this.updated_at,
      this.cnic,
      this.mobile_number,
      this.biometeric_string,
      this.account_type,
      this.user_status);

  Data.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        email = data['email'],
        created_at = data['created_at'],
        updated_at = data['updated_at'],
        account_type = data['account_type'],
        cnic = data['cnic'],
        mobile_number = data['mobile_number'],
        biometeric_string = data['biometeric_string'],
        user_status = data['user_status'];
}
