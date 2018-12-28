%% http://lilypond.org/doc/v2.18/Documentation/snippets/pitches#pitches-coloring-notes-depending-on-their-pitch
%% Custom colors

%% Not-so-black-black
default-black =   #(rgb-color 0.25000  0.25000  0.25000)

%% Naturals
Cnat-orange =  #(rgb-color 1.00000  0.65490  0.14902)
Dnat-yellow =  #(rgb-color 1.00000  0.93333  0.34510)
Enat-green =   #(rgb-color 0.40000  0.73333  0.41176)
Fnat-blue =    #(rgb-color 0.16471  0.71765  0.96471)
Gnat-indigo =  #(rgb-color 0.36078  0.42353  0.75294)
Anat-violet =  #(rgb-color 0.67451  0.27843  0.73725)
Bnat-red =     #(rgb-color 0.92157  0.24706  0.41569)

%% Accidentals
CDacc-pastel-orange =  #(rgb-color 1.00000  0.80000  0.50196)
DEacc-pastel-green =   #(rgb-color 0.90196  0.93725  0.61176)
FGacc-pastel-blue =    #(rgb-color 0.49804  0.87059  0.91765)
GAacc-pastel-indigo =  #(rgb-color 0.62353  0.65882  0.85490)
ABacc-pastel-violet =  #(rgb-color 0.80784  0.57647  0.84706)

%% Association list of pitches to colors.
#(define color-mapping
   (list
    (cons (ly:make-pitch 0 0 NATURAL) Cnat-orange)
    (cons (ly:make-pitch 0 0 SHARP)   CDacc-pastel-orange)

    (cons (ly:make-pitch 0 1 FLAT)    CDacc-pastel-orange)
    (cons (ly:make-pitch 0 1 NATURAL) Dnat-yellow)
    (cons (ly:make-pitch 0 1 SHARP)   DEacc-pastel-green)

    (cons (ly:make-pitch 0 2 FLAT)    DEacc-pastel-green)
    (cons (ly:make-pitch 0 2 NATURAL) Enat-green)

    (cons (ly:make-pitch 0 3 NATURAL) Fnat-blue)
    (cons (ly:make-pitch 0 3 SHARP)   FGacc-pastel-blue)

    (cons (ly:make-pitch 0 4 FLAT)    FGacc-pastel-blue)
    (cons (ly:make-pitch 0 4 NATURAL) Gnat-indigo)
    (cons (ly:make-pitch 0 4 SHARP)   GAacc-pastel-indigo)

    (cons (ly:make-pitch 0 5 FLAT)    GAacc-pastel-indigo)
    (cons (ly:make-pitch 0 5 NATURAL) Anat-violet)
    (cons (ly:make-pitch 0 5 SHARP)   ABacc-pastel-violet)

    (cons (ly:make-pitch 0 6 FLAT)    ABacc-pastel-violet)
    (cons (ly:make-pitch 0 6 NATURAL) Bnat-red)
))

%% Compare pitch and alteration (not octave).
#(define (pitch-equals? p1 p2)
   (and
    (= (ly:pitch-alteration p1) (ly:pitch-alteration p2))
    (= (ly:pitch-notename p1) (ly:pitch-notename p2))))

#(define (pitch-to-color pitch)
   (let ((color (assoc pitch color-mapping pitch-equals?)))
     (if color
         (cdr color))))

#(define (colorized-note grob)
   (pitch-to-color
    (ly:event-property (event-cause grob) 'pitch)))

%% http://lsr.di.unimi.it/LSR/Item?id=443
%% see also http://lilypond.org/doc/v2.18/Documentation/learning/visibility-and-color-of-objects
#(define (override-color-for-all-grobs color)
  (lambda (context)
   (let loop ((x all-grob-descriptions))
    (if (not (null? x))
     (let ((grob-name (caar x)))
      (ly:context-pushpop-property context grob-name 'color color)
      (loop (cdr x)))))))