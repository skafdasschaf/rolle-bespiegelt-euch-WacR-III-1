% (c) 2020 by Wolfgang Esser-Skala.
% This file is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

\version "2.18.0"

GepriesnerWeibesFlautoI = {
	\relative c' {
		\clef treble
		\key c \major \time 3/8 \tempoGepriesnerWeibes
		\partial 8 g''8\fE c( h) a
		g16.( a32 g8) f
		e16( f) g8-! r
		c, a' a
		a( g) c %5
		g4( f8)
		\appoggiatura f e4 r8
		g, e' e
		\once \slurDashed e( d) \tuplet 3/2 8 { g16([ fis e)] }
		d16.( e32 d8) c %10
		c( h) r
		c a' a
		a( g) \tuplet 3/2 8 { c16([ h a)] }
		\tuplet 3/2 8 { g([ f e)] } f8 e
		d \tuplet 3/2 8 { f16([ d' f,)] e( c' e,) } %15
		d8 f[-! e]-!
		d \tuplet 3/2 8 { f16([ d' f,)] e( c' e,) }
		d8 f[-! e]-!
		e d r
		c a' a %20
		a( g) c
		\tuplet 3/2 8 { a16([ g f)] } e8 d
		d4( c8)
		c a' a
		a( g) c %25
		\tuplet 3/2 8 { a16([ g f)] } e8 d
		c4 r8
		R4.*12 %39
		r8 \tuplet 3/2 8 { c16([\fE a' c,]) h( g' h,) } %40
		a8 r r
		r \tuplet 3/2 8 { c16([ a' c,]) h( g' h,) }
		a8 r d~\pE
		d d, r
		r r e'~ %45
		e d r
		R4.*9 %55
		r4 d8\fE
		g( fis) e
		d16.( e32 d8) c
		h16( c) d8-! r
		g, e' e %60
		e( d) g
		d4( c8)
		\appoggiatura c h4 r8
		R4.*7 %70
		r4 g'8~\p
		g f r
		r4 b,8
		b4( a8)
		r4 a'8~ %75
		a g r
		R4.
		r8 \tuplet 3/2 8 { f!16([\pocoFE d' f,)] e( c' e,) }
		d8 r r
		r \tuplet 3/2 8 { f16([ d' f,)] e( c' e,) } %80
		d8 r r
		R4.*9 %90
		r8 \tuplet 3/2 8 { f16([\f d' f,)] e( c' e,) }
		d8 f[-! e-!]
		d \tuplet 3/2 8 { f16([ d' f,)] e( c' e,) }
		d8 f[-! e-!]
		e d r %95
		c a'4~
		a8 g c
		\tuplet 3/2 8 { a16([ g f)] } e8 d
		d4( c8)
		c a'4~ %100
		a8 g c
		\tuplet 3/2 8 { a16([ g f)] } e8 d
		c4\fermata r8
		R4.*16 %119
		r8 \tuplet 3/2 8 { d!16([\f h' d,)] c( a' c,) } %120
		h8 r r
		R4.*2
		r8 \tuplet 3/2 8 { d16([\f h' d,)] c( a' c,) }
		h8 r r %125
		R4.*13 %138
		r4 \markDaCapo \bar "||" %139 finis
	}
}

MundDerFlautoI = {
	\relative c' {
		\clef treble
		\twofourtime \key d \major \time 2/4 \tempoMundDer
		a''4.\fE g8
		g fis h[ h]
		h a16. g32 fis8 e
		e16. g32 fis8 d' d
		d cis16. h32 a8 g %5
		\tuplet 3/2 8 { fis16[ e d] } d8 r4
		e32 fis g16 a, cis e g h g
		fis32 g a16 d,, fis a d fis d
		e32 fis g16 a, cis e g h g
		fis32 g a16 d,, fis a c e c %10
		h8 \slurDashed h'16( a) a( g) g( fis) \slurSolid
		fis8\trillE e r4
		d8 d'32( cis) e( d) d4~
		d8 d32( cis) e( d) d4~
		d8 h a g %15
		fis d'32( cis) e( d) d4~
		d8 d32( cis) e( d) d4~
		d16. a32 \tuplet 3/2 8 { h16[ g e] } d8 e\trillE
		d4 r \bar "S-S"
		R2*11 %30
		r8 e32(\p dis) fis( e) e4
		R2
		cis32\fE d e16 a, cis e a cis a
		h32[\p cis d16] e,8-! r4
		cis32\fE d e16 a, cis e a cis a %35
		h32[\pE cis d16] e,8-! r4
		R2*5 %41
		e4.\fE d8
		d cis fis[ fis]
		fis e16. d32 cis8 h
		h16. d32 cis8 a' a %45
		a gis16. fis32 e8 d
		cis a'32( gis) h( a) a4~
		a8 a32( gis) h( a) a4~
		a16. e32 \tuplet 3/2 8 { fis16[ d h] } a8 h\trill
		a4 r %50
		R2*7 %57
		r8 a'32(\pE gis) h( a) a8 cis,
		r d32( c?) e( d) d4
		R2 %60
		r8 e32( d?) fis( e) e4
		R2
		r8 fis32( e) g( fis) fis4
		R2*13 %76
		r8 d32(\pocoFE cis) e( d) d4~
		d8 d32( cis) e( d) d4
		R2
		r8 d32(\pocoFE cis) e( d) d4~ %80
		d8 d32( cis) e( d) d4~
		d8 d32( cis) e( d) d4
		R2*3 %85
		e32\f fis g16 a, cis e g h g
		fis32 g a16 d,, fis a d fis d
		e32 fis g16 a, cis e g h g
		fis32 g a16 d,, fis a c e c
		h h' \slurDashed h( a) a( g) g( fis) \slurSolid %90
		fis8\trillE e r4
		d8 d'32( cis) e( d) d4~
		d8 d32( cis) e( d) d4~
		d8 h a g
		fis8 d'32( cis) e( d) d4~ %95
		d8 d32( cis) e( d) d4~
		d16. a32 \tuplet 3/2 8 { h16[ g e] } d8 e\trillE
		d4\fermata r
		R2*21 %119
		d8\f d'32( cis) e( d) d4~ %120
		d8 d32( cis) e( d) d4~
		d8 h a g
		fis8 d'32( cis) e( d) d4~
		d8 d32( cis) e( d) d4~
		d16. a32 \tuplet 3/2 8 { h16[ g e] } d8 e\trillE %125
		d4 r \bar "S-S" %126 finis
	}
}