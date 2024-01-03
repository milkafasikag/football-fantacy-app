class GetPublicLeaguesResponse {
  bool success;
  List<dynamic> publicLeagues;

  GetPublicLeaguesResponse(
      {required this.success, required this.publicLeagues});

  factory GetPublicLeaguesResponse.fromPublicLeaguesJson(
      Map<String, dynamic> json) {
    return GetPublicLeaguesResponse(
      success: json['success'],
      publicLeagues: json['leagues'],
    );
  }
}

class GetPlayersResponse {
  bool success;
  List<dynamic> players;
  String? detail;

  GetPlayersResponse(
      {required this.success, required this.players, this.detail});

  factory GetPlayersResponse.fromFilterPlayersJson(Map<String, dynamic> json) {
    return GetPlayersResponse(
        success: json["success"], players: json["players"]);
  }
}

class JoinLeagueResponse {
  bool success;
  String? uri;
  String? detail;

  JoinLeagueResponse({required this.success, this.uri, this.detail});

  factory JoinLeagueResponse.fromJoinLeaguesJson(Map<String, dynamic> json) {
    return JoinLeagueResponse(
      success: json['success'],
      uri: json['uri'],
      
    );
  }
  factory JoinLeagueResponse.fromError(Map<String, dynamic> json) {
    return JoinLeagueResponse(
        success: json['success'],  detail: json['detail']);
  }
}
