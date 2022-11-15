class datalist{
  final int etag_number;
  final String? vehicletype;
  final String? vehicle_registration;
  final String? wallet_balance;



  datalist(this.etag_number, this.vehicletype, this.vehicle_registration, this.wallet_balance  );

  datalist.fromJson(Map<String, dynamic> data)
      : etag_number = data['etag_number'],
        vehicletype = data['vehicletype'],
        vehicle_registration = data['vehicle_registration'],
        wallet_balance = data['wallet_balance'] ;
}