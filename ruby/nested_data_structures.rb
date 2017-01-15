sports = {
    soccer: {
        sport_name: 'soccer',
        player_info: {
          starting_positions: 11,
          bench_positions: 7
        },
        favorite_teams: ["Chicago Fire", "Barcelona"]
    },
    baseball: {
        sport_name: 'baseball',
        player_info: {
          starting_positions: 9,
          bench_positions: 16
        },
        favorite_teams: ["Chicago Cubs", "Chicago WhiteSox"]
    },
    hockey: {
        sport_name: 'hockey',
        player_info: {
          starting_positions: 6,
          bench_positions: 15
        },
        favorite_teams: ["Chicago Blackhawks"]
    }
}



p sports [:baseball][:player_info][:starting_positions]


p sports [:hockey][:player_info]

p sports [:soccer][:favorite_teams][1]