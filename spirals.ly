\version "2.24.1"

\paper {
  %ragged-last-bottom = ##t
  ragged-last-bottom = ##f
}

\header {
  title = "Spirals"
  meter = "Latin"
  tagline = ""
  composer = "Kirill Zaborov"
}


upper = \relative c {
  \clef treble
  \numericTimeSignature

  \repeat volta 2 {
    \bar ".|:"
    \time 4/4 <e g c>4 <g a d>2~ q8 <c f bes>~ | \time 3/4 q4 <b d g>2 |
    \time 4/4 <des aes'>4 <ees f bes>2 <c ges' a>4 | \time 3/4 <des ges a>2. |
    \time 4/4 <d f bes>4~ q16 <e g d'> r8 r2 | <c a'>1 |
    <ees ges b>2 <d g bes> | <g b d>4~ q8. <ees ges a>16~ q2 |
    \time 3/4 <aes, des e>2. |
    \time 4/4 <g b ees>4~ q8. <a d ges>16~ q2 |
  }
}

lower = \relative c {
  %\clef bass

  \repeat volta 2 {
    \time 4/4 d8. a16 b8 g16 d'~ d8 b e d | \time 3/4 f8. e16 des2 |
    \time 4/4 \tuplet 3/2 {f8 aes c} g8. bes,16~ bes4~ bes8 ees16 ges | \time 3/4 des8. aes 16 a2 |
    \time 4/4 f8. d''16 c bes8 a16~ a8 d, e f | e8. d16 c2~ \tuplet 3/2 {c8 c' b} |
    a8 g16 fis~ fis8 b, d e16 f~ f8 g | ges a16 g e8 d16 des~ des8 a b des |
    \time 3/4 aes8. ees'16 e2 |
    \time 4/4 r8 des16 ees e8 a,16 c~ c2 |
  }
}

\score {
  \new PianoStaff
  <<
    \new Staff \upper
    \new Staff << \clef bass \lower >>
  >>
}

\score {
  \header {
    piece = "B♭"
  }

  \transpose bes c'
  \new PianoStaff <<
    \new Staff << \upper >>
    \new Staff <<
      \clef treble
      \transpose c c'
      \lower
    >>
  >>
}
