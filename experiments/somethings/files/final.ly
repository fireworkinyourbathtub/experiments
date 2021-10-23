\version "2.20.0"

upperMatching = \relative c'' {
  \clef treble
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Lento" 4 = 50

  \partial 2 bes8\( f ees des | c4\) \mf r e\( d' | ees, d\)

  bes''8\( f ees des | c4 d es8 f ges aes | \time 3/4 d4 \p a fis\) |
  \time 5/8
  \key g \major
  \tempo "Moderato" 8 = 225


  r4 \mp r8
  \change Staff = lowerMatching
  r4
  \change Staff = upperMatching |

  \repeat unfold 5 {
    r4 r8
    \change Staff = lowerMatching
    r4
    \change Staff = upperMatching |
  }

  \time 7/8
  R8*7 |

  \time 5/8

  b4 r8
  \change Staff = lowerMatching
  r4
  \change Staff = upperMatching |

  d4 r8
  \change Staff = lowerMatching
  r4
  \change Staff = upperMatching |

  g,8 c r
  \change Staff = lowerMatching
  r4
  \change Staff = upperMatching |

  d,8 <f a> r
  \change Staff = lowerMatching
  r4
  \change Staff = upperMatching |

  c8 a'8 r
  \change Staff = lowerMatching
  r4
  \change Staff = upperMatching |

  c,8 g' r
  \change Staff = lowerMatching
  r4
  \change Staff = upperMatching |

  c,8 f r
  \change Staff = lowerMatching
  r4
  \change Staff = upperMatching |

  ais,8 dis r
  \change Staff = lowerMatching
  r4
  \change Staff = upperMatching |

  \time 5/4
  b8 dis r d8~ 4 cis,4 d8 g|

  \time 5/8

  b'4 \mf r8
  \change Staff = lowerMatching
  r4
  \change Staff = upperMatching |

  d4 r8
  \change Staff = lowerMatching
  r4
  \change Staff = upperMatching |

  g,8 c r
  \change Staff = lowerMatching
  r4
  \change Staff = upperMatching |

  g8 bes r
  \change Staff = lowerMatching
  r8 ees,,,
  \change Staff = upperMatching |

  \time 6/8
  r4 <bes' f'>8->\( <d fis>\) r4 |
  r4 <aes ees'>8->\( <c e>\) r4 |
  r4 <fis, cis'>8->\( <bes d>\) r4 |
  \time 7/8
  r4 <e, b'>8\( <aes c>\) r8 r4 |

  \time 5/8
  \key c \major

  r8 \mf c'2 |

  <<
    \new Voice{\voiceOne e8[ c]}
    \new Voice{\voiceTwo <g a>4}
  >>
  \oneVoice
  r8 g4 |
  g4.

  c'4 |

  <<
    \new Voice{\voiceOne e8[ c]}
    \new Voice{\voiceTwo <g a>4}
  >>
  \oneVoice
  r8 g4 |
  r8 g4 r8 f |
  e \> d r c b |
  c b r c d |
  c r b a g |
  <<
    \new Voice{
      \voiceOne
      s4 c'8 s e |
      s c g s g |
      s4 c,8 r e |
    }
    \new Voice{
      \voiceTwo
      r g c e, e' |
      r c g c, g' |
      r g c, e, e' |
    }
  >>
  \oneVoice
  r c, r g g |
  \clef bass
  \time 7/8
  r4 \p g, c e8 | g4 c e g8 | \clef treble c4 e g c8 |
  \time 3/4
  R2.
  \time 4/4
  \ottava #1
  <d a d>4\arpeggio
  r4 r2
  \bar "|."
}

lowerMatching = \relative c {
  \set Staff.pedalSustainStyle = #'bracket

  \clef bass
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Lento" 4 = 50

  r2 \sustainOn |
  <gis dis' a'>4 e8\( d' <gis,? dis' b'>4\) <d' a' c> | <gis, a' d fis> r4 r2 |
  \clef treble
  <gis' dis' a'>4 f8\( e' <gis, dis' ais'>4\) <gis a' d fis> |
  \time 3/4 <d' a' c> r2 |

  \time 5/8
  \key g \major
  \clef bass
  \tempo "Moderato" 8 = 225


  g,,8 \sustainOff \sustainOn -\shape #'((0 . -2) (0 . 0) (0 . -8) (0 . -5)) \( d' b'
  \change Staff = upperMatching
  <f' fis b d>4\)
  \change Staff = lowerMatching |

  c,8 \sustainOff \sustainOn -\shape #'((0 . -1) (0 . 1) (0 . 0) (0 . 0)) \( g' <b e>
  \change Staff = upperMatching
  <a' fis'>4\)
  \change Staff = lowerMatching |

  f,,8 \sustainOff \sustainOn -\shape #'((0 . 0) (0 . 0) (0 . -2) (0 . 0)) \( c' a'
  \change Staff = upperMatching
  <e' f g d'>4\)
  \change Staff = lowerMatching |

  bes,8 \sustainOff \sustainOn ^\markup { \italic "simile" } f' d'
  \change Staff = upperMatching
  <c fis g a>4
  \change Staff = lowerMatching |

  ees,,8 \sustainOff \sustainOn bes'' d
  \change Staff = upperMatching
  <g c d f g>4
  \change Staff = lowerMatching |

  aes,,8 \sustainOff \sustainOn ees' c'
  \change Staff = upperMatching
  <ees bes' d>4
  \change Staff = lowerMatching |

  \time 7/8

  des,,8 \sustainOff \sustainOn \([ aes' f']\) fis[ \sustainOff d] a[ d,] |

  \time 5/8

  g8 \sustainOn -\shape #'((0 . -4) (0 . -2) (0 . -8) (0 . -5)) \( d' b'
  \change Staff = upperMatching
  <f' fis b d>4\)
  \change Staff = lowerMatching |

  c,8 \sustainOff \sustainOn -\shape #'((0 . -4) (0 . -2) (0 . 0) (0 . 0)) \( g' <b e>
  \change Staff = upperMatching
  <a' fis'>4\)
  \change Staff = lowerMatching |

  f,,8\sustainOff \sustainOn -\shape #'((0 . 0) (0 . 0) (0 . -2) (0 . 2)) \( c' a'
  \change Staff = upperMatching
  <e' f g d'>4\)
  \change Staff = lowerMatching |

  bes,8 \sustainOff \sustainOn ^\markup { \italic "sempre legato" } f' d'
  \change Staff = upperMatching
  <c fis g a>4
  \change Staff = lowerMatching |

  ees,,8 \sustainOff \sustainOn bes'' d
  \change Staff = upperMatching
  <g c d f g>4
  \change Staff = lowerMatching |

  aes,,8 \sustainOff \sustainOn ees' c'
  \change Staff = upperMatching
  <ees bes' d>4
  \change Staff = lowerMatching |

  des,,8 \sustainOff \sustainOn aes' f'
  \change Staff = upperMatching
  <ges' aes c ees>4
  \change Staff = lowerMatching |

  fis,,8 \sustainOff \sustainOn cis' ais'
  \change Staff = upperMatching
  <fis' ais? dis? f>4
  \change Staff = lowerMatching |

  \time 5/4
  <b,,, fis'>8 \sustainOff \sustainOn dis' b'
  <b,, fis'>8~ 4
  <<
    \new Voice {\voiceOne s4 <a'' c>}
    \new Voice {\voiceTwo <d, g>2}
  >>
  \oneVoice |

  \time 5/8

  g,8 \sustainOff \sustainOn d' b'
  \change Staff = upperMatching
  <f' fis b d>4
  \change Staff = lowerMatching |

  c,8 \sustainOff \sustainOn g' <b e>
  \change Staff = upperMatching
  <a' fis'>4
  \change Staff = lowerMatching |

  f,,8 \sustainOff \sustainOn c' a'
  \change Staff = upperMatching
  <e' f g d'>4
  \change Staff = lowerMatching |

  bes,8 \sustainOff \sustainOn ees bes'
  \change Staff = upperMatching
  <bes' bes'>4
  \change Staff = lowerMatching |

  \time 6/8
  ees,,,8 \sustainOff \sustainOn des' g fis? \sustainOff \sustainOn d fis |
  des, \sustainOff \sustainOn ces' f e \sustainOff \sustainOn c e |
  b, \sustainOff \sustainOn fis' dis' d \sustainOff \sustainOn bes d |
  \time 7/8
  a,[ \sustainOff \sustainOn e' cis'] c[ \sustainOff \sustainOn aes] c4 |

  \time 5/8
  \key c \major

  \repeat unfold 2 {
    <c, c'>8 \sustainOff \sustainOn g' e' <bes' b e g>4 |
    f,8 \sustainOff \sustainOn c' <e a e'> <a b d>4 |
  }
  <c,, c'>8 \sustainOff \sustainOn g' e' <bes' b e g>4 |
  \repeat unfold 2 {
    f,8 \sustainOff \sustainOn r <e' a e'> <d' b'>4 |
    <c,, c'>8 \sustainOff \sustainOn r e' <bes' b e g>4 |
  }
  f,8 \sustainOff \sustainOn r <e' a e'> <d' b'>4 |
  <c,, c'>8 \sustainOff \sustainOn r e' r <bes' b e g> |
  f,8 \sustainOff \sustainOn r <e' a e'> r <d' b'> |

  \time 7/8
  c,,4-> \sustainOff \sustainOn c f a8 | c4 f a c8 | c,,4 \clef treble a''' c f8 |
  \time 3/4
  R2.
  \time 4/4
  \ottava #1
  <ges bes des ges>4\arpeggio \sustainOff
  r4 r2
  \bar "|."
}

upperWeird = \fixed c' {
  \clef treble
  \key c \major
  \numericTimeSignature
  \time 9/4

  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = 5,4
  \tempo "Andante" 4 = 100
  R4*9 \p |
  \clef bass c,,4 R4*8 |
  \clef treble
  r8 e e'4~ 8 d' c' d' bes g f g \tuplet 3/2 {e d c~} 4 b8 dis' |
  g' fis' e' f' d' cis' b4 a gis8 fis \tuplet 3/2 {b4 gis e} gis8 f |
  \change Staff = lowerWeird
  \voiceTwo a,,,4-\markup{\italic "m.d."}
  \change Staff = upperWeird
  \oneVoice
  r8 c bes4 f8 des' g' r r a gis d' f' cis' b' aes' |

  \relative c' {
    f' e c' a aes' r r4 r8
    \ottava #1
    fis b c aes?
    \ottava #0
    d,, a ees ges des |
    bes aes r
    \clef bass
    g, g  a \tuplet 3/2 {f'[ \< b
    \clef treble
    aes']} \tuplet 5/4 {b16[ f' ges aes bes]}
    <f cis' f>4 \f -> <ees b'? ees> -> <d bes' d> -> <cis a' cis> -> |
    \time 6/4
    \tuplet 3/2 {b'4 \p fis b,}
    <c aes' c> \f -> <bes ges' bes> -> <a f' a> -> <aes e' aes> ->  |
    \time 4/4
    \tuplet 3/2 {<g ees' g>8 <f d' f> <ees c' ees>}
    <b' a'>16 <gis f'> <fis dis'> d
    \tuplet 5/4 {a' c d b g}
    \tuplet 6/4 {e a d ees, gis b}
    \tuplet 5/4 {ais cis dis c g}
    \tuplet 6/4 {f d' f e, a d}
    \tuplet 6/4 {gis, c fis a, d g}
    \tuplet 7/4 {a e f c d a b} |


    \partial 64*102
    \tiny
    \clef bass
    \change Staff = lowerWeird
    \override Stem.direction = #up
    fis,,64[ \sustainOn c' fis
    \change Staff = upperWeird
    \override Stem.direction = #down
    a, cis e a]

    \bar ""

    \change Staff = lowerWeird
    \override Stem.direction = #up
    fis[ c' fis
    \change Staff = upperWeird
    \override Stem.direction = #down
    a, cis e a]

    \bar ""

    \change Staff = lowerWeird
    \clef treble
    \override Stem.direction = #up
    fis[ c' fis
    \change Staff = upperWeird
    \clef treble
    \override Stem.direction = #down
    a, cis e a]

    \bar ""

    \repeat tremolo 8 {
      \change Staff = lowerWeird
      \once \override Stem.direction = #up
      <fis c' fis>
      \change Staff = upperWeird
      \once \override Stem.direction = #down
      <a cis e a>
    }

    \bar ""

    \repeat tremolo 8 {
      \change Staff = lowerWeird
      \once \override Stem.direction = #up
      <fis, c' fis>
      \change Staff = upperWeird
      \once \override Stem.direction = #down
      <a cis? e a>
    }

    \bar ""

    \repeat unfold 7 {
      \change Staff = lowerWeird
      \override Stem.direction = #up
      fis,[ c' fis
      \change Staff = upperWeird
      \override Stem.direction = #down
      a cis e a]
      \bar ""
    }

    \revert Stem.direction


    \bar "|"
    \normalsize
    \time 7/8
    \change Staff = lowerWeird
    \sustainOff
    \change Staff = upperWeird
    \tempo \markup {\italic Faster} 4=178
    r8
    <gis, d' gis>[ <e bes' e>]
    <cis g' cis>[ <a ees' a>]
    \clef bass
    <fis c' fis>[ <ees a ees'>]

    \time 2/4
    <a ees' a>4
    <d, aes' d> |
    }

  \time 4/4
  \clef treble
  \ottava #1
  \break
  \repeat tremolo 16 {
      <g'' gis'' b''>32-\markup {\italic "m.s."}
      <c''' dis''' e''' fis'''>
  }

  \repeat tremolo 16 {
    <fis'' g'' a''>32-\markup {\italic "m.s."}
    <c''' dis''' e''' fis'''>
  } |

  \repeat tremolo 32 {
    <e'' f'' aes''>32 -\markup {\italic "m.s."}
    <a'' b'' c''' des'''>
  } |
  \break
  \ottava #0
  \key b \major
  \tempo "Vivace" 4=200
  \dynamicNeutral
  R1 \ppp \<
  \partial 16*6
  s16*6
  \bar ""
  \clef treble
  \tuplet 5/4 {
    \override NoteHead.font-size = #-4
    fis'16 \fff dis' b gis fis
    \revert NoteHead.font-size
  }
  \normalsize
  \repeat unfold 7 {
    \tuplet 5/4 {
      fis'16 dis' b gis fis
    }
  } |
  \time 2/4
  \repeat unfold 2 {
    \tuplet 6/4 {
      a' fis' e' cis' a
      fis
    }
  } |

  \tuplet 5/4 {
    b16 a fis dis b,
  }
  \repeat unfold 7 {
    \tuplet 5/4 {
      fis dis b, gis, fis,
    }
  } |
  \time 2/4
  \tuplet 6/4 {
    a fis e cis a,
    fis,
  }
  a fis cis
  fis,|
  \clef bass
  \time 6/8
  b,16 gis, fis, dis,b,, a,, |
  fis, dis, b,, a,, fis,, dis,, |
  b,, gis,, e,, cis,, b,,, gis,,, |
  a,, fis,, e,, cis,, a,,, fis,,, |
  \time 4/4
  b, g, fis, e, dis cis b, g, a, g, fis, e, dis, c, b,, a,, |
  \time 3/8
  <b,, fis,>8
  <g,, b,,>
  <cis,, fis,,>
  \time 2/4
  <b,,>4
  \clef treble
  <b fis' b'>4 |
  \time 4/4
  \grace {
    <b fis' b'>8
  }
  \ottava #1
  <b'' fis''' b'''>1 -> \fermata \bar "|."

}
lowerWeird = \fixed c {
  \set Staff.pedalSustainStyle = #'bracket
  \clef bass
  \key c \major
  \numericTimeSignature
  \time 9/4

  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = 5,4
  \tempo "Andante" 4 = 100
  c2 \sustainOn c' ais4 gis fis2 g8 f |
  e2 \sustainOff \sustainOn e'2 c'4 bes d'8 bes g e ees d |
  c4 \sustainOff \sustainOn ges,,2 c4 bes,8 g, f,4 \tuplet 3/2 {c8 bes, aes,~} 4 b, \sustainOff \sustainOn|
  <<
    \new Voice {\voiceOne e8[ d c des]}
    \new Voice {\voiceTwo c2}
  >>
  \oneVoice
  b,8 bes, b,4 r <b, ees g bes> <a, e fis> <gis, e> gis |
  c4 \sustainOff \sustainOn ges,,2-\markup{\italic "m.s."} <ges, bes, d? g?> \grace {<a,,? a,?>8} <aes, c aes>2 r |

  <a, cis a>4 \sustainOff \sustainOn <bes, b> \sustainOff \sustainOn <cis? f'> \sustainOff \sustainOn \tuplet 3/2 {e8 f b,} <e,, e,>4 \sustainOff \sustainOn r2 r4 g,, |
  f,, \sustainOff \sustainOn g,2 f, <g, d g> -> \sustainOff \sustainOn <f, c f> -> \sustainOff \sustainOn |

  \time 6/4
  r2 \sustainOff <d, a, d> -> \sustainOn <e, b, e> -> \sustainOff \sustainOn|
  \time 4/4
  \relative c {
    <f, c' f> -> \sustainOff \sustainOn
    <fis cis' fis>8 -> \sustainOff \sustainOn
    <g d' g> -> \sustainOff \sustainOn
    <gis dis' gis> -> \sustainOff \sustainOn
    <a e' a> -> \sustainOff \sustainOn |
    <ais eis' ais> -> \sustainOff \sustainOn
    <b fis' b> -> \sustainOff \sustainOn
    <c g' c> -> \sustainOff \sustainOn
    <cis gis' cis> -> \sustainOff \sustainOn
    <d a' d> -> \sustainOff \sustainOn
    <dis ais' dis> -> \sustainOff \sustainOn
    r4 \sustainOff|
  }

  \partial 64*102
  s64*102
  \time 7/8
  \tempo \markup {\italic Faster} 4=178
  r8
  \clef treble
  \relative c' {
    <b e bes'>[ \sustainOn <g c ges'>]
    \clef bass
    <e a dis>[ <c f b>] <a d gis>[ <fis b f'>] |
    \time 2/4
    <c f b>4
    <f, bes e>
  }


  \time 4/4
  \clef treble
  s1*4^\markup {\italic decresc.}
  \key b \major
  \clef bass
  fis,,1 \sustainOff \sustainOn \startTrillSpan|
  \partial 16*6
  \teeny
  fis,,16[ \stopTrillSpan cis,
  \once \override Stem.length = #20
  e,
  \change Staff = upperWeird
  \clef bass
  \override Stem.direction = #down
  fis, b, fis]
  \revert Stem.direction
  \change Staff = lowerWeird
  \normalsize
  \bar ""
  \newSpacingSection
  <fis b cis' dis'>4 \sustainOff \sustainOn q r8 q4. |
  <fis b fis'>4 r <b, fis> r8 <b, fis> |
  \time 2/4
  <a, e>4 \sustainOff \sustainOn r |
  \time 4/4
  <fis, b, fis>4 \sustainOff \sustainOn <gis, b, dis> r8 <fis, gis, dis>4. |
  <fis, b, fis>4 r <b,, fis,> <b,, fis,> |
  \time 2/4
  <a,, e,>4 \sustainOff \sustainOn <fis,, cis,> |
  \time 6/8
  <b, fis>4. \sustainOff \sustainOn <fis, dis> \sustainOff \sustainOn |
  <e, b,> \sustainOff \sustainOn <cis, a,> \sustainOff \sustainOn |
  \time 4/4
  g,,4 b, <b,, g,> \sustainOff \sustainOn fis,8 e, |
  \time 3/8
  fis, \sustainOff b,, fis,, |
  \time 2/4
  b,,4 \sustainOn
  <b, fis dis'> |
  \time 4/4
  \grace {
    <b, fis b>8
  }
  <a,, e,>1 -> \fermata \bar "|."
}

upperInspired = \relative c' {
  \clef treble
  \numericTimeSignature
  \time 9/8
  \tempo "Allegro" 4.=120

  \key d \major
  a'8 \mp cis gis'
  \repeat unfold 5 {
    a, cis gis'
  }
  \time 6/8
  \repeat unfold 2 {
    a, cis gis'
  }

  gis, cis gis'
  a, cis gis' |

  \time 9/8
  \repeat unfold 7 {
    a, cis gis'
  }

  a, \> c gis'
  a, cis a |
  \time 5/8
  cis, eis b'
  b, fis' |
  \time 9/8
  b, \p cis gis'
  \repeat unfold 11 {
    b, cis gis'
  }

  \time 11/8
  <d g,>4 \< <d fis,>8 <b fis'>4. <bes fis'> \sf \> <c e>4
  \time 6/8
  \key f \major
  <c f>4. \mp
  <c e>4. |
  <c a'>4
  <c g'>
  <c f> |
  <c f>4.
  <c e>4. |
  <e c'>4
  <e b'>
  <e a> |
  \key des \major
  <des f>4.
  <des ees>4. |
  \time 4/4
  <c a'>4
  <c aes'>
  <c g'>
  <c f> |
  \time 6/8
  <des f>4.
  <des ees> |
  <c ees>4
  <c des>
  <aes c> |
  \time 4/4
  <des, bes'>2 \<
  <ees c'>2 |
  <<
    {
      des'4 f fis a|
      d, fis g bes8 d,|
    }
    \\
    {
      f,2 a |
      fis bes|
    }
  >>

  \key f \major
  \tuplet 3/2 {
    a'4 \mf c d,
  }
  \tuplet 3/2 {
    bes' bes bes
  }
  \time 3/4
  d8 c bes a g f |
  \time 5/8
  e4 g8 f a |
  \time 4/4
  \tuplet 3/2 {
    c4 c c
  }
  \tuplet 3/2 {
    c bes a |
  }
  \time 3/4
  <f a>2
  <e g>4
  \time 4/4
  \tuplet 3/2 {
    c'4 c c
  }
  \tuplet 3/2 {
    c bes a |
  }

  <f a>8 \p a

  \repeat unfold 20 {
    f a
  }
  \repeat unfold 11 {
    ees g
  }
  \repeat unfold 2 {
    c, ees
  }
  \repeat unfold 2 {
    ees g
  }
  \repeat unfold 5 {
    f aes
  }
  e aes
  \repeat unfold 4 {
    e g
  }
  \repeat unfold 6 {
    des f
  }
  \once \override TextSpanner.bound-details.left.text = \markup {\italic "rit."}
  \once \override TextSpanner.bound-details.right.text = \markup {\italic "a tempo non rubato"}
  des \startTextSpan \> f
  \repeat unfold 4 {
    des f
  }
  des4 \p |
  \time 4/4
  <fis, a c e>1 \stopTextSpan \sff \> ~ 1 |
  R1*3 \pp |

  \time 9/8
  \key d \major
  \partial 16*18
  s16*18
  a'8 \mf cis gis'
  \repeat unfold 2 {
    a,8 cis gis'
  }
  \time 6/8
  \repeat unfold 2 {
    a,8 cis gis'
  }

  \time 9/8
  \repeat unfold 3 {
    a,8 cis gis'
  }
  \time 6/8
  \repeat unfold 2 {
    a,8 cis gis'
  }

  \time 9/8
  \repeat unfold 3 {
    a,8 cis gis'
  }
  \time 6/8
  \repeat unfold 2 {
    a,8 cis gis'
  }

  \time 9/8
  \repeat unfold 3 {
    a,8 cis gis'
  }
  \time 3/8
  a,8 cis gis'
  \time 6/8
  a,8 cis gis'
  a,8 c gis'
  \time 5/8
  cis,, \> eis b'
  b, fis' \! |
  \time 9/8
  \repeat unfold 3 {
    b, cis gis'
  }
  \once \override TextSpanner.bound-details.left.text = \markup {\italic "rall."}
  b, \startTextSpan c gis'
  b, c g'
  b, c f |
  \key c \major
  b, c e
  b d e
  a, c e |
  \time 4/4
  g,[ c e]
  f,[ c' e]
  d c |
  \time 5/4
  <g c e>2. \pp \stopTextSpan
  <aes des f>2 -\markup {\dynamic sffz}
  \time 4/4
  <g c e>1 \pp |
  R1 |
  r2 \ppp <e a e'> ~ 1
  \bar "|."
}

lowerInspired = \relative c {
  \set Staff.pedalSustainStyle = #'bracket
  \clef treble
  \numericTimeSignature
  \time 9/8
  \tempo "Allegro" 4.=120

  \key d \major
  \sustainOn
  \repeat unfold 2 {
    d'8 \sustainOff \sustainOn a' r b r b ~4 r8 |
  }
  \time 6/8
  \repeat unfold 2 {
    r8 \sustainOff \sustainOn b'4 r8 gis r8
  }
  \time 9/8
  d, \sustainOff \sustainOn a' r b r b ~4 r8 |
  \clef bass
  cis,,, \sustainOff \sustainOn r4
  \clef treble
  dis'''8 r b ~4. |
  d,8 \sustainOff \sustainOn a' r f d r cis fis r|
  \time 5/8
  e \sustainOff \sustainOn a, r
  \clef bass
  e \sustainOff \sustainOn r |
  \time 9/8
  d \sustainOff \sustainOn a' r a r b ~4 r8 |
  a,8 \sustainOff \sustainOn e' r e r gis ~ 4 r8 |
  g,8 \sustainOff \sustainOn d' r d r fis ~ 4
  \clef treble fis''8 \(|
  e d cis a a gis e a, \) r |
  \time 11/8
  \clef bass
  <d, b'>4 \sustainOff <d a'>8 <fis d'>4. <f des'> <c g'>4 |
  \time 6/8
  \key f \major
  \repeat unfold 2 {
      <d a'>4. <c g'> |
      <a e'>4 r2 |
  }
  \key des \major
  \repeat unfold 2 {
    <des aes'> 4. <c aes'>
  }
  \alternative {
    {
      \time 4/4
      <f, c'>4 r4 r2 |
    }
    {
      aes,2.
    }
  }
  \time 4/4
  ges2 c |
  des fis |
  d g |
  \key f \major
  <bes fis'> g' |
  g2 c,,4~
  \time 5/8
  4 r4 r8 |
  \time 4/4
  R1
  \time 3/4
  c4 c' c |
  \time 4/4
  R1 |
  f,4 \sustainOn r4 r2 |
  \clef treble
  c''''4 f a,2 |
  a4 c f,2 |
  \time 2/4
  \clef bass
  f,,,4 r |
  \time 4/4
  \clef treble
  c''''4 f a,2 |
  a4 c ees,2 |
  \clef bass
  ees,,,4 \sustainOff \sustainOn r
  \clef treble
  g'''4 bes |
  ees,2 ees4 g |
  c, ees aes, c |
  f, aes des, r |
  \clef bass
  f, aes c, e |
  g, b e, g |
  \time 2/4
  f aes |
  \time 4/4
  des, \sustainOff \sustainOn
  \clef treble
  f'''8 aes d, a \sfz r4
  \clef bass
  \time 3/4
  des,,,4 \sustainOff \sustainOn
  \clef treble
  f'''8 aes d, a \sfz |
  des4 \sustainOff \sustainOn aes \sustainOff \sustainOn f \sustainOff \sustainOn |
  \clef bass
  \time 4/4
  <des, des,>1 \sustainOff \sustainOn | <c c,> \sustainOff \sustainOn | <b b,> \sustainOff \sustainOn |
  R1*2 \sustainOff \break
  \key d \major
  \time 9/8
  \partial 16*18
  \teeny
  \override Stem.direction = #up
  c,16[ \sustainOn
  e g
  \change Staff = upperInspired
  \override Stem.direction = #down
  \clef bass
  cis, eis gis
  \change Staff = lowerInspired
  \override Stem.direction = #up
  d fis ais
  \change Staff = upperInspired
  \override Stem.direction = #down
  c16 e g
  \change Staff = lowerInspired
  \override Stem.direction = #up
  \tiny
  cis, eis gis
  \change Staff = upperInspired
  \override Stem.direction = #down
  \small
  d fis ais] |
  \clef treble
  \newSpacingSection
  \change Staff = lowerInspired
  \revert Stem.direction
  \bar ""
  \normalsize
  \clef treble
  d8 a' r b r b ~4 r8 |
  \time 6/8
  r b'4 r8 gis r |
  \time 9/8
  d, \sustainOff \sustainOn a' r b r b ~4 r8 |
  \time 6/8
  r b'4 r8 gis r |
  \time 9/8
  d, \sustainOff \sustainOn a' r b r b ~4 r8 |
  \time 6/8
  r b'4 r8 gis r |
  \time 9/8
  d, \sustainOff \sustainOn a' r b r b ~4 r8 |
  \time 3/8
  r b'4 |
  \time 6/8
  d,,8 \sustainOff \sustainOn a' r f \sustainOff \sustainOn d r |
  \time 5/8
  e \sustainOff \sustainOn a, r
  \clef bass
  e \sustainOff \sustainOn r
  \time 9/8
  d8 \sustainOff \sustainOn a' r a r b~ 4 r8 |
  b,4 g'8~8 e c~ 8 a4 |
  \key c \major
  r8 \sustainOff \sustainOn b4 c d8 e f e |
  g,4 f~ 4 d |
  \time 5/4
  <c g'>2. \sustainOff \sustainOn
  <des aes'>2 \sustainOff \sustainOn |
  \time 4/4
  r2 \sustainOff \sustainOn <c g'> |
  r4 e r2 |
  \ottava #-1
  <a, a,>2 \sustainOff \sustainOn
  \ottava #0
  <a' e'> ~ 1
  \bar "|."
}

upperStolen = \relative c' {
  \tempo "Adagio" 4=60
  \clef treble
  \key c \major
  \time 5/4


  r8 b'' bes a~ 8 g f e ees d |
  c4 a
  <<
    {b2}
    \\
    {r8 g a b}
  >>
  \oneVoice
  e4 |
  f c d8 f \tuplet 3/2 {c' bes aes} ees aes |
  \tuplet 3/2 {g8 fis e} d e
  \tuplet 5/4 {c16 b a g fis} b'4 a |
  g fis e8 d c4 b |
  b a \tuplet 3/2 {g8 b' a} g fis e c | c' a gis b a f e d e c |
  b8 g~ 8 g' d fis~ 8 ees des4 |
  r8
  \change Staff = lowerStolen
  \voiceOne
  a,, e' bes'
  \change Staff = upperStolen
  d c b r aes'' ges |
  ges4 f ees des bes |
  \change Staff = lowerStolen
  \voiceOne
  b,,8 fis' b
  \change Staff = upperStolen
  d cis d gis cis fis4 |
  \time 3/4
  r8 g, g' e d cis |
  <fis, b d>2. \fermata |
  <fis b cis gis'> \fermata |
  <fis a d g> \fermata |
  \bar "|."
}

lowerStolen = \relative c {
  \set Staff.pedalSustainStyle = #'bracket
  \tempo "Adagio" 4=60
  \clef bass
  \key c \major
  \time 5/4

  <<
    \new Voice {
      \voiceTwo
      c,1 \sustainOn ~ 4 |
      e1 \sustainOff \sustainOn ~ 4 |
      c1 \sustainOff \sustainOn ~ 4 |
      e1 \sustainOff \sustainOn ~ 4 |
      g1 \sustainOff \sustainOn ~ 4 |
      e1 \sustainOff \sustainOn ~ 4 |
      c1 \sustainOff \sustainOn ~ 4 |
      g1 \sustainOff \sustainOn ~ 4 |
      a1 \sustainOff \sustainOn ~ 4 |
      c1 \sustainOff \sustainOn ~ 4 |
      b1 \sustainOff \sustainOn ~ 4 |
      \time 3/4
      d2. \sustainOff \sustainOn |
    }
    \new Voice {
      \voiceThree
      r2 r8 g' \tuplet 3/2 4 {f8 e d ees bes g} |
      r4 a8 b c ees aes r \tuplet 3/2 {ees' d c} |
      r8 a, c e aes c ees aes aes,,4 |
      b4 fis' c g fis |
      e' d \tuplet 3/2 {b8 g e} c'4 b |
      c c cis cis dis |
      r e a,8 f e d b'4 |
      g2 aes des8 aes |
      r4 e d' c'8 cis fis e |
      r2 c r8 g |
      r4 g b e, d |
      \time 3/4
      d8 f e c bes a |
    }
  >>
  \oneVoice

  <c, g'>2.\fermata \sustainOff \sustainOn |
  <e b' fis'>\fermata \sustainOff \sustainOn |
  <g c g'>\fermata \sustainOff \sustainOn |

  \bar "|."
}

upperOriginal = \relative c' {
  \tempo "Allegro sempre non rubato" 4=180
  \clef treble
  \numericTimeSignature
  \key d \major
  \time 3/4


  a'8 \p b e, b' fis a
  \repeat unfold 2 {
    a b e, b' fis a
  }
  \repeat unfold 2{
    b cis, e b' fis b
  }
  cis b e b' fis, b
  cis b e b fis b
  \repeat unfold 2 {
    a b e, b' fis a
  }
  a b e b' fis, b
  \repeat unfold 2 {
    a b e, b' fis a
  }
  \repeat unfold 2 {
    b b e, b' fis a
  }
  b b e, b' g, b |
  b' b e, b' fis a |
  a b e, b' fis r |
  \time 4/4
  \absolute {\clef bass g,4}
  \clef treble
  b8 g b' fis d' r |
  \time 3/4
  r4
  \absolute {\clef bass g,4}
  \clef treble
  b4 | r b fis |
  \time 4/4
  cis
  \relative c {
    \clef bass
    g4 g8 a b cis |
    \time 5/4
    g4 a fis' e g, |
    \time 4/4
    fis g g8 a b cis |
    \time 5/4
    g4 a b' a fis' |
    \time 3/4
    a,,8 g a b' fis'4 |
  }
  \clef treble
  \time 4/4
  g8 a fis' e r a g, a |
  fis4 r4 r2 |
  R1
  \time 3/4
  \clef bass
  \relative c {
    \repeat unfold 10 {
      d8 fis g b
    }
    d, g |
    \time 4/4
    d r r b \clef treble d' g d g |
    \time 3/4
    \repeat unfold 10 {
      d fis g b
    }
    d, g
    \time 4/4
    d r r b d g b d |
    \time 3/4
    \repeat unfold 5 {
      a' d, g d r d |
    }
    \repeat unfold 2 {
      e' g, d' g, cis g |
    }
    a d, d' g, cis g |
    e' g, d' g, cis g |

    R4*6

  }

  \ottava #1
  g''8 a b cis b fis | g a b4 fis' | R4*3 |
  \ottava #0
  g,,8 a b cis b fis | g a b cis b fis |

  a, d, g d r d |
  a' d, g d r d' |
  \repeat unfold 2 {
    a b g d r d'
  }
  \repeat unfold 4 {
    a b e, d b' a |
  }
  \repeat unfold 3 {
    a b e, b' fis a
  }
  \time 5/8
  \repeat unfold 2 {
    a b e, b' fis
  }
  \repeat unfold 2 {
    b cis, e b' fis
  }
  cis' b e b' fis, |
  cis' b e b fis |
  \repeat unfold 3 {
    a b e, b' fis |
  }
  a b e, b' g, |
  a' b e, b' fis |
  a b e, b' r |
  \clef bass
  \time 7/8
  g,,[ a b cis] fis4 fis'8 |
  \clef treble
  fis4 b' fis, r8 |
  \time 5/8
  \clef bass
  g,,4  \clef treble b''8 g b' |
  R8*5 \fermata
  \bar "|."

}

lowerOriginal = \relative c' {
  \tempo "Allegro sempre non rubato" 4=180
  \clef treble
  \numericTimeSignature
  \key d \major
  \time 3/4
  \set Staff.pedalSustainStyle = #'bracket
  \sustainOn
  \repeat unfold 3 {
    d8 a' fis' g,, b fis'
  }
  \repeat unfold 2 {
    cis' a e' g,, b fis'
  }
  \repeat unfold 2 {
    d a' fis b b, fis'
  }
  \repeat unfold 2 {
    d8 a' fis' g,, b fis'
  }
  d a' fis b b, fis' |
  d a' fis g, b fis' |
  d a' d g b r |
  \repeat unfold 2 {
    d,, a' d b' fis' r |
  }
  fis fis, e' fis, d' r |
  d,, a' fis' e b, fis' |
  d a' fis' g,, b fis' |
  \time 4/4
  d a' fis' g,, b fis' b fis' |
  \time 3/4
  \repeat unfold 2 {
    d, a' fis' g,, b fis' |
  }
  \time 4/4
  d a' fis g, b fis' b fis' |
  \time 5/4
  d, a' fis <a, g> b fis' d a' fis <a, g> |
  \time 4/4
  <b a'> fis' <a, b> fis' <d' e> a q a|
  \time 5/4
  <b, a'> fis' <a, b> fis' <d' e> a q a fis'4 |
  \time 3/4
  q8 a, q a fis'4 |
  \time 4/4
  \repeat unfold 4 {
    <a b>8 d,
  } |
  <fis fis'>4
  r4 r4
  \clef bass
  g,,,8 a  | fis'4 r4 r2 \sustainOff |
  \time 3/4
  g,8 \sustainOn \( a b cis b fis | g a b4 fis' \) |
  g,8 \( a b cis d cis | a b cis4 fis \) |
  g,8 \( a b cis b fis | g a b4 fis' \) |
  g,8 \( a b cis e d \) |
  \time 4/4
  fis \( e \) a \(  g \) cis \( b \) \clef treble fis'' \( fis, \) |
  \time 3/4
  g,8 \( a b cis b fis | g a b4 fis' \) |
  g,8 \( a b cis d cis | a b cis4 fis \) |
  g,8 \( a b cis b fis | g a b4 fis' \) |
  g,8 \( a b cis e d \) |
  \time 4/4
  fis \( e \) a \(  g \) cis \( b \) b' \( a \) |
  \time 3/4
  \repeat unfold 5 {
    fis' cis e, e' b fis |
  }
  \ottava #1
  \repeat unfold 4 {
    a' e b b' a cis,
  }
  \ottava #0
  R4*18
  g,8 a b cis b fis |
  \repeat unfold 2 {
    fis' cis e, e' b fis |
  }
  \repeat unfold 2 {
    d cis' e, e' b fis
  }
  \repeat unfold 3 {
    d cis' e, e' b, fis'
  }
  d cis' fis e b, fis'
  \repeat unfold 3 {
    d a' fis' g,, b fis'
  }

  \time 5/8
  \repeat unfold 2 {
    d a' fis' g,, b
  }
  \repeat unfold 2 {
    cis' a e' g,, b
  }
  \repeat unfold 2 {
    d a' fis b b,
  }
  d a' d g r |
  d, a' d b' r |
  d,, a' d b' fis' |
  fis fis, e' fis, r |
  d, a' fis' e b | d, a' fis' g, b |
  \time 7/8
  d,[ a' fis' g,, b d g] | d[ a' fis' g,, b fis' g] |
  \time 5/8
  d a' fis' g,, b | R8*5 \fermata \bar "|."
}

%{ Naturile everything transposed %}
#(define (naturalize-pitch p)
   (let ((o (ly:pitch-octave p))
         (a (* 4 (ly:pitch-alteration p)))
         ;; alteration, a, in quarter tone steps,
         ;; for historical reasons
         (n (ly:pitch-notename p)))
     (cond
      ((and (> a 1) (or (eq? n 6) (eq? n 2)))
       (set! a (- a 2))
       (set! n (+ n 1)))
      ((and (< a -1) (or (eq? n 0) (eq? n 3)))
       (set! a (+ a 2))
       (set! n (- n 1))))
     (cond
      ((> a 2) (set! a (- a 4)) (set! n (+ n 1)))
      ((< a -2) (set! a (+ a 4)) (set! n (- n 1))))
     (if (< n 0) (begin (set! o (- o 1)) (set! n (+ n 7))))
     (if (> n 6) (begin (set! o (+ o 1)) (set! n (- n 7))))
     (ly:make-pitch o n (/ a 4))))

#(define (naturalize music)
   (let ((es (ly:music-property music 'elements))
         (e (ly:music-property music 'element))
         (p (ly:music-property music 'pitch)))
     (if (pair? es)
         (ly:music-set-property!
          music 'elements
          (map (lambda (x) (naturalize x)) es)))
     (if (ly:music? e)
         (ly:music-set-property!
          music 'element
          (naturalize e)))
     (if (ly:pitch? p)
         (begin
           (set! p (naturalize-pitch p))
           (ly:music-set-property! music 'pitch p)))
     music))

naturalizeMusic =
#(define-music-function (parser location m)
   (ly:music?)
   (naturalize m))

perpetualTheme = \relative c'' {
    a4 4 4 4 4 4 4 <a bes> q q q q q <a b!> q q q q <a c> q q q <a cis> q q <a d> q <a ees'>
}

dynPerpetual = {
    s4 \pp _\markup {\left-align \italic "con pedale"} s4*127 s4 -\markup {\italic "non pedale e molto staccato"} \tempo \markup {\italic "Faster"} 4=92
    s4 s \mf s1 s4-\markup {\center-align \italic "cresc."}
}

upperPerpetualEndingTen = \relative c {
    \repeat unfold 2 {
        <cis g' c>16[-> q q] <c f bes>[-> q]
    }
}

lowerPerpetualEndingTen = \relative c {
    \repeat unfold 2 {
        <gis, dis' gis>16[-> q q] <fis cis' fis>[-> q]
    }
}

upperPerpetualEndingSix = \relative c {
    <cis g' c>16[ -> q <c f bes>-> q <cis g' c>16-> q]
}
lowerPerpetualEndingSix = \relative c {
    <gis, dis' gis>16[ -> q <fis cis' fis>-> q <gis dis' gis>16-> q]
}

upperPerpetualEndingSeven = \relative c {
    <cis g' c>16[-> q q q] <c f bes>[-> q q]
}

lowerPerpetualEndingSeven = \relative c {
    <gis, dis' gis>16[-> q q q] <fis cis' fis>[-> q q]
}

upperPerpetual = \relative c'' {
    \tempo "Adagio ma non troppo" 4 = 70
    \key c \major
    \cadenzaOn
    \accidentalStyle Score.forget
    \omit Staff.TimeSignature

    <<
        {
            \voiceOne
            \perpetualTheme b1\rest
            \perpetualTheme b2\rest
            \oneVoice
            <a e'>4 <a ees'>1
            b2\rest
            <g d'>4 <g c>1 b2\rest
            \repeat unfold 4 {
                g8[ b a b]
            }
            \repeat unfold 3 {
                g8[ g' a, b]
            }
            \repeat unfold 2 {
                g8[ f a b]
            }
            \repeat unfold 3 {
                g8[ gis' a, b]
            }
            f[ g a b]
            f[ g a e']
            f,2

            b2\rest

            \repeat unfold 2 {
                \repeat unfold 3 {
                    r16 g[ b e]
                }
                \repeat unfold 2 {
                    <g, b e>8[ <e a d>16 q]
                }
            }

            \repeat unfold 2 {
                \repeat unfold 3 {
                    r16 d'[ g b]
                }
            } \alternative {
                {
                   \repeat unfold 2 {
                       <c, e a>8[ <bes d gis>16 q]
                   }
                }
                {<c d e f g a b c>4\finger "1 - 5"}
           }

            b2\rest

            \clef bass
            \upperPerpetualEndingTen
            \upperPerpetualEndingSix

            \naturalizeMusic \transpose c ees {\upperPerpetualEndingTen \upperPerpetualEndingSix}

            \naturalizeMusic \transpose c f \upperPerpetualEndingTen
            \naturalizeMusic \transpose c aes \upperPerpetualEndingSix
            \clef treble
            \naturalizeMusic \transpose c cis' \upperPerpetualEndingSix
            \naturalizeMusic \transpose c gis' \upperPerpetualEndingSix

            \naturalizeMusic \transpose c dis'' {\upperPerpetualEndingTen \repeat unfold 3 {\upperPerpetualEndingSeven}}
            <e ais dis>16-^
            b1\rest \fermata
            \bar "|."
        }
        \\
        {
            \repeat unfold 154 {
                \skip 4 \bar ""
            }
        }
    >>
}

lowerPerpetual = \relative c'' {
    \tempo "Adagio ma non troppo" 4 = 70
    \key c \major
    \cadenzaOn
    \accidentalStyle Score.forget
    \omit Staff.TimeSignature

    s4*32

    \change Staff = upperPerpetual
    \repeat unfold 7 {
        \voiceTwo
        s4 s g g
    }
    s2
    \change Staff = lowerPerpetual
    \oneVoice
    fis4 f1
    r2
    ees4 d1
    r2
    \repeat unfold 14 {
        fis16[ ais gis ais] cis[ ais gis ais]
    }
    fis2

    r2

    \repeat unfold 2 {
        \repeat unfold 3 {
            fis8[ gis]
        }
        <fis gis>2
    }
    \repeat unfold 2 {
        \repeat unfold 3 {
            cis'8[ dis]
        }
    } \alternative {
       {<cis dis>2}
       {<cis dis>4}
   }

    r2

    \clef bass
    \lowerPerpetualEndingTen
    \lowerPerpetualEndingSix

    \naturalizeMusic \transpose c ees {\lowerPerpetualEndingTen \lowerPerpetualEndingSix}

    \naturalizeMusic \transpose c f \lowerPerpetualEndingTen
    \naturalizeMusic \transpose c aes \lowerPerpetualEndingSix
    \naturalizeMusic \transpose c cis' \lowerPerpetualEndingSix
    \naturalizeMusic \transpose c gis' \lowerPerpetualEndingSix

    \naturalizeMusic \transpose c dis'' {\lowerPerpetualEndingTen \repeat unfold 3 {\lowerPerpetualEndingSeven}}
    <b, fis' b>16-^
    r1 \fermata
    \bar "|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "Some Things"
  composer = "Me"
  tagline = \markup {"I could have written \"" \italic "molto poco ritenuto" \upright "\""}
}

\markup { \vspace #1 }


\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upperMatching" \upperMatching
    \new Staff = "lowerMatching" \lowerMatching
  >>
  \layout { }
  \midi { }
  \header {
    title = "I"
    subtitle = "Matching Thing"
    composer = ##f
  }
}

\markup { \vspace #1 }

\score {
  \new PianoStaff
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upperWeird" \upperWeird
    \new Staff = "lowerWeird" \lowerWeird
  >>
  \layout { }
  \midi { }
  \header {
    title = "II"
    subtitle = "Weird Thing"
    composer = ##f
  }
}

\markup { \vspace #1 }

\score {
  \new PianoStaff
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upperInspired" \upperInspired
    \new Staff = "lowerInspired" \lowerInspired
  >>
  \layout { }
  \midi { }
  \header {
    title = "III"
    subtitle = "Inspired Thing"
    composer = ##f
  }
}

\markup { \vspace #1 }

\score {
  \new PianoStaff
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upperStolen" \upperStolen
    \new Staff = "lowerStolen" \lowerStolen
  >>
  \layout { }
  \midi { }
  \header {
    title = "VI"
    subtitle = "Stolen Thing"
    composer = ##f
  }
}

\markup { \vspace #1 }

\score {
  \new PianoStaff
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upperOriginal" \upperOriginal
    \new Staff = "lowerOriginal" \lowerOriginal
  >>
  \layout { }
  \midi { }
  \header {
    title = "V"
    subtitle = "Original Thing"
    composer = ##f
  }
}

\score {
  \new PianoStaff
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upperPerpetual" \upperPerpetual
    \new Dynamics \dynPerpetual
    \new Staff = "lowerPerpetual" \lowerPerpetual
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
    }
  }
  \midi { }
  \header {
    title = "VI"
    subtitle = "Perpetual Thing"
    composer = ##f
  }
}

%{ \score {
  \new PianoStaff
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upperInteresting" \upperInteresting
    \new Staff = "lowerInteresting" \lowerInteresting
  >>
  \layout { }
  \midi { }
  \header {
    title = "VII"
    subtitle = "Interesting Thing"
    composer = ##f
  }
}

\score {
  \new PianoStaff
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upperPurpleHat" \upperPurpleHat
    \new Staff = "lowerPurpleHat" \lowerPurpleHat
  >>
  \layout { }
  \midi { }
  \header {
    title = "VIII"
    subtitle = "Purple Hat Thing"
    composer = ##f
  }
}

\score {
  \new PianoStaff
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upperSlidy" \upperSlidy
    \new Staff = "lowerSlidy" \lowerSlidy
  >>
  \layout { }
  \midi { }
  \header {
    title = "IX"
    subtitle = "Slidy Thing"
    composer = ##f
  }
}

\score {
  \new PianoStaff
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upperUpsideDown" \upperUpsideDown
    \new Staff = "lowerUpsideDown" \lowerUpsideDown
  >>
  \layout { }
  \midi { }
  \header {
    title = "X"
    subtitle = "Upside down Thing"
    composer = ##f
  }
} %}
