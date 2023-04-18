// ignore_for_file: file_names

class userLogin {
  String ? type;
  Status ? status;
  String ? role;
  String ? sicilNo;
  String ? token;
  String ? tokenValidDate;

  userLogin(
      { this.type,
         this.status,
         this.role,
         this.sicilNo,
         this.token,
         this.tokenValidDate});

    userLogin.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    status =
    (json['status'] != null ? new Status.fromJson(json['status']) : null)!;
    role = json['role'];
    sicilNo = json['sicilNo'];
    token = json['token'];
    tokenValidDate = json['tokenValidDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.status != null) {
      data['status'] = this.status!.toJson();
    }
    data['role'] = this.role;
    data['sicilNo'] = this.sicilNo;
    data['token'] = this.token;
    data['tokenValidDate'] = this.tokenValidDate;
    return data;
  }
}

class Status {
  String ? hATAACIKLAMA;
  int ? cODE;

  Status({  this.hATAACIKLAMA,  this.cODE});

  Status.fromJson(Map<String, dynamic> json) {
    hATAACIKLAMA = json['HATA_ACIKLAMA'];
    cODE = json['CODE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['HATA_ACIKLAMA'] = this.hATAACIKLAMA;
    data['CODE'] = this.cODE;
    return data;
  }
}