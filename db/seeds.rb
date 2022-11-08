la = Gym.create(name: "L.A. Fitness", address: "Suite 981 1795 Leida Fords, Nataliemouth, TN 14377-4979")
planet = Gym.create(name: "Planet Fitness", address: "7768 David Avenue, Greenside, PA 67475-3655")

cassie = Client.create(name: "Casie Effertz", age: 18)
dorris = Client.create(name: "Dorris Bogan", age: 52)
bernie = Client.create(name: "Bernie Schiller", age: 44)
manie = Client.create(name: "Manie Dare", age: 29)

Membership.create(gym_id: la.id, client_id: cassie.id, charge: 40)
Membership.create(gym_id: la.id, client_id: dorris.id, charge: 40)
Membership.create(gym_id: la.id, client_id: bernie.id, charge: 40)
Membership.create(gym_id: planet.id, client_id: cassie.id, charge: 50)
Membership.create(gym_id: planet.id, client_id: manie.id, charge: 60)

wow = Gym.create(name: "Workout World", address: "1010 Route 35, Middletown, NJ  07748")

craig = Client.create(name: "Craig Mahaffey", age: 43)
ann = Client.create(name: "Ann Mengucci", age: 41)
paul = Client.create(name: "Paul Sampson", age: 38)
jay = Client.create(name: "Jay Barben", age: 35)


Membership.create(gym_id: wow.id, client_id: craig.id, charge: 60)
Membership.create(gym_id: wow.id, client_id: ann.id, charge: 70)
Membership.create(gym_id: wow.id, client_id: paul.id, charge: 80)
Membership.create(gym_id: wow.id, client_id: jay.id, charge: 90)
