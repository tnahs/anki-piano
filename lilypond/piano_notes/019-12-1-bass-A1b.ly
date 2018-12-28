%% ----------------------------------------------------------------------------
%% Generated on: 2018 December 27
%% Note Name: A1b
%% Octave: 1
%% Clef: bass
%% Filename: 019-12-1-bass-A1b
%% ----------------------------------------------------------------------------

\version "2.19.82"

\include "../piano_note_colors.ly"

\header {
  tagline = ""
}

upper = {
  \clef treble
  \numericTimeSignature
  \override NoteHead.color = #colorized-note
  \override Stem.color = #colorized-note
  \override Accidental.color = #colorized-note
  % treble note in color
  r2
  % treble octave in color
  r1
  \override NoteHead.color = #default-black
  \override Stem.color = #default-black
  \override Accidental.color = #default-black
  % treble octave repeat in black
  r1
  \bar "|."
}

lower = {
  \clef bass
  \numericTimeSignature
  \override NoteHead.color = #colorized-note
  \override Stem.color = #colorized-note
  \override Accidental.color = #colorized-note
  % bass note in color
  r4 aes,,4
  % bass octave in color
  r4 aes4 aes,4 aes,,4
  \override NoteHead.color = #default-black
  \override Stem.color = #default-black
  \override Accidental.color = #default-black
  % bass octave repeat in black
  r4 aes4 aes,4 aes,,4
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