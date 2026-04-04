(define (domain coin-collector)
  (:requirements :strips :typing)
  (:types
    room
    item
  )
  (:predicates
    (at ?room - room)
    (connected ?room1 - room ?room2 - room)
    (closed-door ?room1 - room ?room2 - room)
    (location ?item - item ?room - room)
    (taken ?item - item)
  )

  (:action move
    :parameters (?room1 - room ?room2 - room)
    :precondition (and (at ?room1) (connected ?room1 ?room2))
    :effect (and (not (at ?room1)) (at ?room2))
  )
  
  (:action take
    :parameters (?item - item ?room - room)
    :precondition (and (at ?room) (location ?item ?room) (not (taken ?item)))
    :effect (and (taken ?item) (not (location ?item ?room)))
  )
)