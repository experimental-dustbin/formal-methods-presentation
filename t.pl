type("a1", a).
type("a2", a).
type("a3", a).

type("b1", b).
type("b2", b).
type("b3", b).

link("a1", "a2").
link("a2", "a3").

live("a1").

is_live(X, _) :- live(X).
is_live(X, Seen) :-
  link(Y, X),
  \+member(Y, Seen),
  is_live(Y, [X|Seen]).
