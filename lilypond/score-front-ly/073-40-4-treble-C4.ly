%% ----------------------------------------------------------------------------
%% Generated on: 2019 January 05
%% Note Name: C4
%% Octave: 4
%% Clef: treble
%% Filename: 073-40-4-treble-C4
%% ----------------------------------------------------------------------------

\version "2.19.82"

\include "../piano_note_colors.ly"

\header {
  tagline = ""
}

upper = {
  \clef treble
  \numericTimeSignature
  % treble note
  r4 c'4
  % treble octave (hidden)
  r4 \hideNotes c4 c'4 c''4
  % treble octave (hidden) repeat
  \unHideNotes
  r4 \hideNotes c4 c'4 c''4
  \bar "|."
}

lower = {
  \clef bass
  \numericTimeSignature
  % bass note in color
  r2
  % bass octave (hidden)
  r1
  % bass octave (hidden) repeat
  \unHideNotes
  r1
}

\score {
  \new PianoStaff <<
    \context Score
    \applyContext #(override-color-for-all-grobs default-black)
    \time 4/4
    \partial 2
    \new Staff = upper { \upper }
    \new Staff = lower { \lower }
  >>
  \layout { }
  \midi { }
}