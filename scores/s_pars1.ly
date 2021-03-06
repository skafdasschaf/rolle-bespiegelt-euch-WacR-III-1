% (c) 2020 by Wolfgang Esser-Skala.
% This file is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

\version "2.18.0"

\include "../definitions.ly"

\paper { first-page-number = #1 }

#(set-global-staff-size 15.87)

\book {
	\bookpart {
		\paper { evenHeaderMarkup = {} oddHeaderMarkup = {} }
		\partTitle "L U K A S" "X X I I"
	}
	\bookpart {
		\paper { evenHeaderMarkup = {} oddHeaderMarkup = {} }
		\markup \null
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.1" "C O R O" "Beſpiegelt euch in Jeſu Leiden"
		}
		\paper { systems-per-page = #1 }
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\new Staff {
							\set Staff.instrumentName = "Oboe I"
							\BespiegeltEuchOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "Oboe II"
							\BespiegeltEuchOboeII
						}
					>>
				>>
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "in D"
						\new Staff {
							\set Staff.instrumentName = "Corno I"
							\BespiegeltEuchCornoI
						}
						\new Staff {
							\set Staff.instrumentName = "Corno II"
							\BespiegeltEuchCornoII
						}
					>>
				>>
				\new StaffGroup <<
					\new GrandStaff \with { \violinGroupDistance } <<
						\new Staff {
							\set Staff.instrumentName = "Violino I"
							\BespiegeltEuchViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "Violino II"
							\BespiegeltEuchViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "Viola"
						\BespiegeltEuchViola
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = \SopranoIncipit
						\override Staff.InstrumentName.self-alignment-Y = ##f
						\override Staff.InstrumentName.self-alignment-X = #RIGHT
						\new Voice = "Soprano" { \dynamicUp \BespiegeltEuchSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \BespiegeltEuchSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = \AltoIncipit
						\override Staff.InstrumentName.self-alignment-Y = ##f
						\override Staff.InstrumentName.self-alignment-X = #RIGHT
						\new Voice = "Alto" { \dynamicUp \BespiegeltEuchAltoNotes }
					}
					\new Lyrics \lyricsto Alto \BespiegeltEuchAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = \TenoreIncipit
						\override Staff.InstrumentName.self-alignment-Y = ##f
						\override Staff.InstrumentName.self-alignment-X = #RIGHT
						\new Voice = "Tenore" { \dynamicUp \BespiegeltEuchTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \BespiegeltEuchTenoreLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \BespiegeltEuchBassoNotes }
					}
					\new Lyrics \lyricsto Basso \BespiegeltEuchBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\BespiegeltEuchOrgano
					}
				>>
				\new FiguredBass { \BespiegeltEuchBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 75 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.2" "C H O R A L" "Gute Nacht, o Weſen"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff \with { \twoStanzaDistance } <<
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Canto" "Violino I" "Oboe I" } }
						\new Voice = "Soprano" { \dynamicUp \GuteNachtSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \GuteNachtSopranoLyricsA
					\new Lyrics \lyricsto Soprano \GuteNachtSopranoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Alto" "Violino II" "Oboe II" } }
						\new Voice = "Alto" { \dynamicUp \GuteNachtAltoNotes }
					}
					\new Lyrics \lyricsto Alto \GuteNachtAltoLyricsA
					\new Lyrics \lyricsto Alto \GuteNachtAltoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Tenore" "Viola" } }
						\new Voice = "Tenore" { \dynamicUp \GuteNachtTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \GuteNachtTenoreLyricsA
					\new Lyrics \lyricsto Tenore \GuteNachtTenoreLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \GuteNachtBassoNotes }
					}
					\new Lyrics \lyricsto Basso \GuteNachtBassoLyricsA
					\new Lyrics \lyricsto Basso \GuteNachtBassoLyricsB
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\GuteNachtOrgano
					}
				>>
				\new FiguredBass { \GuteNachtBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 90 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.3" "R E C I T A T I V O" "Und Jeſus ging hinaus"
		}
		\paper {
			system-system-spacing.basic-distance = #23
			system-system-spacing.minimum-distance = #23
			systems-per-page = #2
		}
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = "Evangeliſt"
					\new Voice = "Tenore" { \dynamicUp \JesusGingHinaufTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \JesusGingHinaufTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\JesusGingHinaufOrgano
					}
				>>
				\new FiguredBass { \JesusGingHinaufBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 60 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.4" "C O R O" "Laßet uns zu Jeſu hinaus gehen"
		}
		\paper { systems-per-page = #1 }
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\new Staff {
							\set Staff.instrumentName = "Oboe I"
							\LassetUnsZuOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "Oboe II"
							\LassetUnsZuOboeII
						}
					>>
				>>
				\new StaffGroup <<
					\new GrandStaff \with { \violinGroupDistance } <<
						\new Staff {
							\set Staff.instrumentName = "Violino I"
							\LassetUnsZuViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "Violino II"
							\LassetUnsZuViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "Viola"
						\LassetUnsZuViola
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \LassetUnsZuSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \LassetUnsZuSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \LassetUnsZuAltoNotes }
					}
					\new Lyrics \lyricsto Alto \LassetUnsZuAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \LassetUnsZuTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \LassetUnsZuTenoreLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \LassetUnsZuBassoNotes }
					}
					\new Lyrics \lyricsto Basso \LassetUnsZuBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\LassetUnsZuOrgano
					}
				>>
				\new FiguredBass { \LassetUnsZuBassFigures }
			>>
			\layout { }
			\midi { \tempo 1 = 60 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.5" "R E C I T A T I V O" "Und als Er dahin kam"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff \with { \violinGroupDistance } <<
						\new Staff {
							\set Staff.instrumentName = "Violino I"
							\AlsErDahinKamViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "Violino II"
							\AlsErDahinKamViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "Viola"
						\AlsErDahinKamViola
					}
				>>
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Evangeliſt" "Jeſus" } }
					\new Voice = "Tenore" { \dynamicUp \AlsErDahinKamTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \AlsErDahinKamTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\AlsErDahinKamOrgano
					}
				>>
				\new FiguredBass { \AlsErDahinKamBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 60 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.6" "C H O R A L" "Deinen Engel zu mir ſende"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff \with { \twoStanzaDistance } <<
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Canto" "Violino I" "Oboe I" } }
						\new Voice = "Soprano" { \dynamicUp \DeinenEngelSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \DeinenEngelSopranoLyricsA
					\new Lyrics \lyricsto Soprano \DeinenEngelSopranoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Alto" "Violino II" "Oboe II" } }
						\new Voice = "Alto" { \dynamicUp \DeinenEngelAltoNotes }
					}
					\new Lyrics \lyricsto Alto \DeinenEngelAltoLyricsA
					\new Lyrics \lyricsto Alto \DeinenEngelAltoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Tenore" "Viola" } }
						\new Voice = "Tenore" { \dynamicUp \DeinenEngelTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \DeinenEngelTenoreLyricsA
					\new Lyrics \lyricsto Tenore \DeinenEngelTenoreLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \DeinenEngelBassoNotes }
					}
					\new Lyrics \lyricsto Basso \DeinenEngelBassoLyricsA
					\new Lyrics \lyricsto Basso \DeinenEngelBassoLyricsB
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\DeinenEngelOrgano
					}
				>>
				\new FiguredBass { \DeinenEngelBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 90 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.7" "R E C I T A T I V O" "Und es kam, daß Er mit dem Tode rang"
		}
		\paper {
			system-system-spacing.basic-distance = #23
			system-system-spacing.minimum-distance = #23
			systems-per-page = #2
		}
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = "Evangeliſt"
					\new Voice = "Tenore" { \dynamicUp \UndEsKamTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \UndEsKamTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\UndEsKamOrgano
					}
				>>
				\new FiguredBass { \UndEsKamBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 60 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.8" "A R I A" "Wie quälet ſich das höchſte Guth"
		}
		\paper {
			system-system-spacing.basic-distance = #20
			system-system-spacing.minimum-distance = #20
			systems-per-page = #2
		}
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\new Staff {
							\set Staff.instrumentName = "Oboe I"
							\WieQuaeletOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "Oboe II"
							\WieQuaeletOboeII
						}
					>>
				>>
				\new StaffGroup <<
					\new GrandStaff \with { \violinGroupDistance } <<
						\new Staff {
							\set Staff.instrumentName = "Violino I"
							\WieQuaeletViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "Violino II"
							\WieQuaeletViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "Viola"
						\WieQuaeletViola
					}
				>>
				\new Staff \with { \smallerStaffDistance } {
					\set Staff.instrumentName = \markup { \center-column { "Canto" "solo" } }
					\new Voice = "Tenore" { \dynamicUp \WieQuaeletSopranoNotes }
				}
				\new Lyrics \lyricsto Tenore \WieQuaeletSopranoLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\WieQuaeletOrgano
					}
				>>
				\new FiguredBass { \WieQuaeletBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 60 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.9" "R E C I T A T I V O" "Und er ſtund auf von dem Gebet"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff \with { \violinGroupDistance } <<
						\new Staff {
							\set Staff.instrumentName = "Violino I"
							\UndErStundViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "Violino II"
							\UndErStundViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "Viola"
						\UndErStundViola
					}
				>>
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Evangeliſt" "Jeſus" } }
					\new Voice = "Tenore" { \dynamicUp \UndErStundTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \UndErStundTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\UndErStundOrgano
					}
				>>
				\new FiguredBass { \UndErStundBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 60 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.10" "C O R O" "HErr, ſollen wir mit dem Schwerdt drein ſchlagen?"
		}
		\paper { systems-per-page = #1 }
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\new Staff {
							\set Staff.instrumentName = "Oboe I"
							\HerrSollenOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "Oboe II"
							\HerrSollenOboeII
						}
					>>
				>>
				\new StaffGroup <<
					\new GrandStaff \with { \violinGroupDistance } <<
						\new Staff {
							\set Staff.instrumentName = "Violino I"
							\HerrSollenViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "Violino II"
							\HerrSollenViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "Viola"
						\HerrSollenViola
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \HerrSollenSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \HerrSollenSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \HerrSollenAltoNotes }
					}
					\new Lyrics \lyricsto Alto \HerrSollenAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \HerrSollenTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \HerrSollenTenoreLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \HerrSollenBassoNotes }
					}
					\new Lyrics \lyricsto Basso \HerrSollenBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\HerrSollenOrgano
					}
				>>
				\new FiguredBass { \HerrSollenBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 120 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.11" "R E C I T A T I V O" "Und einer aus ihnen ſchlug des Hoheprieſters Knecht"
		}
		\paper {
			system-system-spacing.basic-distance = #23
			system-system-spacing.minimum-distance = #23
			systems-per-page = #3
		}
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Evangeliſt" "Jeſus" } }
					\new Voice = "Tenore" { \dynamicUp \UndEinerAusIhnenTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \UndEinerAusIhnenTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\UndEinerAusIhnenOrgano
					}
				>>
				\new FiguredBass { \UndEinerAusIhnenBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 60 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.12" "C H O R A L" "Laß mich an andern üben"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff \with { \twoStanzaDistance } <<
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Canto" "Violino I" "Oboe I" } }
						\new Voice = "Soprano" { \dynamicUp \LassMichAnAndernSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \LassMichAnAndernSopranoLyricsA
					\new Lyrics \lyricsto Soprano \LassMichAnAndernSopranoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Alto" "Violino II" "Oboe II" } }
						\new Voice = "Alto" { \dynamicUp \LassMichAnAndernAltoNotes }
					}
					\new Lyrics \lyricsto Alto \LassMichAnAndernAltoLyricsA
					\new Lyrics \lyricsto Alto \LassMichAnAndernAltoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Tenore" "Viola" } }
						\new Voice = "Tenore" { \dynamicUp \LassMichAnAndernTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \LassMichAnAndernTenoreLyricsA
					\new Lyrics \lyricsto Tenore \LassMichAnAndernTenoreLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \LassMichAnAndernBassoNotes }
					}
					\new Lyrics \lyricsto Basso \LassMichAnAndernBassoLyricsA
					\new Lyrics \lyricsto Basso \LassMichAnAndernBassoLyricsB
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\LassMichAnAndernOrgano
					}
				>>
				\new FiguredBass { \LassMichAnAndernBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 90 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.13" "R E C I T A T I V O" "Jeſus aber antwortete zu den Hohenprieſtern"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff \with { \violinGroupDistance } <<
						\new Staff {
							\set Staff.instrumentName = "Violino I"
							\JesusAberAntworteteViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "Violino II"
							\JesusAberAntworteteViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "Viola"
						\JesusAberAntworteteViola
					}
				>>
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Evangeliſt" "Jeſus" "Magd I" "Petrus" } }
					\new Voice = "Tenore" { \dynamicUp \JesusAberAntworteteTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \JesusAberAntworteteTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\JesusAberAntworteteOrgano
					}
				>>
				\new FiguredBass { \JesusAberAntworteteBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 60 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.14" "A R I A" "Geprißner Weibes Saamen"
		}
		\paper {
			system-system-spacing.basic-distance = #20
			system-system-spacing.minimum-distance = #20
			systems-per-page = #2
		}
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\new Staff {
							\set Staff.instrumentName = "Flauto I"
							\GepriesnerWeibesFlautoI
						}
						\new Staff {
							\set Staff.instrumentName = "Flauto II"
							\GepriesnerWeibesFlautoII
						}
					>>
				>>
				\new StaffGroup <<
					\new GrandStaff \with { \violinGroupDistance } <<
						\new Staff {
							\set Staff.instrumentName = "Violino I"
							\GepriesnerWeibesViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "Violino II"
							\GepriesnerWeibesViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "Viola"
						\GepriesnerWeibesViola
					}
				>>
				\new Staff \with { \smallerStaffDistance } {
					\set Staff.instrumentName = \markup { \center-column { "Alto" "solo" } }
					\new Voice = "Alto" { \dynamicUp \GepriesnerWeibesAltoNotes }
				}
				\new Lyrics \lyricsto Alto \GepriesnerWeibesAltoLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\GepriesnerWeibesOrgano
					}
				>>
				\new FiguredBass { \GepriesnerWeibesBassFigures }
			>>
			\layout { }
			\midi { \tempo 4. = 55 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.15" "R E C I T A T I V O" "Und über eine kleine Weile"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff \with { \violinGroupDistance } <<
						\new Staff {
							\set Staff.instrumentName = "Violino I"
							\UndUeberEineViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "Violino II"
							\UndUeberEineViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "Viola"
						\UndUeberEineViola
					}
				>>
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Evangeliſt" "Jeſus" "Magd II, III" } }
					\new Voice = "Tenore" { \dynamicUp \UndUeberEineTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \UndUeberEineTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\UndUeberEineOrgano
					}
				>>
				\new FiguredBass { \UndUeberEineBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 60 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.16" "A R I A" "Werdet ruhig, ihr Gedanken"
		}
		\paper {
			system-system-spacing.basic-distance = #20
			system-system-spacing.minimum-distance = #20
			systems-per-page = #2
		}
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\new Staff {
							\set Staff.instrumentName = "Fagotto I"
							\WerdetRuhigFagottoI
						}
						\new Staff {
							\set Staff.instrumentName = "Fagotto II"
							\WerdetRuhigFagottoII
						}
					>>
				>>
				\new StaffGroup <<
					\new GrandStaff \with { \violinGroupDistance } <<
						\new Staff {
							\set Staff.instrumentName = "Violino I"
							\WerdetRuhigViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "Violino II"
							\WerdetRuhigViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "Viola"
						\WerdetRuhigViola
					}
				>>
				\new Staff \with { \smallerStaffDistance } {
					\set Staff.instrumentName = "Petrus"
					\new Voice = "Tenore" { \dynamicUp \WerdetRuhigTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \WerdetRuhigTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\WerdetRuhigOrgano
					}
				>>
				\new FiguredBass { \WerdetRuhigBassFigures }
			>>
			\layout { }
			\midi { \tempo 4. = 40 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.17" "C H O R A L" "Ich fühle zwar der Sünden Schuld"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff \with { \twoStanzaDistance } <<
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Canto" "Violino I" "Oboe I" } }
						\new Voice = "Soprano" { \dynamicUp \IchFuehleZwarSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \IchFuehleZwarSopranoLyricsA
					\new Lyrics \lyricsto Soprano \IchFuehleZwarSopranoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Alto" "Violino II" "Oboe II" } }
						\new Voice = "Alto" { \dynamicUp \IchFuehleZwarAltoNotes }
					}
					\new Lyrics \lyricsto Alto \IchFuehleZwarAltoLyricsA
					\new Lyrics \lyricsto Alto \IchFuehleZwarAltoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Tenore" "Viola" } }
						\new Voice = "Tenore" { \dynamicUp \IchFuehleZwarTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \IchFuehleZwarTenoreLyricsA
					\new Lyrics \lyricsto Tenore \IchFuehleZwarTenoreLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \IchFuehleZwarBassoNotes }
					}
					\new Lyrics \lyricsto Basso \IchFuehleZwarBassoLyricsA
					\new Lyrics \lyricsto Basso \IchFuehleZwarBassoLyricsB
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\IchFuehleZwarOrgano
					}
				>>
				\new FiguredBass { \IchFuehleZwarBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 90 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.18" "R E C I T A T I V O" "Die Männer aber, die Jeſum hielten"
		}
		\paper { systems-per-page = #1 }
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\new Staff {
							\set Staff.instrumentName = "Oboe I"
							\DieMaennerAberOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "Oboe II"
							\DieMaennerAberOboeII
						}
					>>
				>>
				\new StaffGroup <<
					\new GrandStaff \with { \violinGroupDistance } <<
						\new Staff {
							\set Staff.instrumentName = "Violino I"
							\DieMaennerAberViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "Violino II"
							\DieMaennerAberViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "Viola"
						\DieMaennerAberViola
					}
				>>
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Evangeliſt" "Jeſus" } }
					\new Voice = "Evangelist" { \dynamicUp \DieMaennerAberEvangelistNotes }
				}
				\new Lyrics \lyricsto Evangelist \DieMaennerAberEvangelistLyrics
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \DieMaennerAberSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \DieMaennerAberSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \DieMaennerAberAltoNotes }
					}
					\new Lyrics \lyricsto Alto \DieMaennerAberAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \DieMaennerAberTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \DieMaennerAberTenoreLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \DieMaennerAberBassoNotes }
					}
					\new Lyrics \lyricsto Basso \DieMaennerAberBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\DieMaennerAberOrgano
					}
				>>
				\new FiguredBass { \DieMaennerAberBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 60 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.19" "C O R O" "Was dürfen wir weiter Zeugnis?"
		}
		\paper { systems-per-page = #1 }
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff \with { \violinGroupDistance } <<
						\new Staff {
							\set Staff.instrumentName = \markup { \center-column { "Violino I" "Oboe I" } }
							\WasDuerfenWirViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = \markup { \center-column { "Violino II" "Oboe II" } }
							\WasDuerfenWirViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "Viola"
						\WasDuerfenWirViola
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \WasDuerfenWirSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \WasDuerfenWirSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \WasDuerfenWirAltoNotes }
					}
					\new Lyrics \lyricsto Alto \WasDuerfenWirAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \WasDuerfenWirTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \WasDuerfenWirTenoreLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \WasDuerfenWirBassoNotes }
					}
					\new Lyrics \lyricsto Basso \WasDuerfenWirBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\WasDuerfenWirOrgano
					}
				>>
				\new FiguredBass { \WasDuerfenWirBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 110 }
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.20" "A R I A" "Mund der Wahrheit"
		}
		\paper { systems-per-page = #1 }
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\new Staff {
							\set Staff.instrumentName = "Flauto I"
							\MundDerFlautoI
						}
						\new Staff {
							\set Staff.instrumentName = "Flauto II"
							\MundDerFlautoII
						}
					>>
				>>
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "in D"
						\new Staff {
							\set Staff.instrumentName = "Corno I"
							\MundDerCornoI
						}
						\new Staff {
							\set Staff.instrumentName = "Corno II"
							\MundDerCornoII
						}
					>>
				>>
				\new StaffGroup <<
					\new GrandStaff \with { \violinGroupDistance } <<
						\new Staff {
							\set Staff.instrumentName = "Violino I"
							\MundDerViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "Violino II"
							\MundDerViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "Viola"
						\MundDerViola
					}
				>>
				\new Staff \with { \smallerStaffDistance } {
					\set Staff.instrumentName = \markup { \center-column { "Alto" "solo" } }
					\new Voice = "Alto" { \dynamicUp \MundDerAltoNotes }
				}
				\new Lyrics \lyricsto Alto \MundDerAltoLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\MundDerOrgano
					}
				>>
				\new FiguredBass { \MundDerBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 70 }
		}
	}
}