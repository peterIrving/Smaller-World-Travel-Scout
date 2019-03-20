# Smaller-World-Travel-Scout

## Inspiration
What if travel became the best way to discover new artists? 
What if your music taste could inspire your next trip?

Travelling shouldn't be just about sightseeing. It's a perfect opportunity to discover local artists, trending music and the low-tourist areas locals love for their buzz and arts scene.

We're doing just that using a semantic AI engine to bridge your music taste into artist and trip recommendations.

## What it does
Log in to our app with your Spotify account, then tell us where you are going next.

We immediately suggest artists to listen to so you get in the mood for your trip even before you get there. Then we give a number of off-the-beaten path hotel, bar and venue suggestions for you to explore when you get there.

Going to London and you love Reggae? We'll say try some Natiruts to get you in the mood. While there you can't miss Brixton and Hootananny as a concert venue, and why not stop by the David Bowie memorial?

See the places on a map, and start planning your journey while listening to the new soundtrack of your trip.

You can learn a little more here: https://j24d.com/sxsw

## How we built it
We are using your Spotify login to get your music preferences, specifically the top artists, songs and genres you listen to.

We can get your travel destination either through manual input, iOS location services or by simply forwarding your flight reservation to our e-mail address (trips@j24d.com).

For that particular music market, we use BuzzAngle music to get the top trending local artists, as an additional data source that takes into account local market preferences.

We then feed these as multiple data points into Qloo, which works as our AI engine to find correlations between this data set.

The output are three sets of recommendations in terms of artists, hotels and restaurants, all relevant to the user and the destination they are going to.

This is displayed as a map and a separate list of artist recommendations which can be saved for later.


## Challenges we ran into
- Getting enough datapoints to feed into Qloo and get relevant data.
- Getting the local lists of popular artists and songs from BuzzAngle. We did find a temporary workaround, but going forward this would need to get better executed.
- Getting the Spotify integration to seamlessly work


## Accomplishments that we're proud of
- Actually being able to return interesting results from this approach
- Having an interface we find interesting and would actually use. 
- The concept of creating a new artist music playlist, which you can play/discover before and during your trip, 
- Being able to return interesting places/venues recommendations, based on music tastes as inputs


## What we learned
- This is actually possible!
- The Spotify ios SDK could do with an update


## What's next for TravelScout / SmallerWorld
- We're going to improve the dataset input by allowing you to connect your google maps account too, so we know the kind of places you like to go to, and use that to provide better recommendations.
- We also talked to BuzzAngle to get popular artists/songs by market and genre, which would greatly help to refine the dataset
- Plugging into the SongKick API, as well as eventbrite too, we can start showing relevant concerts and events during the dates of your travel 


## Link to back-end repository
https://github.com/jcastle13/TravelScout/edit/master/README.md
