player(rahulDravid,1996,2012).
player(sachinTendulkar,1989,2013).
player(vvsLaxman,1996,2012).
player(sauravGanguly,1996,2008).
player(virenderSehwag,2001,2013).
whoplayed(Playername,Year):-player(Playername,Startyear,Endyear),Year>=Startyear,Year=<Endyear.
played(Playername,Year):-player(Playername,Startyear,Endyear),Year=:=Startyear.

