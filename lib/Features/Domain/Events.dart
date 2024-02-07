class Events {
  Events({
      this.matchId, 
      this.countryId, 
      this.countryName, 
      this.leagueId, 
      this.leagueName, 
      this.matchDate, 
      this.matchStatus, 
      this.matchTime, 
      this.matchHometeamId, 
      this.matchHometeamName, 
      this.matchHometeamScore, 
      this.matchAwayteamName, 
      this.matchAwayteamId, 
      this.matchAwayteamScore, 
      this.matchHometeamHalftimeScore, 
      this.matchAwayteamHalftimeScore, 
      this.matchHometeamExtraScore, 
      this.matchAwayteamExtraScore, 
      this.matchHometeamPenaltyScore, 
      this.matchAwayteamPenaltyScore, 
      this.matchHometeamFtScore, 
      this.matchAwayteamFtScore, 
      this.matchHometeamSystem, 
      this.matchAwayteamSystem, 
      this.matchLive, 
      this.matchRound, 
      this.matchStadium, 
      this.matchReferee, 
      this.teamHomeBadge, 
      this.teamAwayBadge, 
      this.leagueLogo, 
      this.countryLogo, 
      this.leagueYear, 
      this.fkStageKey, 
      this.stageName, 
      this.goalscorer, 
      this.cards, 
      this.substitutions, 
      this.lineup, 
      this.statistics, 
      this.statistics1half,});

  Events.fromJson(dynamic json) {
    matchId = json['match_id'];
    countryId = json['country_id'];
    countryName = json['country_name'];
    leagueId = json['league_id'];
    leagueName = json['league_name'];
    matchDate = json['match_date'];
    matchStatus = json['match_status'];
    matchTime = json['match_time'];
    matchHometeamId = json['match_hometeam_id'];
    matchHometeamName = json['match_hometeam_name'];
    matchHometeamScore = json['match_hometeam_score'];
    matchAwayteamName = json['match_awayteam_name'];
    matchAwayteamId = json['match_awayteam_id'];
    matchAwayteamScore = json['match_awayteam_score'];
    matchHometeamHalftimeScore = json['match_hometeam_halftime_score'];
    matchAwayteamHalftimeScore = json['match_awayteam_halftime_score'];
    matchHometeamExtraScore = json['match_hometeam_extra_score'];
    matchAwayteamExtraScore = json['match_awayteam_extra_score'];
    matchHometeamPenaltyScore = json['match_hometeam_penalty_score'];
    matchAwayteamPenaltyScore = json['match_awayteam_penalty_score'];
    matchHometeamFtScore = json['match_hometeam_ft_score'];
    matchAwayteamFtScore = json['match_awayteam_ft_score'];
    matchHometeamSystem = json['match_hometeam_system'];
    matchAwayteamSystem = json['match_awayteam_system'];
    matchLive = json['match_live'];
    matchRound = json['match_round'];
    matchStadium = json['match_stadium'];
    matchReferee = json['match_referee'];
    teamHomeBadge = json['team_home_badge'];
    teamAwayBadge = json['team_away_badge'];
    leagueLogo = json['league_logo'];
    countryLogo = json['country_logo'];
    leagueYear = json['league_year'];
    fkStageKey = json['fk_stage_key'];
    stageName = json['stage_name'];
    if (json['goalscorer'] != null) {
      goalscorer = [];
      json['goalscorer'].forEach((v) {
        goalscorer?.add(Goalscorer.fromJson(v));
      });
    }
    if (json['cards'] != null) {
      cards = [];
      json['cards'].forEach((v) {
        cards?.add(Cards.fromJson(v));
      });
    }
    substitutions = json['substitutions'] != null ? Substitutions.fromJson(json['substitutions']) : null;
    lineup = json['lineup'] != null ? Lineup.fromJson(json['lineup']) : null;
    if (json['statistics'] != null) {
      statistics = [];
      json['statistics'].forEach((v) {
        statistics?.add(Statistics.fromJson(v));
      });
    }
    if (json['statistics_1half'] != null) {
      statistics1half = [];
      json['statistics_1half'].forEach((v) {
        statistics1half?.add(Statistics1half.fromJson(v));
      });
    }
  }
  String? matchId;
  String? countryId;
  String? countryName;
  String? leagueId;
  String? leagueName;
  String? matchDate;
  String? matchStatus;
  String? matchTime;
  String? matchHometeamId;
  String? matchHometeamName;
  String? matchHometeamScore;
  String? matchAwayteamName;
  String? matchAwayteamId;
  String? matchAwayteamScore;
  String? matchHometeamHalftimeScore;
  String? matchAwayteamHalftimeScore;
  String? matchHometeamExtraScore;
  String? matchAwayteamExtraScore;
  String? matchHometeamPenaltyScore;
  String? matchAwayteamPenaltyScore;
  String? matchHometeamFtScore;
  String? matchAwayteamFtScore;
  String? matchHometeamSystem;
  String? matchAwayteamSystem;
  String? matchLive;
  String? matchRound;
  String? matchStadium;
  String? matchReferee;
  String? teamHomeBadge;
  String? teamAwayBadge;
  String? leagueLogo;
  String? countryLogo;
  String? leagueYear;
  String? fkStageKey;
  String? stageName;
  List<Goalscorer>? goalscorer;
  List<Cards>? cards;
  Substitutions? substitutions;
  Lineup? lineup;
  List<Statistics>? statistics;
  List<Statistics1half>? statistics1half;
Events copyWith({  String? matchId,
  String? countryId,
  String? countryName,
  String? leagueId,
  String? leagueName,
  String? matchDate,
  String? matchStatus,
  String? matchTime,
  String? matchHometeamId,
  String? matchHometeamName,
  String? matchHometeamScore,
  String? matchAwayteamName,
  String? matchAwayteamId,
  String? matchAwayteamScore,
  String? matchHometeamHalftimeScore,
  String? matchAwayteamHalftimeScore,
  String? matchHometeamExtraScore,
  String? matchAwayteamExtraScore,
  String? matchHometeamPenaltyScore,
  String? matchAwayteamPenaltyScore,
  String? matchHometeamFtScore,
  String? matchAwayteamFtScore,
  String? matchHometeamSystem,
  String? matchAwayteamSystem,
  String? matchLive,
  String? matchRound,
  String? matchStadium,
  String? matchReferee,
  String? teamHomeBadge,
  String? teamAwayBadge,
  String? leagueLogo,
  String? countryLogo,
  String? leagueYear,
  String? fkStageKey,
  String? stageName,
  List<Goalscorer>? goalscorer,
  List<Cards>? cards,
  Substitutions? substitutions,
  Lineup? lineup,
  List<Statistics>? statistics,
  List<Statistics1half>? statistics1half,
}) => Events(  matchId: matchId ?? this.matchId,
  countryId: countryId ?? this.countryId,
  countryName: countryName ?? this.countryName,
  leagueId: leagueId ?? this.leagueId,
  leagueName: leagueName ?? this.leagueName,
  matchDate: matchDate ?? this.matchDate,
  matchStatus: matchStatus ?? this.matchStatus,
  matchTime: matchTime ?? this.matchTime,
  matchHometeamId: matchHometeamId ?? this.matchHometeamId,
  matchHometeamName: matchHometeamName ?? this.matchHometeamName,
  matchHometeamScore: matchHometeamScore ?? this.matchHometeamScore,
  matchAwayteamName: matchAwayteamName ?? this.matchAwayteamName,
  matchAwayteamId: matchAwayteamId ?? this.matchAwayteamId,
  matchAwayteamScore: matchAwayteamScore ?? this.matchAwayteamScore,
  matchHometeamHalftimeScore: matchHometeamHalftimeScore ?? this.matchHometeamHalftimeScore,
  matchAwayteamHalftimeScore: matchAwayteamHalftimeScore ?? this.matchAwayteamHalftimeScore,
  matchHometeamExtraScore: matchHometeamExtraScore ?? this.matchHometeamExtraScore,
  matchAwayteamExtraScore: matchAwayteamExtraScore ?? this.matchAwayteamExtraScore,
  matchHometeamPenaltyScore: matchHometeamPenaltyScore ?? this.matchHometeamPenaltyScore,
  matchAwayteamPenaltyScore: matchAwayteamPenaltyScore ?? this.matchAwayteamPenaltyScore,
  matchHometeamFtScore: matchHometeamFtScore ?? this.matchHometeamFtScore,
  matchAwayteamFtScore: matchAwayteamFtScore ?? this.matchAwayteamFtScore,
  matchHometeamSystem: matchHometeamSystem ?? this.matchHometeamSystem,
  matchAwayteamSystem: matchAwayteamSystem ?? this.matchAwayteamSystem,
  matchLive: matchLive ?? this.matchLive,
  matchRound: matchRound ?? this.matchRound,
  matchStadium: matchStadium ?? this.matchStadium,
  matchReferee: matchReferee ?? this.matchReferee,
  teamHomeBadge: teamHomeBadge ?? this.teamHomeBadge,
  teamAwayBadge: teamAwayBadge ?? this.teamAwayBadge,
  leagueLogo: leagueLogo ?? this.leagueLogo,
  countryLogo: countryLogo ?? this.countryLogo,
  leagueYear: leagueYear ?? this.leagueYear,
  fkStageKey: fkStageKey ?? this.fkStageKey,
  stageName: stageName ?? this.stageName,
  goalscorer: goalscorer ?? this.goalscorer,
  cards: cards ?? this.cards,
  substitutions: substitutions ?? this.substitutions,
  lineup: lineup ?? this.lineup,
  statistics: statistics ?? this.statistics,
  statistics1half: statistics1half ?? this.statistics1half,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['match_id'] = matchId;
    map['country_id'] = countryId;
    map['country_name'] = countryName;
    map['league_id'] = leagueId;
    map['league_name'] = leagueName;
    map['match_date'] = matchDate;
    map['match_status'] = matchStatus;
    map['match_time'] = matchTime;
    map['match_hometeam_id'] = matchHometeamId;
    map['match_hometeam_name'] = matchHometeamName;
    map['match_hometeam_score'] = matchHometeamScore;
    map['match_awayteam_name'] = matchAwayteamName;
    map['match_awayteam_id'] = matchAwayteamId;
    map['match_awayteam_score'] = matchAwayteamScore;
    map['match_hometeam_halftime_score'] = matchHometeamHalftimeScore;
    map['match_awayteam_halftime_score'] = matchAwayteamHalftimeScore;
    map['match_hometeam_extra_score'] = matchHometeamExtraScore;
    map['match_awayteam_extra_score'] = matchAwayteamExtraScore;
    map['match_hometeam_penalty_score'] = matchHometeamPenaltyScore;
    map['match_awayteam_penalty_score'] = matchAwayteamPenaltyScore;
    map['match_hometeam_ft_score'] = matchHometeamFtScore;
    map['match_awayteam_ft_score'] = matchAwayteamFtScore;
    map['match_hometeam_system'] = matchHometeamSystem;
    map['match_awayteam_system'] = matchAwayteamSystem;
    map['match_live'] = matchLive;
    map['match_round'] = matchRound;
    map['match_stadium'] = matchStadium;
    map['match_referee'] = matchReferee;
    map['team_home_badge'] = teamHomeBadge;
    map['team_away_badge'] = teamAwayBadge;
    map['league_logo'] = leagueLogo;
    map['country_logo'] = countryLogo;
    map['league_year'] = leagueYear;
    map['fk_stage_key'] = fkStageKey;
    map['stage_name'] = stageName;
    if (goalscorer != null) {
      map['goalscorer'] = goalscorer?.map((v) => v.toJson()).toList();
    }
    if (cards != null) {
      map['cards'] = cards?.map((v) => v.toJson()).toList();
    }

    if (lineup != null) {
      map['lineup'] = lineup?.toJson();
    }
    if (statistics != null) {
      map['statistics'] = statistics?.map((v) => v.toJson()).toList();
    }
    if (statistics1half != null) {
      map['statistics_1half'] = statistics1half?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Statistics1half {
  Statistics1half({
      this.type, 
      this.home, 
      this.away,});

  Statistics1half.fromJson(dynamic json) {
    type = json['type'];
    home = json['home'];
    away = json['away'];
  }
  String? type;
  String? home;
  String? away;
Statistics1half copyWith({  String? type,
  String? home,
  String? away,
}) => Statistics1half(  type: type ?? this.type,
  home: home ?? this.home,
  away: away ?? this.away,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['home'] = home;
    map['away'] = away;
    return map;
  }

}

class Statistics {
  Statistics({
      this.type, 
      this.home, 
      this.away,});

  Statistics.fromJson(dynamic json) {
    type = json['type'];
    home = json['home'];
    away = json['away'];
  }
  String? type;
  String? home;
  String? away;
Statistics copyWith({  String? type,
  String? home,
  String? away,
}) => Statistics(  type: type ?? this.type,
  home: home ?? this.home,
  away: away ?? this.away,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['home'] = home;
    map['away'] = away;
    return map;
  }

}

class Lineup {
  Lineup({
      this.home, 
      this.away,});

  Lineup.fromJson(dynamic json) {
    home = json['home'] != null ? Home.fromJson(json['home']) : null;
    away = json['away'] != null ? Away.fromJson(json['away']) : null;
  }
  Home? home;
  Away? away;
Lineup copyWith({  Home? home,
  Away? away,
}) => Lineup(  home: home ?? this.home,
  away: away ?? this.away,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};

    if (away != null) {
      map['away'] = away?.toJson();
    }
    return map;
  }

}

class Away {
  Away({
      this.startingLineups, 
      this.substitutes, 
      this.coach, 
      this.missingPlayers,});

  Away.fromJson(dynamic json) {
    if (json['starting_lineups'] != null) {
      startingLineups = [];
      json['starting_lineups'].forEach((v) {
        startingLineups?.add(StartingLineups.fromJson(v));
      });
    }
    if (json['substitutes'] != null) {
      substitutes = [];
      json['substitutes'].forEach((v) {
        substitutes?.add(Substitutes.fromJson(v));
      });
    }
    if (json['coach'] != null) {
      coach = [];
      json['coach'].forEach((v) {
        coach?.add(Coach.fromJson(v));
      });
    }

  }
  List<StartingLineups>? startingLineups;
  List<Substitutes>? substitutes;
  List<Coach>? coach;
  List<dynamic>? missingPlayers;
Away copyWith({  List<StartingLineups>? startingLineups,
  List<Substitutes>? substitutes,
  List<Coach>? coach,
  List<dynamic>? missingPlayers,
}) => Away(  startingLineups: startingLineups ?? this.startingLineups,
  substitutes: substitutes ?? this.substitutes,
  coach: coach ?? this.coach,
  missingPlayers: missingPlayers ?? this.missingPlayers,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (startingLineups != null) {
      map['starting_lineups'] = startingLineups?.map((v) => v.toJson()).toList();
    }
    if (substitutes != null) {
      map['substitutes'] = substitutes?.map((v) => v.toJson()).toList();
    }
    if (coach != null) {
      map['coach'] = coach?.map((v) => v.toJson()).toList();
    }
    if (missingPlayers != null) {
      map['missing_players'] = missingPlayers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Coach {
  Coach({
      this.lineupPlayer, 
      this.lineupNumber, 
      this.lineupPosition, 
      this.playerKey,});

  Coach.fromJson(dynamic json) {
    lineupPlayer = json['lineup_player'];
    lineupNumber = json['lineup_number'];
    lineupPosition = json['lineup_position'];
    playerKey = json['player_key'];
  }
  String? lineupPlayer;
  String? lineupNumber;
  String? lineupPosition;
  String? playerKey;
Coach copyWith({  String? lineupPlayer,
  String? lineupNumber,
  String? lineupPosition,
  String? playerKey,
}) => Coach(  lineupPlayer: lineupPlayer ?? this.lineupPlayer,
  lineupNumber: lineupNumber ?? this.lineupNumber,
  lineupPosition: lineupPosition ?? this.lineupPosition,
  playerKey: playerKey ?? this.playerKey,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lineup_player'] = lineupPlayer;
    map['lineup_number'] = lineupNumber;
    map['lineup_position'] = lineupPosition;
    map['player_key'] = playerKey;
    return map;
  }

}

class Substitutes {
  Substitutes({
      this.lineupPlayer, 
      this.lineupNumber, 
      this.lineupPosition, 
      this.playerKey,});

  Substitutes.fromJson(dynamic json) {
    lineupPlayer = json['lineup_player'];
    lineupNumber = json['lineup_number'];
    lineupPosition = json['lineup_position'];
    playerKey = json['player_key'];
  }
  String? lineupPlayer;
  String? lineupNumber;
  String? lineupPosition;
  String? playerKey;
Substitutes copyWith({  String? lineupPlayer,
  String? lineupNumber,
  String? lineupPosition,
  String? playerKey,
}) => Substitutes(  lineupPlayer: lineupPlayer ?? this.lineupPlayer,
  lineupNumber: lineupNumber ?? this.lineupNumber,
  lineupPosition: lineupPosition ?? this.lineupPosition,
  playerKey: playerKey ?? this.playerKey,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lineup_player'] = lineupPlayer;
    map['lineup_number'] = lineupNumber;
    map['lineup_position'] = lineupPosition;
    map['player_key'] = playerKey;
    return map;
  }

}

class StartingLineups {
  StartingLineups({
      this.lineupPlayer, 
      this.lineupNumber, 
      this.lineupPosition, 
      this.playerKey,});

  StartingLineups.fromJson(dynamic json) {
    lineupPlayer = json['lineup_player'];
    lineupNumber = json['lineup_number'];
    lineupPosition = json['lineup_position'];
    playerKey = json['player_key'];
  }
  String? lineupPlayer;
  String? lineupNumber;
  String? lineupPosition;
  String? playerKey;
StartingLineups copyWith({  String? lineupPlayer,
  String? lineupNumber,
  String? lineupPosition,
  String? playerKey,
}) => StartingLineups(  lineupPlayer: lineupPlayer ?? this.lineupPlayer,
  lineupNumber: lineupNumber ?? this.lineupNumber,
  lineupPosition: lineupPosition ?? this.lineupPosition,
  playerKey: playerKey ?? this.playerKey,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lineup_player'] = lineupPlayer;
    map['lineup_number'] = lineupNumber;
    map['lineup_position'] = lineupPosition;
    map['player_key'] = playerKey;
    return map;
  }

}

class Home {
  List<StartingLineups>? startingLineups;
  List<Substitutes>? substitutes;
  List<Coach>? coach;
  List<dynamic>? missingPlayers;
  Home({
      this.startingLineups,
      this.substitutes, 
      this.coach, 
   });

  Home.fromJson(dynamic json) {
    if (json['starting_lineups'] != null) {
      startingLineups = [];
      json['starting_lineups'].forEach((v) {
        startingLineups?.add(StartingLineups.fromJson(v));
      });
    }
    if (json['substitutes'] != null) {
      substitutes = [];
      json['substitutes'].forEach((v) {
        substitutes?.add(Substitutes.fromJson(v));
      });
    }
    if (json['coach'] != null) {
      coach = [];
      json['coach'].forEach((v) {
        coach?.add(Coach.fromJson(v));
      });
    }

    }
  }





class Coachs {
  Coachs({
      this.lineupPlayer, 
      this.lineupNumber, 
      this.lineupPosition, 
      this.playerKey,});

  Coachs.fromJson(dynamic json) {
    lineupPlayer = json['lineup_player'];
    lineupNumber = json['lineup_number'];
    lineupPosition = json['lineup_position'];
    playerKey = json['player_key'];
  }
  String? lineupPlayer;
  String? lineupNumber;
  String? lineupPosition;
  String? playerKey;
Coach copyWith({  String? lineupPlayer,
  String? lineupNumber,
  String? lineupPosition,
  String? playerKey,
}) => Coach(  lineupPlayer: lineupPlayer ?? this.lineupPlayer,
  lineupNumber: lineupNumber ?? this.lineupNumber,
  lineupPosition: lineupPosition ?? this.lineupPosition,
  playerKey: playerKey ?? this.playerKey,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lineup_player'] = lineupPlayer;
    map['lineup_number'] = lineupNumber;
    map['lineup_position'] = lineupPosition;
    map['player_key'] = playerKey;
    return map;
  }

}

class Substitutess {
  Substitutess({
      this.lineupPlayer, 
      this.lineupNumber, 
      this.lineupPosition, 
      this.playerKey,});

  Substitutess.fromJson(dynamic json) {
    lineupPlayer = json['lineup_player'];
    lineupNumber = json['lineup_number'];
    lineupPosition = json['lineup_position'];
    playerKey = json['player_key'];
  }
  String? lineupPlayer;
  String? lineupNumber;
  String? lineupPosition;
  String? playerKey;
Substitutes copyWith({  String? lineupPlayer,
  String? lineupNumber,
  String? lineupPosition,
  String? playerKey,
}) => Substitutes(  lineupPlayer: lineupPlayer ?? this.lineupPlayer,
  lineupNumber: lineupNumber ?? this.lineupNumber,
  lineupPosition: lineupPosition ?? this.lineupPosition,
  playerKey: playerKey ?? this.playerKey,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lineup_player'] = lineupPlayer;
    map['lineup_number'] = lineupNumber;
    map['lineup_position'] = lineupPosition;
    map['player_key'] = playerKey;
    return map;
  }

}

class StartingLineupss {
  StartingLineupss({
      this.lineupPlayer, 
      this.lineupNumber, 
      this.lineupPosition, 
      this.playerKey,});

  StartingLineupss.fromJson(dynamic json) {
    lineupPlayer = json['lineup_player'];
    lineupNumber = json['lineup_number'];
    lineupPosition = json['lineup_position'];
    playerKey = json['player_key'];
  }
  String? lineupPlayer;
  String? lineupNumber;
  String? lineupPosition;
  String? playerKey;
StartingLineups copyWith({  String? lineupPlayer,
  String? lineupNumber,
  String? lineupPosition,
  String? playerKey,
}) => StartingLineups(  lineupPlayer: lineupPlayer ?? this.lineupPlayer,
  lineupNumber: lineupNumber ?? this.lineupNumber,
  lineupPosition: lineupPosition ?? this.lineupPosition,
  playerKey: playerKey ?? this.playerKey,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lineup_player'] = lineupPlayer;
    map['lineup_number'] = lineupNumber;
    map['lineup_position'] = lineupPosition;
    map['player_key'] = playerKey;
    return map;
  }

}

class Substitutions {
  Substitutions({
      this.home, 
      this.away,});

  Substitutions.fromJson(dynamic json) {
    if (json['home'] != null) {
      home = [];
      json['home'].forEach((v) {
        home?.add(Homes.fromJson(v));
      });
    }
    if (json['away'] != null) {
      away = [];
      json['away'].forEach((v) {
        away?.add(Aways.fromJson(v));
      });
    }
  }
  List<Homes>? home;
  List<Aways>? away;
Substitutions copyWith({  List<Homes>? home,
  List<Aways>? away,
}) => Substitutions(  home: home ?? this.home,
  away: away ?? this.away,
);

}

class Aways {
  Aways({
      this.time, 
      this.substitution, 
      this.substitutionPlayerId,});

  Aways.fromJson(dynamic json) {
    time = json['time'];
    substitution = json['substitution'];
    substitutionPlayerId = json['substitution_player_id'];
  }
  String? time;
  String? substitution;
  String? substitutionPlayerId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['substitution'] = substitution;
    map['substitution_player_id'] = substitutionPlayerId;
    return map;
  }

}

class Homes {
  Homes({
      this.time, 
      this.substitution, 
      this.substitutionPlayerId,});

  Homes.fromJson(dynamic json) {
    time = json['time'];
    substitution = json['substitution'];
    substitutionPlayerId = json['substitution_player_id'];
  }
  String? time;
  String? substitution;
  String? substitutionPlayerId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['substitution'] = substitution;
    map['substitution_player_id'] = substitutionPlayerId;
    return map;
  }

}

class Cards {
  Cards({
      this.time, 
      this.homeFault, 
      this.card, 
      this.awayFault, 
      this.info, 
      this.homePlayerId, 
      this.awayPlayerId, 
      this.scoreInfoTime,});

  Cards.fromJson(dynamic json) {
    time = json['time'];
    homeFault = json['home_fault'];
    card = json['card'];
    awayFault = json['away_fault'];
    info = json['info'];
    homePlayerId = json['home_player_id'];
    awayPlayerId = json['away_player_id'];
    scoreInfoTime = json['score_info_time'];
  }
  String? time;
  String? homeFault;
  String? card;
  String? awayFault;
  String? info;
  String? homePlayerId;
  String? awayPlayerId;
  String? scoreInfoTime;
Cards copyWith({  String? time,
  String? homeFault,
  String? card,
  String? awayFault,
  String? info,
  String? homePlayerId,
  String? awayPlayerId,
  String? scoreInfoTime,
}) => Cards(  time: time ?? this.time,
  homeFault: homeFault ?? this.homeFault,
  card: card ?? this.card,
  awayFault: awayFault ?? this.awayFault,
  info: info ?? this.info,
  homePlayerId: homePlayerId ?? this.homePlayerId,
  awayPlayerId: awayPlayerId ?? this.awayPlayerId,
  scoreInfoTime: scoreInfoTime ?? this.scoreInfoTime,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['home_fault'] = homeFault;
    map['card'] = card;
    map['away_fault'] = awayFault;
    map['info'] = info;
    map['home_player_id'] = homePlayerId;
    map['away_player_id'] = awayPlayerId;
    map['score_info_time'] = scoreInfoTime;
    return map;
  }

}

class Goalscorer {
  Goalscorer({
      this.time, 
      this.homeScorer, 
      this.homeScorerId, 
      this.homeAssist, 
      this.homeAssistId, 
      this.score, 
      this.awayScorer, 
      this.awayScorerId, 
      this.awayAssist, 
      this.awayAssistId, 
      this.info, 
      this.scoreInfoTime,});

  Goalscorer.fromJson(dynamic json) {
    time = json['time'];
    homeScorer = json['home_scorer'];
    homeScorerId = json['home_scorer_id'];
    homeAssist = json['home_assist'];
    homeAssistId = json['home_assist_id'];
    score = json['score'];
    awayScorer = json['away_scorer'];
    awayScorerId = json['away_scorer_id'];
    awayAssist = json['away_assist'];
    awayAssistId = json['away_assist_id'];
    info = json['info'];
    scoreInfoTime = json['score_info_time'];
  }
  String? time;
  String? homeScorer;
  String? homeScorerId;
  String? homeAssist;
  String? homeAssistId;
  String? score;
  String? awayScorer;
  String? awayScorerId;
  String? awayAssist;
  String? awayAssistId;
  String? info;
  String? scoreInfoTime;
Goalscorer copyWith({  String? time,
  String? homeScorer,
  String? homeScorerId,
  String? homeAssist,
  String? homeAssistId,
  String? score,
  String? awayScorer,
  String? awayScorerId,
  String? awayAssist,
  String? awayAssistId,
  String? info,
  String? scoreInfoTime,
}) => Goalscorer(  time: time ?? this.time,
  homeScorer: homeScorer ?? this.homeScorer,
  homeScorerId: homeScorerId ?? this.homeScorerId,
  homeAssist: homeAssist ?? this.homeAssist,
  homeAssistId: homeAssistId ?? this.homeAssistId,
  score: score ?? this.score,
  awayScorer: awayScorer ?? this.awayScorer,
  awayScorerId: awayScorerId ?? this.awayScorerId,
  awayAssist: awayAssist ?? this.awayAssist,
  awayAssistId: awayAssistId ?? this.awayAssistId,
  info: info ?? this.info,
  scoreInfoTime: scoreInfoTime ?? this.scoreInfoTime,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['home_scorer'] = homeScorer;
    map['home_scorer_id'] = homeScorerId;
    map['home_assist'] = homeAssist;
    map['home_assist_id'] = homeAssistId;
    map['score'] = score;
    map['away_scorer'] = awayScorer;
    map['away_scorer_id'] = awayScorerId;
    map['away_assist'] = awayAssist;
    map['away_assist_id'] = awayAssistId;
    map['info'] = info;
    map['score_info_time'] = scoreInfoTime;
    return map;
  }

}