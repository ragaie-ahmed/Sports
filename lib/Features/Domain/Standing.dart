class Standing {
  Standing({
      this.countryName, 
      this.leagueId, 
      this.leagueName, 
      this.teamId, 
      this.teamName, 
      this.overallPromotion, 
      this.overallLeaguePosition, 
      this.overallLeaguePayed, 
      this.overallLeagueW, 
      this.overallLeagueD, 
      this.overallLeagueL, 
      this.overallLeagueGF, 
      this.overallLeagueGA, 
      this.overallLeaguePTS, 
      this.homeLeaguePosition, 
      this.homePromotion, 
      this.homeLeaguePayed, 
      this.homeLeagueW, 
      this.homeLeagueD, 
      this.homeLeagueL, 
      this.homeLeagueGF, 
      this.homeLeagueGA, 
      this.homeLeaguePTS, 
      this.awayLeaguePosition, 
      this.awayPromotion, 
      this.awayLeaguePayed, 
      this.awayLeagueW, 
      this.awayLeagueD, 
      this.awayLeagueL, 
      this.awayLeagueGF, 
      this.awayLeagueGA, 
      this.awayLeaguePTS, 
      this.leagueRound, 
      this.teamBadge, 
      this.fkStageKey, 
      this.stageName,});

  Standing.fromJson(dynamic json) {
    countryName = json['country_name'];
    leagueId = json['league_id'];
    leagueName = json['league_name'];
    teamId = json['team_id'];
    teamName = json['team_name'];
    overallPromotion = json['overall_promotion'];
    overallLeaguePosition = json['overall_league_position'];
    overallLeaguePayed = json['overall_league_payed'];
    overallLeagueW = json['overall_league_W'];
    overallLeagueD = json['overall_league_D'];
    overallLeagueL = json['overall_league_L'];
    overallLeagueGF = json['overall_league_GF'];
    overallLeagueGA = json['overall_league_GA'];
    overallLeaguePTS = json['overall_league_PTS'];
    homeLeaguePosition = json['home_league_position'];
    homePromotion = json['home_promotion'];
    homeLeaguePayed = json['home_league_payed'];
    homeLeagueW = json['home_league_W'];
    homeLeagueD = json['home_league_D'];
    homeLeagueL = json['home_league_L'];
    homeLeagueGF = json['home_league_GF'];
    homeLeagueGA = json['home_league_GA'];
    homeLeaguePTS = json['home_league_PTS'];
    awayLeaguePosition = json['away_league_position'];
    awayPromotion = json['away_promotion'];
    awayLeaguePayed = json['away_league_payed'];
    awayLeagueW = json['away_league_W'];
    awayLeagueD = json['away_league_D'];
    awayLeagueL = json['away_league_L'];
    awayLeagueGF = json['away_league_GF'];
    awayLeagueGA = json['away_league_GA'];
    awayLeaguePTS = json['away_league_PTS'];
    leagueRound = json['league_round'];
    teamBadge = json['team_badge'];
    fkStageKey = json['fk_stage_key'];
    stageName = json['stage_name'];
  }
  String? countryName;
  String? leagueId;
  String? leagueName;
  String? teamId;
  String? teamName;
  String? overallPromotion;
  String? overallLeaguePosition;
  String? overallLeaguePayed;
  String? overallLeagueW;
  String? overallLeagueD;
  String? overallLeagueL;
  String? overallLeagueGF;
  String? overallLeagueGA;
  String? overallLeaguePTS;
  String? homeLeaguePosition;
  String? homePromotion;
  String? homeLeaguePayed;
  String? homeLeagueW;
  String? homeLeagueD;
  String? homeLeagueL;
  String? homeLeagueGF;
  String? homeLeagueGA;
  String? homeLeaguePTS;
  String? awayLeaguePosition;
  String? awayPromotion;
  String? awayLeaguePayed;
  String? awayLeagueW;
  String? awayLeagueD;
  String? awayLeagueL;
  String? awayLeagueGF;
  String? awayLeagueGA;
  String? awayLeaguePTS;
  String? leagueRound;
  String? teamBadge;
  String? fkStageKey;
  String? stageName;
Standing copyWith({  String? countryName,
  String? leagueId,
  String? leagueName,
  String? teamId,
  String? teamName,
  String? overallPromotion,
  String? overallLeaguePosition,
  String? overallLeaguePayed,
  String? overallLeagueW,
  String? overallLeagueD,
  String? overallLeagueL,
  String? overallLeagueGF,
  String? overallLeagueGA,
  String? overallLeaguePTS,
  String? homeLeaguePosition,
  String? homePromotion,
  String? homeLeaguePayed,
  String? homeLeagueW,
  String? homeLeagueD,
  String? homeLeagueL,
  String? homeLeagueGF,
  String? homeLeagueGA,
  String? homeLeaguePTS,
  String? awayLeaguePosition,
  String? awayPromotion,
  String? awayLeaguePayed,
  String? awayLeagueW,
  String? awayLeagueD,
  String? awayLeagueL,
  String? awayLeagueGF,
  String? awayLeagueGA,
  String? awayLeaguePTS,
  String? leagueRound,
  String? teamBadge,
  String? fkStageKey,
  String? stageName,
}) => Standing(  countryName: countryName ?? this.countryName,
  leagueId: leagueId ?? this.leagueId,
  leagueName: leagueName ?? this.leagueName,
  teamId: teamId ?? this.teamId,
  teamName: teamName ?? this.teamName,
  overallPromotion: overallPromotion ?? this.overallPromotion,
  overallLeaguePosition: overallLeaguePosition ?? this.overallLeaguePosition,
  overallLeaguePayed: overallLeaguePayed ?? this.overallLeaguePayed,
  overallLeagueW: overallLeagueW ?? this.overallLeagueW,
  overallLeagueD: overallLeagueD ?? this.overallLeagueD,
  overallLeagueL: overallLeagueL ?? this.overallLeagueL,
  overallLeagueGF: overallLeagueGF ?? this.overallLeagueGF,
  overallLeagueGA: overallLeagueGA ?? this.overallLeagueGA,
  overallLeaguePTS: overallLeaguePTS ?? this.overallLeaguePTS,
  homeLeaguePosition: homeLeaguePosition ?? this.homeLeaguePosition,
  homePromotion: homePromotion ?? this.homePromotion,
  homeLeaguePayed: homeLeaguePayed ?? this.homeLeaguePayed,
  homeLeagueW: homeLeagueW ?? this.homeLeagueW,
  homeLeagueD: homeLeagueD ?? this.homeLeagueD,
  homeLeagueL: homeLeagueL ?? this.homeLeagueL,
  homeLeagueGF: homeLeagueGF ?? this.homeLeagueGF,
  homeLeagueGA: homeLeagueGA ?? this.homeLeagueGA,
  homeLeaguePTS: homeLeaguePTS ?? this.homeLeaguePTS,
  awayLeaguePosition: awayLeaguePosition ?? this.awayLeaguePosition,
  awayPromotion: awayPromotion ?? this.awayPromotion,
  awayLeaguePayed: awayLeaguePayed ?? this.awayLeaguePayed,
  awayLeagueW: awayLeagueW ?? this.awayLeagueW,
  awayLeagueD: awayLeagueD ?? this.awayLeagueD,
  awayLeagueL: awayLeagueL ?? this.awayLeagueL,
  awayLeagueGF: awayLeagueGF ?? this.awayLeagueGF,
  awayLeagueGA: awayLeagueGA ?? this.awayLeagueGA,
  awayLeaguePTS: awayLeaguePTS ?? this.awayLeaguePTS,
  leagueRound: leagueRound ?? this.leagueRound,
  teamBadge: teamBadge ?? this.teamBadge,
  fkStageKey: fkStageKey ?? this.fkStageKey,
  stageName: stageName ?? this.stageName,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country_name'] = countryName;
    map['league_id'] = leagueId;
    map['league_name'] = leagueName;
    map['team_id'] = teamId;
    map['team_name'] = teamName;
    map['overall_promotion'] = overallPromotion;
    map['overall_league_position'] = overallLeaguePosition;
    map['overall_league_payed'] = overallLeaguePayed;
    map['overall_league_W'] = overallLeagueW;
    map['overall_league_D'] = overallLeagueD;
    map['overall_league_L'] = overallLeagueL;
    map['overall_league_GF'] = overallLeagueGF;
    map['overall_league_GA'] = overallLeagueGA;
    map['overall_league_PTS'] = overallLeaguePTS;
    map['home_league_position'] = homeLeaguePosition;
    map['home_promotion'] = homePromotion;
    map['home_league_payed'] = homeLeaguePayed;
    map['home_league_W'] = homeLeagueW;
    map['home_league_D'] = homeLeagueD;
    map['home_league_L'] = homeLeagueL;
    map['home_league_GF'] = homeLeagueGF;
    map['home_league_GA'] = homeLeagueGA;
    map['home_league_PTS'] = homeLeaguePTS;
    map['away_league_position'] = awayLeaguePosition;
    map['away_promotion'] = awayPromotion;
    map['away_league_payed'] = awayLeaguePayed;
    map['away_league_W'] = awayLeagueW;
    map['away_league_D'] = awayLeagueD;
    map['away_league_L'] = awayLeagueL;
    map['away_league_GF'] = awayLeagueGF;
    map['away_league_GA'] = awayLeagueGA;
    map['away_league_PTS'] = awayLeaguePTS;
    map['league_round'] = leagueRound;
    map['team_badge'] = teamBadge;
    map['fk_stage_key'] = fkStageKey;
    map['stage_name'] = stageName;
    return map;
  }

}