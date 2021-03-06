% (c) 2020 by Wolfgang Esser-Skala.
% This file is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

\version "2.18.0"

\include "../definitions.ly"

\paper {
	indent = 2.5\cm
	top-margin = 1.5\cm
	system-separator-markup = ##f
	system-system-spacing =
    #'((basic-distance . 22)
       (minimum-distance . 22)
       (padding . -100)
       (stretchability . 0))
	
	top-system-spacing =
    #'((basic-distance . 20)
       (minimum-distance . 20)
       (padding . -100)
       (stretchability . 0))
	
	top-markup-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . -100)
       (stretchability . 0))
		
	markup-system-spacing =
    #'((basic-distance . 20)
       (minimum-distance . 20)
       (padding . -100)
       (stretchability . 0))
	
	systems-per-page = #5
}

\layout {
	\context {
		\Lyrics
		\override LyricText.font-size = #-.5
	}
}

#(set-global-staff-size 15.87)

\book {
	\bookpart {
		\header {
			movement = \movementTitle "1.1" "C O R O" "Beſpiegelt euch in Jeſu Leiden"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \BespiegeltEuchSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \BespiegeltEuchSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \BespiegeltEuchAltoNotes }
					}
					\new Lyrics \lyricsto Alto \BespiegeltEuchAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.2" "C H O R A L" "Gute Nacht, o Weſen"
		}
		\paper {
			system-system-spacing.basic-distance = #30
			system-system-spacing.minimum-distance = #30
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff \with { \twoStanzaDistance } <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \GuteNachtSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \GuteNachtSopranoLyricsA
					\new Lyrics \lyricsto Soprano \GuteNachtSopranoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \GuteNachtAltoNotes }
					}
					\new Lyrics \lyricsto Alto \GuteNachtAltoLyricsA
					\new Lyrics \lyricsto Alto \GuteNachtAltoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.3" "R E C I T A T I V O" "Und Jeſus ging hinaus"
		}
		\paper { systems-per-page = #2 }
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.4" "C O R O" "Laßet uns zu Jeſu hinaus gehen"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.5" "R E C I T A T I V O" "Und als Er dahin kam"
		}
		\score {
			<<
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.6" "C H O R A L" "Deinen Engel zu mir ſende"
		}
		\paper {
			system-system-spacing.basic-distance = #30
			system-system-spacing.minimum-distance = #30
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff \with { \twoStanzaDistance } <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \DeinenEngelSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \DeinenEngelSopranoLyricsA
					\new Lyrics \lyricsto Soprano \DeinenEngelSopranoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \DeinenEngelAltoNotes }
					}
					\new Lyrics \lyricsto Alto \DeinenEngelAltoLyricsA
					\new Lyrics \lyricsto Alto \DeinenEngelAltoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.7" "R E C I T A T I V O" "Und es kam, daß Er mit dem Tode rang"
		}
		\paper { systems-per-page = #2 }
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.8" "A R I A" "Wie quälet ſich das höchſte Guth"
		}
		\score {
			<<
				\new Staff {
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.9" "R E C I T A T I V O" "Und er ſtund auf von dem Gebet"
		}
		\score {
			<<
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.10" "C O R O" "HErr, ſollen wir mit dem Schwerdt drein ſchlagen?"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.11" "R E C I T A T I V O" "Und einer aus ihnen ſchlug des Hoheprieſters Knecht"
		}
		\paper { systems-per-page = #3 }
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.12" "C H O R A L" "Laß mich an andern üben"
		}
		\paper {
			system-system-spacing.basic-distance = #30
			system-system-spacing.minimum-distance = #30
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff \with { \twoStanzaDistance } <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \LassMichAnAndernSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \LassMichAnAndernSopranoLyricsA
					\new Lyrics \lyricsto Soprano \LassMichAnAndernSopranoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \LassMichAnAndernAltoNotes }
					}
					\new Lyrics \lyricsto Alto \LassMichAnAndernAltoLyricsA
					\new Lyrics \lyricsto Alto \LassMichAnAndernAltoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.13" "R E C I T A T I V O" "Jeſus aber antwortete zu den Hohenprieſtern"
		}
		\score {
			<<
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.14" "A R I A" "Geprißner Weibes Saamen"
		}
		\score {
			<<
				\new Staff {
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.15" "R E C I T A T I V O" "Und über eine kleine Weile"
		}
		\score {
			<<
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.16" "A R I A" "Werdet ruhig, ihr Gedanken"
		}
		\score {
			<<
				\new Staff {
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.17" "C H O R A L" "Ich fühle zwar der Sünden Schuld"
		}
		\paper {
			system-system-spacing.basic-distance = #30
			system-system-spacing.minimum-distance = #30
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff \with { \twoStanzaDistance } <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \IchFuehleZwarSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \IchFuehleZwarSopranoLyricsA
					\new Lyrics \lyricsto Soprano \IchFuehleZwarSopranoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \IchFuehleZwarAltoNotes }
					}
					\new Lyrics \lyricsto Alto \IchFuehleZwarAltoLyricsA
					\new Lyrics \lyricsto Alto \IchFuehleZwarAltoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.18" "R E C I T A T I V O" "Die Männer aber, die Jeſum hielten"
		}
		\paper {
			system-system-spacing.basic-distance = #25
			system-system-spacing.minimum-distance = #25
			systems-per-page = #2
		}
		\score {
			<<
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.19" "C O R O" "Was dürfen wir weiter Zeugnis?"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "1.20" "A R I A" "Mund der Wahrheit"
		}
		\paper { page-count = #4 }
		\score {
			<<
				\new Staff {
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
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.1" "R E C I T A T I V O" "Und der gantze Hauffe ſtund auf"
		}
		\paper { systems-per-page = #2 }
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = "Evangeliſt"
					\new Voice = "Tenore" { \dynamicUp \UndDerGantzeTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \UndDerGantzeTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\UndDerGantzeOrgano
					}
				>>
				\new FiguredBass { \UndDerGantzeBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.2" "C O R O" "Dieſen finden wir, daß Er das Volck abwendet"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \DiesenFindenWirSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \DiesenFindenWirSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \DiesenFindenWirAltoNotes }
					}
					\new Lyrics \lyricsto Alto \DiesenFindenWirAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \DiesenFindenWirTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \DiesenFindenWirTenoreLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \DiesenFindenWirBassoNotes }
					}
					\new Lyrics \lyricsto Basso \DiesenFindenWirBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\DiesenFindenWirOrgano
					}
				>>
				\new FiguredBass { \DiesenFindenWirBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.3" "R E C I T A T I V O" "Pilatus aber fragte Ihn"
		}
		\paper { systems-per-page = #3 }
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Evangeliſt" "Pilatus" } }
					\new Voice = "Tenore" { \dynamicUp \PilatusAberTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \PilatusAberTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\PilatusAberOrgano
					}
				>>
				\new FiguredBass { \PilatusAberBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.4" "C O R O" "Er hat das Volck erreget"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \ErHatDasVolckSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \ErHatDasVolckSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \ErHatDasVolckAltoNotes }
					}
					\new Lyrics \lyricsto Alto \ErHatDasVolckAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \ErHatDasVolckTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \ErHatDasVolckTenoreLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \ErHatDasVolckBassoNotes }
					}
					\new Lyrics \lyricsto Basso \ErHatDasVolckBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\ErHatDasVolckOrgano
					}
				>>
				\new FiguredBass { \ErHatDasVolckBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.5" "R E C I T A T I V O" "Da aber Pilatus Galiläam hörete"
		}
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = "Evangeliſt"
					\new Voice = "Tenore" { \dynamicUp \DaAberPilatusTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \DaAberPilatusTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\DaAberPilatusOrgano
					}
				>>
				\new FiguredBass { \DaAberPilatusBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.6" "C H O R A L" "Iſt Gott für mich, ſo trete"
		}
		\paper {
			system-system-spacing.basic-distance = #30
			system-system-spacing.minimum-distance = #30
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff \with { \twoStanzaDistance } <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \IstGottFuerSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \IstGottFuerSopranoLyricsA
					\new Lyrics \lyricsto Soprano \IstGottFuerSopranoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \IstGottFuerAltoNotes }
					}
					\new Lyrics \lyricsto Alto \IstGottFuerAltoLyricsA
					\new Lyrics \lyricsto Alto \IstGottFuerAltoLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \IstGottFuerTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \IstGottFuerTenoreLyricsA
					\new Lyrics \lyricsto Tenore \IstGottFuerTenoreLyricsB
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \IstGottFuerBassoNotes }
					}
					\new Lyrics \lyricsto Basso \IstGottFuerBassoLyricsA
					\new Lyrics \lyricsto Basso \IstGottFuerBassoLyricsB
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\IstGottFuerOrgano
					}
				>>
				\new FiguredBass { \IstGottFuerBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.7" "R E C I T A T I V O" "Pilatus aber rief die Hohenprieſter"
		}
		\paper { systems-per-page = #4 }
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Evangeliſt" "Pilatus" } }
					\new Voice = "Tenore" { \dynamicUp \PilatusAberRiefTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \PilatusAberRiefTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\PilatusAberRiefOrgano
					}
				>>
				\new FiguredBass { \PilatusAberRiefBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.8" "C O R O" "Hinweg mit dieſem"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \HinwegMitDiesemSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \HinwegMitDiesemSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \HinwegMitDiesemAltoNotes }
					}
					\new Lyrics \lyricsto Alto \HinwegMitDiesemAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \HinwegMitDiesemTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \HinwegMitDiesemTenoreLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \HinwegMitDiesemBassoNotes }
					}
					\new Lyrics \lyricsto Basso \HinwegMitDiesemBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\HinwegMitDiesemOrgano
					}
				>>
				\new FiguredBass { \HinwegMitDiesemBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.9" "R E C I T A T I V O" "Welcher war um einen Aufruhr"
		}
		\paper {
			system-system-spacing.basic-distance = #25
			system-system-spacing.minimum-distance = #25
			systems-per-page = #2
		}
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Evangeliſt" "Pilatus" } }
					\new Voice = "Evangelist" { \dynamicUp \WelcherWarUmEvangelistNotes }
				}
				\new Lyrics \lyricsto Evangelist \WelcherWarUmEvangelistLyrics
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \WelcherWarUmSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \WelcherWarUmSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \WelcherWarUmAltoNotes }
					}
					\new Lyrics \lyricsto Alto \WelcherWarUmAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \WelcherWarUmTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \WelcherWarUmTenoreLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \WelcherWarUmBassoNotes }
					}
					\new Lyrics \lyricsto Basso \WelcherWarUmBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\WelcherWarUmOrgano
					}
				>>
				\new FiguredBass { \WelcherWarUmBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.10" "C O R O" "Es ſoll der fromme Jeſus ſterben"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \EsSollDerSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \EsSollDerSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \EsSollDerAltoNotes }
					}
					\new Lyrics \lyricsto Alto \EsSollDerAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \EsSollDerTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \EsSollDerTenoreLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \EsSollDerBassoNotes }
					}
					\new Lyrics \lyricsto Basso \EsSollDerBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\EsSollDerOrgano
					}
				>>
				\new FiguredBass { \EsSollDerBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.11" "R E C I T A T I V O" "Und als ſie Ihn hinführeten"
		}
		\paper { systems-per-page = #3 }
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = "Evangeliſt"
					\new Voice = "Tenore" { \dynamicUp \UndAlsSieTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \UndAlsSieTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\UndAlsSieOrgano
					}
				>>
				\new FiguredBass { \UndAlsSieBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.12" "C O R O" "Es ſoll der fromme Jeſus ſterben [da capo]"
		}
		\paper {
			system-system-spacing.basic-distance = #25
			system-system-spacing.minimum-distance = #25
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "Canto I"
						\new Voice = "SopranoI" { \dynamicUp \EsSollDerBSopranoINotes }
					}
					\new Lyrics \lyricsto SopranoI \EsSollDerBSopranoILyrics
					
					\new Staff {
						\set Staff.instrumentName = "Canto II"
						\new Voice = "SopranoII" { \dynamicUp \EsSollDerBSopranoIINotes }
					}
					\new Lyrics \lyricsto SopranoII \EsSollDerBSopranoIILyrics
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \EsSollDerBAltoNotes }
					}
					\new Lyrics \lyricsto Alto \EsSollDerBAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \EsSollDerBTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \EsSollDerBTenoreLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \EsSollDerBBassoNotes }
					}
					\new Lyrics \lyricsto Basso \EsSollDerBBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\EsSollDerBOrgano
					}
				>>
				\new FiguredBass { \EsSollDerBBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.13" "R E C I T A T I V O" "Jeſus aber wandte ſich um zu ihnen"
		}
		\paper { systems-per-page = #4 }
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Evangeliſt" "Jeſus" } }
					\new Voice = "Tenore" { \dynamicUp \JesusAberWandteTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \JesusAberWandteTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\JesusAberWandteOrgano
					}
				>>
				\new FiguredBass { \JesusAberWandteBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.14" "A R I A" "Nimm, ſichrer Menſch, des Höchſten Rath zu Hertzen"
		}
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Basſo" "solo" } }
					\new Voice = "Basso" { \dynamicUp \NimmSichrerBassoNotes }
				}
				\new Lyrics \lyricsto Basso \NimmSichrerBassoLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\NimmSichrerOrgano
					}
				>>
				\new FiguredBass { \NimmSichrerBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.15" "C H O R A L" "Wie heftig unſre Sünden"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \WieHeftigSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \WieHeftigSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \WieHeftigAltoNotes }
					}
					\new Lyrics \lyricsto Alto \WieHeftigAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \WieHeftigTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \WieHeftigTenoreLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \WieHeftigBassoNotes }
					}
					\new Lyrics \lyricsto Basso \WieHeftigBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\WieHeftigOrgano
					}
				>>
				\new FiguredBass { \WieHeftigBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.16" "R E C I T A T I V O" "Es wurden aber auch hingeführet"
		}
		\paper {
			system-system-spacing.basic-distance = #18
			system-system-spacing.minimum-distance = #18
			systems-per-page = #6
		}
		\score {
			<<
				\new Staff \with { \smallerStaffDistance } {
					\set Staff.instrumentName = \markup { \center-column { "Evangeliſt" "Jeſus" } }
					\new Voice = "Tenore" { \dynamicUp \EsWurdenAberTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \EsWurdenAberTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\EsWurdenAberOrgano
					}
				>>
				\new FiguredBass { \EsWurdenAberBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.17" "C O R O" "Er hat andern geholfen"
		}
		\paper {
			system-system-spacing.basic-distance = #25
			system-system-spacing.minimum-distance = #25
			systems-per-page = #2
		}
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = "Evangeliſt"
					\new Voice = "Evangelist" { \dynamicUp \ErHatAndernEvangelistNotes }
				}
				\new Lyrics \lyricsto Evangelist \ErHatAndernEvangelistLyrics
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \ErHatAndernSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \ErHatAndernSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \ErHatAndernAltoNotes }
					}
					\new Lyrics \lyricsto Alto \ErHatAndernAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \ErHatAndernTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \ErHatAndernTenoreLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \ErHatAndernBassoNotes }
					}
					\new Lyrics \lyricsto Basso \ErHatAndernBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\ErHatAndernOrgano
					}
				>>
				\new FiguredBass { \ErHatAndernBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.18" "A R I A" "Verdamliche Bosheit, entſetzliche Wuth"
		}
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Canto" "solo" } }
					\new Voice = "Soprano" { \dynamicUp \VerdamlicheBosheitSopranoNotes }
				}
				\new Lyrics \lyricsto Soprano \VerdamlicheBosheitSopranoLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\VerdamlicheBosheitOrgano
					}
				>>
				\new FiguredBass { \VerdamlicheBosheitBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.19" "R E C I T A T I V O" "Es war auch oben über Ihn geſchrieben"
		}
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Evangeliſt" "Übelthäter I, II" "Jeſus" } }
					\new Voice = "Tenore" { \dynamicUp \EsWarAuchTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \EsWarAuchTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\EsWarAuchOrgano
					}
				>>
				\new FiguredBass { \EsWarAuchBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.20" "C H O R A L" "Ich bin ein Glied an Deinem Leib"
		}
		\paper {
			system-system-spacing.basic-distance = #35
			system-system-spacing.minimum-distance = #35
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \IchBinEinSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \IchBinEinSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \IchBinEinAltoNotes }
					}
					\new Lyrics \lyricsto Alto \IchBinEinAltoLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \IchBinEinTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \IchBinEinTenoreLyrics
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \IchBinEinBassoNotes }
					}
					\new Lyrics \lyricsto Basso \IchBinEinBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\IchBinEinOrgano
					}
				>>
				\new FiguredBass { \IchBinEinBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.21" "R E C I T A T I V O" "Und es war um die ſechſte Stunde"
		}
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Evangeliſt" "Jeſus" } }
					\new Voice = "Tenore" { \dynamicUp \UndEsWarTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \UndEsWarTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\UndEsWarOrgano
					}
				>>
				\new FiguredBass { \UndEsWarBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.22" "D U E T T O" "Ruhet ſanft, ihr holden Glieder"
		}
		\paper {
			system-system-spacing.basic-distance = #30
			system-system-spacing.minimum-distance = #30
			systems-per-page = #3
		}
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Canto" "solo" } }
						\new Voice = "Soprano" { \dynamicUp \RuhetSanftSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \RuhetSanftSopranoLyrics
					
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Alto" "solo" } }
						\new Voice = "Alto" { \dynamicUp \RuhetSanftAltoNotes }
					}
					\new Lyrics \lyricsto Alto \RuhetSanftAltoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\RuhetSanftOrgano
					}
				>>
				\new FiguredBass { \RuhetSanftBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.23" "R E C I T A T I V O" "Da aber der Hauptmann ſahe"
		}
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "Evangeliſt" "Hauptmann" } }
					\new Voice = "Tenore" { \dynamicUp \DaAberDerTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \DaAberDerTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\DaAberDerOrgano
					}
				>>
				\new FiguredBass { \DaAberDerBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2.24" "S C H L U S S C H O R A L" "Der Du, HErr Jeſu, Ruh und Raſt"
		}
		\paper {
			system-system-spacing.basic-distance = #20
			system-system-spacing.minimum-distance = #20
			systems-per-page = #2
		}
		\score {
			<<
				\new ChoirStaff \with { \threeStanzaDistance } <<
					\new Staff {
						\set Staff.instrumentName = "Canto"
						\new Voice = "Soprano" { \dynamicUp \DaDuHerrSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \DaDuHerrSopranoLyricsA
					\new Lyrics \lyricsto Soprano \DaDuHerrSopranoLyricsB
					\new Lyrics \lyricsto Soprano \DaDuHerrSopranoLyricsC
					
					\new Staff {
						\set Staff.instrumentName = "Alto"
						\new Voice = "Alto" { \dynamicUp \DaDuHerrAltoNotes }
					}
					\new Lyrics \lyricsto Alto \DaDuHerrAltoLyricsA
					\new Lyrics \lyricsto Alto \DaDuHerrAltoLyricsB
					\new Lyrics \lyricsto Alto \DaDuHerrAltoLyricsC
					
					\new Staff {
						\set Staff.instrumentName = "Tenore"
						\new Voice = "Tenore" { \dynamicUp \DaDuHerrTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \DaDuHerrTenoreLyricsA
					\new Lyrics \lyricsto Tenore \DaDuHerrTenoreLyricsB
					\new Lyrics \lyricsto Tenore \DaDuHerrTenoreLyricsC
					
					\new Staff {
						\set Staff.instrumentName = "Basſo"
						\new Voice = "Basso" { \dynamicUp \DaDuHerrBassoNotes }
					}
					\new Lyrics \lyricsto Basso \DaDuHerrBassoLyricsA
					\new Lyrics \lyricsto Basso \DaDuHerrBassoLyricsB
					\new Lyrics \lyricsto Basso \DaDuHerrBassoLyricsC
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Fondamento"
						\DaDuHerrOrgano
					}
				>>
				\new FiguredBass { \DaDuHerrBassFigures }
			>>
		}
	}
}