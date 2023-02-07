% OPEN WITH LILYPOND

\version "2.12.3"

% Version 0 - 6 Feb 2023

\header {
  title = "Duet for the right hand alone"
  copyright = "Copyright Zulko 2023 - Published under Creative Commons Attribution Licence (CC BY 3.0 US)"
  tagline  = ""
}
\markup { \vspace #1 }
global = {
  \key c \minor
  \time 6/8
}


upper = \new Voice \with {
  \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
}{
  \global
  \stemDown
  r8 fis'8 g' f'-3 es' d'-1
  es'4.-2 e'4. f' \stemUp c''-2-5
  bes'8-1-4 c'' bes' \stemDown aes' g' f'-1
  g'4. \stemUp g''4.-2-5
  c''8-1-2 d'' ees'' f''4.
  g'8 g'' f''-1-4 ees''-1-3 f'' d''-1-2
  ees''4.-1-3 g''4.-2-5
  c''8 c''' bes''-1-4 aes''-1-3 bes'' g''-1-2
  aes''4.-1-3 c'''4.-2-5
  bes''8-1-4 c''' bes''-1-4 aes''-1-4 g'' f''-1-2
  g''4.-1-3 bes''4.-1-4
  \autoBeamOff aes''8-1-2 [bes''] \autoBeamOn \stemDown aes''  g'' f''-2 ees''
  d''4. fis''4.
  g''4 a''8 b'' c''' d''' 
  ees''' aes''-1 g''-1 fis'' g'' fis''
  f'' bes'' aes'' g''4.
  aes''8 g'' f'' ees'' d'' c''
  b' a'-1 g'-2 f' g' f'
  e'2.
  
  
  \bar "|."
}


lower = \new Voice \with {
  \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
}{
  \global
  \override NoteHead.font-size = #-2
  \stemUp
  s2. r8 b'8 c'' bes'-1-4 aes' g'
  aes' bes' aes' \stemDown g' f' es'-2
  d'4. \stemUp d''4.-3-5
  ees''8-1-3 f'' ees'' \stemDown d'' c''-1 bes'-2
  aes'4. a'8 d'' c''
  b'4 a'8 b'4 g'8
  c''8 f'' ees'' d'' e'' f''
  e''4 d''8 e''4 c''8
  f''8 g''-2 f''-1 ees'' f''-1 ees''-2
  d''4 bes'8 c''4 d''8
  ees'' f''-2 ees''-1 d'' ees''-2 d''-1
  c''4 \stemUp c'''8-2-4 d'''4-1-5 ees'''8-1-5
  <f''' c''' aes''> ees''' d''' c''' d''' c'''
  b''-1-2 d'''-2 fis'''-1-4 g'''-1-4 a'''-1-4 b'''-1-4
  
  c''''4.->-2-5 c'''-2-5 d''' b''8 a'' b''
  c'''4.-3-5 fis''-3-4 g''-2-5 b'8-1-4 a'-2-3 b'-1-4
  c''2.-2-5
  
}

\paper {
  top-margin = 20
 left-margin = 30
 right-margin = 30
 system-system-spacing.basic-distance = #20
}

\score {
  \new PianoStaff \with {
    instrumentName = ""
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << \upper \lower >>
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}