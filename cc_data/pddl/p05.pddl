(define (problem p05)
  (:domain coin-collector)
  (:objects
    room_0 room_1 room_2 room_3 room_4 - room
    coin - item
  )
  (:init
    (at room_0)
    (connected room_0 room_1)
    (connected room_0 room_2)
    (connected room_0 room_4)
    (connected room_1 room_0)
    (connected room_1 room_3)
    (connected room_1 room_2)
    (connected room_1 room_4)
    (connected room_2 room_0)
    (connected room_2 room_1)
    (connected room_2 room_3)
    (connected room_3 room_1)
    (connected room_3 room_2)
    (connected room_4 room_0)
    (connected room_4 room_1)
    (location coin room_2)
  )
  (:goal 
    (taken coin)
  )
)