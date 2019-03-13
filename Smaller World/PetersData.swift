
import Foundation




let petersData = """
{
"items": [
{
"external_urls": {
"spotify": "https://open.spotify.com/artist/6hCsqVHnBo1BVQWuIjRMkL"
},
"followers": {
"href": null,
"total": 43962
},
"genres": [
"bossa nova",
"lounge"
],
"href": "https://api.spotify.com/v1/artists/6hCsqVHnBo1BVQWuIjRMkL",
"id": "6hCsqVHnBo1BVQWuIjRMkL",
"images": [
{
"height": 634,
"url": "https://i.scdn.co/image/799770e7b78238c3eea74173e1d9c5ec0539240e",
"width": 640
},
{
"height": 297,
"url": "https://i.scdn.co/image/2a1416ef34232d5fddcfacafb7c1e17e0f597e99",
"width": 300
},
{
"height": 63,
"url": "https://i.scdn.co/image/6410f3f514c355963b24c728670e2547999cf628",
"width": 64
}
],
"name": "Sergio Mendes & Brasil '66",
"popularity": 51,
"type": "artist",
"uri": "spotify:artist:6hCsqVHnBo1BVQWuIjRMkL"
},
{
"external_urls": {
"spotify": "https://open.spotify.com/artist/63knPlGzLHTNDf1J78Fvte"
},
"followers": {
"href": null,
"total": 163075
},
"genres": [
"new americana",
"progressive bluegrass",
"stomp and holler"
],
"href": "https://api.spotify.com/v1/artists/63knPlGzLHTNDf1J78Fvte",
"id": "63knPlGzLHTNDf1J78Fvte",
"images": [
{
"height": 640,
"url": "https://i.scdn.co/image/5bcec9349bacec3c194011f6a19c659153958c47",
"width": 640
},
{
"height": 320,
"url": "https://i.scdn.co/image/80476bd4cfa18437130755e8e87fcd24bb3f1c87",
"width": 320
},
{
"height": 160,
"url": "https://i.scdn.co/image/b6450ea2ffa0fe1063f047a218e51079cd535ee5",
"width": 160
}
],
"name": "The Devil Makes Three",
"popularity": 56,
"type": "artist",
"uri": "spotify:artist:63knPlGzLHTNDf1J78Fvte"
},
{
"external_urls": {
"spotify": "https://open.spotify.com/artist/3WrFJ7ztbogyGnTHbHJFl2"
},
"followers": {
"href": null,
"total": 11240324
},
"genres": [
"british invasion",
"merseybeat",
"psychedelic rock",
"rock"
],
"href": "https://api.spotify.com/v1/artists/3WrFJ7ztbogyGnTHbHJFl2",
"id": "3WrFJ7ztbogyGnTHbHJFl2",
"images": [
{
"height": 640,
"url": "https://i.scdn.co/image/6fc6ac9af76d292a9cc55c7415ca0a7fb5b1d4ea",
"width": 640
},
{
"height": 320,
"url": "https://i.scdn.co/image/722fcccede8e231dcf1cdb55b4d58096ab9bc6da",
"width": 320
},
{
"height": 160,
"url": "https://i.scdn.co/image/b61ff8a2999960a73e1c885fea3058525d55d3cd",
"width": 160
}
],
"name": "The Beatles",
"popularity": 87,
"type": "artist",
"uri": "spotify:artist:3WrFJ7ztbogyGnTHbHJFl2"
},
{
"external_urls": {
"spotify": "https://open.spotify.com/artist/5wPoxI5si3eJsYYwyXV4Wi"
},
"followers": {
"href": null,
"total": 438638
},
"genres": [
"hip hop",
"pop",
"pop rap",
"rap"
],
"href": "https://api.spotify.com/v1/artists/5wPoxI5si3eJsYYwyXV4Wi",
"id": "5wPoxI5si3eJsYYwyXV4Wi",
"images": [
{
"height": 640,
"url": "https://i.scdn.co/image/b589c353b05ad9aa1db13ca2cc04dc16e034b4d5",
"width": 640
},
{
"height": 320,
"url": "https://i.scdn.co/image/9d6fcbc28d1a2d3e299c201d326eb4b180fa2cdf",
"width": 320
},
{
"height": 160,
"url": "https://i.scdn.co/image/4df4878d146818b7d86b952a5376e1afd5257128",
"width": 160
}
],
"name": "N.E.R.D",
"popularity": 65,
"type": "artist",
"uri": "spotify:artist:5wPoxI5si3eJsYYwyXV4Wi"
},
{
"external_urls": {
"spotify": "https://open.spotify.com/artist/2YZyLoL8N0Wb9xBt1NhZWg"
},
"followers": {
"href": null,
"total": 12022318
},
"genres": [
"conscious hip hop",
"hip hop",
"pop rap",
"rap",
"west coast rap"
],
"href": "https://api.spotify.com/v1/artists/2YZyLoL8N0Wb9xBt1NhZWg",
"id": "2YZyLoL8N0Wb9xBt1NhZWg",
"images": [
{
"height": 640,
"url": "https://i.scdn.co/image/3a836196bfb341f736c7fe2704fb75de53f8dfbb",
"width": 640
},
{
"height": 320,
"url": "https://i.scdn.co/image/5259c0496329b3f608a1ae0edb799cd2f8451acc",
"width": 320
},
{
"height": 160,
"url": "https://i.scdn.co/image/b772a78d4cb192268d6f601a78f21044c17d6dda",
"width": 160
}
],
"name": "Kendrick Lamar",
"popularity": 89,
"type": "artist",
"uri": "spotify:artist:2YZyLoL8N0Wb9xBt1NhZWg"
},
{
"external_urls": {
"spotify": "https://open.spotify.com/artist/1GAS0rb4L8VTPvizAx2O9J"
},
"followers": {
"href": null,
"total": 456187
},
"genres": [
"alternative hip hop",
"conscious hip hop",
"hip hop",
"pop rap"
],
"href": "https://api.spotify.com/v1/artists/1GAS0rb4L8VTPvizAx2O9J",
"id": "1GAS0rb4L8VTPvizAx2O9J",
"images": [
{
"height": 640,
"url": "https://i.scdn.co/image/407284c308c6f06f3e58756038940ea961c44a4f",
"width": 640
},
{
"height": 320,
"url": "https://i.scdn.co/image/3e0c46c06f2d63028ec72a17631b419f8012809a",
"width": 320
},
{
"height": 160,
"url": "https://i.scdn.co/image/11494060f9161e13ab222f0db60c1a71a833ebc5",
"width": 160
}
],
"name": "Atmosphere",
"popularity": 63,
"type": "artist",
"uri": "spotify:artist:1GAS0rb4L8VTPvizAx2O9J"
},
{
"external_urls": {
"spotify": "https://open.spotify.com/artist/58sXz2QNZ3Zr0JlQ198mg2"
},
"followers": {
"href": null,
"total": 459
},
"genres": [
"country blues"
],
"href": "https://api.spotify.com/v1/artists/58sXz2QNZ3Zr0JlQ198mg2",
"id": "58sXz2QNZ3Zr0JlQ198mg2",
"images": [
{
"height": 640,
"url": "https://i.scdn.co/image/61e4c82c6d36321bb11a922d628f9b0deeb31ca6",
"width": 640
},
{
"height": 300,
"url": "https://i.scdn.co/image/9a676ff9f59e70379366b86eda8ca352babd571d",
"width": 300
},
{
"height": 64,
"url": "https://i.scdn.co/image/0ba68a35ef2b1f9bcf36e9e432c80c07d295cc5a",
"width": 64
}
],
"name": "Mary Flower",
"popularity": 10,
"type": "artist",
"uri": "spotify:artist:58sXz2QNZ3Zr0JlQ198mg2"
},
{
"external_urls": {
"spotify": "https://open.spotify.com/artist/6l3HvQ5sa6mXTsMTB19rO5"
},
"followers": {
"href": null,
"total": 7757590
},
"genres": [
"conscious hip hop",
"nc hip hop",
"pop",
"pop rap",
"rap"
],
"href": "https://api.spotify.com/v1/artists/6l3HvQ5sa6mXTsMTB19rO5",
"id": "6l3HvQ5sa6mXTsMTB19rO5",
"images": [
{
"height": 640,
"url": "https://i.scdn.co/image/1e9eeefb2c94579150fc37916e8319b975ec8a52",
"width": 640
},
{
"height": 320,
"url": "https://i.scdn.co/image/e021db512f24f1b9aafad580db7408863346e9cf",
"width": 320
},
{
"height": 160,
"url": "https://i.scdn.co/image/35c726dfde2a3d5545a8b6cbe9cfeaaea3666764",
"width": 160
}
],
"name": "J. Cole",
"popularity": 90,
"type": "artist",
"uri": "spotify:artist:6l3HvQ5sa6mXTsMTB19rO5"
},
{
"external_urls": {
"spotify": "https://open.spotify.com/artist/4fXkvh05wFhuH77MfD4m9o"
},
"followers": {
"href": null,
"total": 201778
},
"genres": [
"funk",
"retro soul",
"soul"
],
"href": "https://api.spotify.com/v1/artists/4fXkvh05wFhuH77MfD4m9o",
"id": "4fXkvh05wFhuH77MfD4m9o",
"images": [
{
"height": 640,
"url": "https://i.scdn.co/image/a9c8407f9a30ace5949c3706eef54b271fffffb3",
"width": 640
},
{
"height": 320,
"url": "https://i.scdn.co/image/2b5f1017ba52d78f3670b48f491374dee06c2778",
"width": 320
},
{
"height": 160,
"url": "https://i.scdn.co/image/0a7b9ec2d2fe6fe29d7655d28b527c45a4d8d2dc",
"width": 160
}
],
"name": "St. Paul & The Broken Bones",
"popularity": 60,
"type": "artist",
"uri": "spotify:artist:4fXkvh05wFhuH77MfD4m9o"
},
{
"external_urls": {
"spotify": "https://open.spotify.com/artist/6ijT84fUReKCGYV3MjhB2y"
},
"followers": {
"href": null,
"total": 54093
},
"genres": [
"bluegrass",
"jam band",
"new americana",
"progressive bluegrass",
"roots rock",
"southern rock"
],
"href": "https://api.spotify.com/v1/artists/6ijT84fUReKCGYV3MjhB2y",
"id": "6ijT84fUReKCGYV3MjhB2y",
"images": [
{
"height": 640,
"url": "https://i.scdn.co/image/44d37b994b9daa8f7d9a28378be2ccd409f13a24",
"width": 640
},
{
"height": 320,
"url": "https://i.scdn.co/image/f52205a70f3f411171d31302974c5d78e547aafe",
"width": 320
},
{
"height": 160,
"url": "https://i.scdn.co/image/2baf9690b861013692f428ff105e9f4f4f759aa8",
"width": 160
}
],
"name": "Railroad Earth",
"popularity": 47,
"type": "artist",
"uri": "spotify:artist:6ijT84fUReKCGYV3MjhB2y"
}
],
"total": 50,
"limit": 10,
"offset": 0,
"previous": null,
"href": "https://api.spotify.com/v1/me/top/artists?limit=10&offset=0",
"next": "https://api.spotify.com/v1/me/top/artists?limit=10&offset=10"
}
