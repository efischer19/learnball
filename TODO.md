Next steps:

    -proper division of open source/private data in project
        -sql user/pwd, other instance-specific config
        -actual data in database - is this included in docker image? do NOT push that
        -gitignore
    -investigate easiest route to simple data webapp
        -DRF? is that still a thing?
        -remember - this first step is a backend web service, not a frontend one.
            -python/django is just a layer on top op the SQL data store, allowing HTTP access
    -get webapp set up to the point of accepting data input for some models
    -start scraping said data
        -this will be an entirely separate thing, which will talk to the initial backend webapp over HTTP
            -I really need to start naming things...

First data to add/investigate will be draft results for the past 10 years.
    Models:
        -fantasy owners
            -link teams between years; the entities I'm trying to predict
        -fantasy teams
            -an instance of an owner's attempts to win the league in a given year
        -fantasy seasons
            -one year of fantasy football, 10 owners try to be the one champion
        -IRL players
            -name
            -position (on-field)
            -IRL team
        -draft picks
            -round/overall number? idk

    Initial machine learning problem will be: given the above data, can I predict that certain fantasy owners will favor certain players/teams/positions at certain points in the draft?
