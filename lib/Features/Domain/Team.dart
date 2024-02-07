class Team {
  Team({
      this.teamKey, 
      this.teamName, 
      this.teamCountry, 
      this.teamFounded, 
      this.teamBadge, 
      this.venue, 
      this.players, 
      this.coaches,});

  Team.fromJson(dynamic json) {
    teamKey = json['team_key'];
    teamName = json['team_name'];
    teamCountry = json['team_country'];
    teamFounded = json['team_founded'];
    teamBadge = json['team_badge'];
    venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
    if (json['players'] != null) {
      players = [];
      json['players'].forEach((v) {
        players?.add(Players.fromJson(v));
      });
    }
    if (json['coaches'] != null) {
      coaches = [];
      json['coaches'].forEach((v) {
        coaches?.add(Coaches.fromJson(v));
      });
    }
  }
  String? teamKey;
  String? teamName;
  String? teamCountry;
  String? teamFounded;
  String? teamBadge;
  Venue? venue;
  List<Players>? players;
  List<Coaches>? coaches;
Team copyWith({  String? teamKey,
  String? teamName,
  String? teamCountry,
  String? teamFounded,
  String? teamBadge,
  Venue? venue,
  List<Players>? players,
  List<Coaches>? coaches,
}) => Team(  teamKey: teamKey ?? this.teamKey,
  teamName: teamName ?? this.teamName,
  teamCountry: teamCountry ?? this.teamCountry,
  teamFounded: teamFounded ?? this.teamFounded,
  teamBadge: teamBadge ?? this.teamBadge,
  venue: venue ?? this.venue,
  players: players ?? this.players,
  coaches: coaches ?? this.coaches,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['team_key'] = teamKey;
    map['team_name'] = teamName;
    map['team_country'] = teamCountry;
    map['team_founded'] = teamFounded;
    map['team_badge'] = teamBadge;
    if (venue != null) {
      map['venue'] = venue?.toJson();
    }
    if (players != null) {
      map['players'] = players?.map((v) => v.toJson()).toList();
    }
    if (coaches != null) {
      map['coaches'] = coaches?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Coaches {
  Coaches({
      this.coachName, 
      this.coachCountry, 
      this.coachAge,});

  Coaches.fromJson(dynamic json) {
    coachName = json['coach_name'];
    coachCountry = json['coach_country'];
    coachAge = json['coach_age'];
  }
  String? coachName;
  String? coachCountry;
  String? coachAge;
Coaches copyWith({  String? coachName,
  String? coachCountry,
  String? coachAge,
}) => Coaches(  coachName: coachName ?? this.coachName,
  coachCountry: coachCountry ?? this.coachCountry,
  coachAge: coachAge ?? this.coachAge,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['coach_name'] = coachName;
    map['coach_country'] = coachCountry;
    map['coach_age'] = coachAge;
    return map;
  }

}

class Players {
  Players({
      this.playerKey, 
      this.playerId, 
      this.playerImage, 
      this.playerName, 
      this.playerNumber, 
      this.playerCountry, 
      this.playerType, 
      this.playerAge, 
      this.playerMatchPlayed, 
      this.playerGoals, 
      this.playerYellowCards, 
      this.playerRedCards, 
      this.playerInjured, 
      this.playerSubstituteOut, 
      this.playerSubstitutesOnBench, 
      this.playerAssists, 
      this.playerBirthdate, 
      this.playerIsCaptain, 
      this.playerShotsTotal, 
      this.playerGoalsConceded, 
      this.playerFoulsCommitted, 
      this.playerTackles, 
      this.playerBlocks, 
      this.playerCrossesTotal, 
      this.playerInterceptions, 
      this.playerClearances, 
      this.playerDispossesed, 
      this.playerSaves, 
      this.playerInsideBoxSaves, 
      this.playerDuelsTotal, 
      this.playerDuelsWon, 
      this.playerDribbleAttempts, 
      this.playerDribbleSucc, 
      this.playerPenComm, 
      this.playerPenWon, 
      this.playerPenScored, 
      this.playerPenMissed, 
      this.playerPasses, 
      this.playerPassesAccuracy, 
      this.playerKeyPasses, 
      this.playerWoordworks, 
      this.playerRating,});

  Players.fromJson(dynamic json) {
    playerKey = json['player_key'];
    playerId = json['player_id'];
    playerImage = json['player_image'];
    playerName = json['player_name'];
    playerNumber = json['player_number'];
    playerCountry = json['player_country'];
    playerType = json['player_type'];
    playerAge = json['player_age'];
    playerMatchPlayed = json['player_match_played'];
    playerGoals = json['player_goals'];
    playerYellowCards = json['player_yellow_cards'];
    playerRedCards = json['player_red_cards'];
    playerInjured = json['player_injured'];
    playerSubstituteOut = json['player_substitute_out'];
    playerSubstitutesOnBench = json['player_substitutes_on_bench'];
    playerAssists = json['player_assists'];
    playerBirthdate = json['player_birthdate'];
    playerIsCaptain = json['player_is_captain'];
    playerShotsTotal = json['player_shots_total'];
    playerGoalsConceded = json['player_goals_conceded'];
    playerFoulsCommitted = json['player_fouls_committed'];
    playerTackles = json['player_tackles'];
    playerBlocks = json['player_blocks'];
    playerCrossesTotal = json['player_crosses_total'];
    playerInterceptions = json['player_interceptions'];
    playerClearances = json['player_clearances'];
    playerDispossesed = json['player_dispossesed'];
    playerSaves = json['player_saves'];
    playerInsideBoxSaves = json['player_inside_box_saves'];
    playerDuelsTotal = json['player_duels_total'];
    playerDuelsWon = json['player_duels_won'];
    playerDribbleAttempts = json['player_dribble_attempts'];
    playerDribbleSucc = json['player_dribble_succ'];
    playerPenComm = json['player_pen_comm'];
    playerPenWon = json['player_pen_won'];
    playerPenScored = json['player_pen_scored'];
    playerPenMissed = json['player_pen_missed'];
    playerPasses = json['player_passes'];
    playerPassesAccuracy = json['player_passes_accuracy'];
    playerKeyPasses = json['player_key_passes'];
    playerWoordworks = json['player_woordworks'];
    playerRating = json['player_rating'];
  }
  num? playerKey;
  String? playerId;
  String? playerImage;
  String? playerName;
  String? playerNumber;
  String? playerCountry;
  String? playerType;
  String? playerAge;
  String? playerMatchPlayed;
  String? playerGoals;
  String? playerYellowCards;
  String? playerRedCards;
  String? playerInjured;
  String? playerSubstituteOut;
  String? playerSubstitutesOnBench;
  String? playerAssists;
  String? playerBirthdate;
  String? playerIsCaptain;
  String? playerShotsTotal;
  String? playerGoalsConceded;
  String? playerFoulsCommitted;
  String? playerTackles;
  String? playerBlocks;
  String? playerCrossesTotal;
  String? playerInterceptions;
  String? playerClearances;
  String? playerDispossesed;
  String? playerSaves;
  String? playerInsideBoxSaves;
  String? playerDuelsTotal;
  String? playerDuelsWon;
  String? playerDribbleAttempts;
  String? playerDribbleSucc;
  String? playerPenComm;
  String? playerPenWon;
  String? playerPenScored;
  String? playerPenMissed;
  String? playerPasses;
  String? playerPassesAccuracy;
  String? playerKeyPasses;
  String? playerWoordworks;
  String? playerRating;
Players copyWith({  num? playerKey,
  String? playerId,
  String? playerImage,
  String? playerName,
  String? playerNumber,
  String? playerCountry,
  String? playerType,
  String? playerAge,
  String? playerMatchPlayed,
  String? playerGoals,
  String? playerYellowCards,
  String? playerRedCards,
  String? playerInjured,
  String? playerSubstituteOut,
  String? playerSubstitutesOnBench,
  String? playerAssists,
  String? playerBirthdate,
  String? playerIsCaptain,
  String? playerShotsTotal,
  String? playerGoalsConceded,
  String? playerFoulsCommitted,
  String? playerTackles,
  String? playerBlocks,
  String? playerCrossesTotal,
  String? playerInterceptions,
  String? playerClearances,
  String? playerDispossesed,
  String? playerSaves,
  String? playerInsideBoxSaves,
  String? playerDuelsTotal,
  String? playerDuelsWon,
  String? playerDribbleAttempts,
  String? playerDribbleSucc,
  String? playerPenComm,
  String? playerPenWon,
  String? playerPenScored,
  String? playerPenMissed,
  String? playerPasses,
  String? playerPassesAccuracy,
  String? playerKeyPasses,
  String? playerWoordworks,
  String? playerRating,
}) => Players(  playerKey: playerKey ?? this.playerKey,
  playerId: playerId ?? this.playerId,
  playerImage: playerImage ?? this.playerImage,
  playerName: playerName ?? this.playerName,
  playerNumber: playerNumber ?? this.playerNumber,
  playerCountry: playerCountry ?? this.playerCountry,
  playerType: playerType ?? this.playerType,
  playerAge: playerAge ?? this.playerAge,
  playerMatchPlayed: playerMatchPlayed ?? this.playerMatchPlayed,
  playerGoals: playerGoals ?? this.playerGoals,
  playerYellowCards: playerYellowCards ?? this.playerYellowCards,
  playerRedCards: playerRedCards ?? this.playerRedCards,
  playerInjured: playerInjured ?? this.playerInjured,
  playerSubstituteOut: playerSubstituteOut ?? this.playerSubstituteOut,
  playerSubstitutesOnBench: playerSubstitutesOnBench ?? this.playerSubstitutesOnBench,
  playerAssists: playerAssists ?? this.playerAssists,
  playerBirthdate: playerBirthdate ?? this.playerBirthdate,
  playerIsCaptain: playerIsCaptain ?? this.playerIsCaptain,
  playerShotsTotal: playerShotsTotal ?? this.playerShotsTotal,
  playerGoalsConceded: playerGoalsConceded ?? this.playerGoalsConceded,
  playerFoulsCommitted: playerFoulsCommitted ?? this.playerFoulsCommitted,
  playerTackles: playerTackles ?? this.playerTackles,
  playerBlocks: playerBlocks ?? this.playerBlocks,
  playerCrossesTotal: playerCrossesTotal ?? this.playerCrossesTotal,
  playerInterceptions: playerInterceptions ?? this.playerInterceptions,
  playerClearances: playerClearances ?? this.playerClearances,
  playerDispossesed: playerDispossesed ?? this.playerDispossesed,
  playerSaves: playerSaves ?? this.playerSaves,
  playerInsideBoxSaves: playerInsideBoxSaves ?? this.playerInsideBoxSaves,
  playerDuelsTotal: playerDuelsTotal ?? this.playerDuelsTotal,
  playerDuelsWon: playerDuelsWon ?? this.playerDuelsWon,
  playerDribbleAttempts: playerDribbleAttempts ?? this.playerDribbleAttempts,
  playerDribbleSucc: playerDribbleSucc ?? this.playerDribbleSucc,
  playerPenComm: playerPenComm ?? this.playerPenComm,
  playerPenWon: playerPenWon ?? this.playerPenWon,
  playerPenScored: playerPenScored ?? this.playerPenScored,
  playerPenMissed: playerPenMissed ?? this.playerPenMissed,
  playerPasses: playerPasses ?? this.playerPasses,
  playerPassesAccuracy: playerPassesAccuracy ?? this.playerPassesAccuracy,
  playerKeyPasses: playerKeyPasses ?? this.playerKeyPasses,
  playerWoordworks: playerWoordworks ?? this.playerWoordworks,
  playerRating: playerRating ?? this.playerRating,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['player_key'] = playerKey;
    map['player_id'] = playerId;
    map['player_image'] = playerImage;
    map['player_name'] = playerName;
    map['player_number'] = playerNumber;
    map['player_country'] = playerCountry;
    map['player_type'] = playerType;
    map['player_age'] = playerAge;
    map['player_match_played'] = playerMatchPlayed;
    map['player_goals'] = playerGoals;
    map['player_yellow_cards'] = playerYellowCards;
    map['player_red_cards'] = playerRedCards;
    map['player_injured'] = playerInjured;
    map['player_substitute_out'] = playerSubstituteOut;
    map['player_substitutes_on_bench'] = playerSubstitutesOnBench;
    map['player_assists'] = playerAssists;
    map['player_birthdate'] = playerBirthdate;
    map['player_is_captain'] = playerIsCaptain;
    map['player_shots_total'] = playerShotsTotal;
    map['player_goals_conceded'] = playerGoalsConceded;
    map['player_fouls_committed'] = playerFoulsCommitted;
    map['player_tackles'] = playerTackles;
    map['player_blocks'] = playerBlocks;
    map['player_crosses_total'] = playerCrossesTotal;
    map['player_interceptions'] = playerInterceptions;
    map['player_clearances'] = playerClearances;
    map['player_dispossesed'] = playerDispossesed;
    map['player_saves'] = playerSaves;
    map['player_inside_box_saves'] = playerInsideBoxSaves;
    map['player_duels_total'] = playerDuelsTotal;
    map['player_duels_won'] = playerDuelsWon;
    map['player_dribble_attempts'] = playerDribbleAttempts;
    map['player_dribble_succ'] = playerDribbleSucc;
    map['player_pen_comm'] = playerPenComm;
    map['player_pen_won'] = playerPenWon;
    map['player_pen_scored'] = playerPenScored;
    map['player_pen_missed'] = playerPenMissed;
    map['player_passes'] = playerPasses;
    map['player_passes_accuracy'] = playerPassesAccuracy;
    map['player_key_passes'] = playerKeyPasses;
    map['player_woordworks'] = playerWoordworks;
    map['player_rating'] = playerRating;
    return map;
  }

}

class Venue {
  Venue({
      this.venueName, 
      this.venueAddress, 
      this.venueCity, 
      this.venueCapacity, 
      this.venueSurface,});

  Venue.fromJson(dynamic json) {
    venueName = json['venue_name'];
    venueAddress = json['venue_address'];
    venueCity = json['venue_city'];
    venueCapacity = json['venue_capacity'];
    venueSurface = json['venue_surface'];
  }
  String? venueName;
  String? venueAddress;
  String? venueCity;
  String? venueCapacity;
  String? venueSurface;
Venue copyWith({  String? venueName,
  String? venueAddress,
  String? venueCity,
  String? venueCapacity,
  String? venueSurface,
}) => Venue(  venueName: venueName ?? this.venueName,
  venueAddress: venueAddress ?? this.venueAddress,
  venueCity: venueCity ?? this.venueCity,
  venueCapacity: venueCapacity ?? this.venueCapacity,
  venueSurface: venueSurface ?? this.venueSurface,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['venue_name'] = venueName;
    map['venue_address'] = venueAddress;
    map['venue_city'] = venueCity;
    map['venue_capacity'] = venueCapacity;
    map['venue_surface'] = venueSurface;
    return map;
  }

}