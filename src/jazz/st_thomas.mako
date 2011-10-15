<%inherit file="/src/include/common.makoi"/>
<%
	attributes['jazzTune']=True
	attributes['type']="harmony_tune"
	attributes['render']="Fake"
	attributes['title']="St. Thomas"
	attributes['composer']="Sonny Rollins"
	attributes['style']="Jazz"
	attributes['piece']="Latin/Calypso"
	attributes['copyright']="1963, Prestigve Music"
	attributes['completion']="5"
	attributes['uuid']="ef0827e0-f690-11e0-ba56-0019d11e5a41"
	attributes['structure']="AABC"
%>

<%doc>
	DONE:
	- chords were taken from the fake book.
	TODO:
	- fill out what's been done for this tune.
	- add epdf from the fake book.
	- add another version from some other book.
	- add youtube performances.
</%doc>

<%def name="myChordsFake()">
\chordmode {
	\startChords

	\startSong

	\mark "A"
	\startPart
	c1 | a:7 | d2:m7 g4:7 c | c2 g:7 | \myEndLine
	\endPart

	\mark "A"
	\startPart
	c1 | a:7 | d2:m7 g4:7 c | c1 | \myEndLine
	\endPart

	\mark "B"
	\startPart
	e1:m7.5- | a:7 | d:m7 | g:7 | \myEndLine
	\endPart

	\mark "C"
	\startPart
	c:7 | f2 fis:dim7 | c/g g4:7 c | c1 | \myEndLine
	\endPart

	\endSong

	\endChords
}
</%def>

<%def name="myVoiceFake()">
\relative c'' {
	%% http://veltzer.net/blog/blog/2010/08/14/musical-tempo-table/
	\tempo "Allegro" 4 = 130
	\time 4/4
	\key c \major

	%% part "A"
	r4 g8 c r b r a | g4 a e f | g c b c | r1 |

	%% part "A"
	r4 g8 c r b r a | g4 a e f | g c b c | r1 |

	%% part "B"
	e2 f4. g8 | r1 | f2 e4. d8 | r1 |

	%% part "C"
	e2 d | c a | g4 c b c | r1 |
}
</%def>