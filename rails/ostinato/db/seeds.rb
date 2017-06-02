admin = User.create! name: 'John', surname: 'Doe', is_admin: true, tel: '+48782963345',
                     email: 'john@gmail.com', password: 'topsecret'

topic = Topic.create codename: 'Próby, nauka, warsztaty', public: true

Post.create title: 'Próba w poniedziałek 27 marca',
            content: 'Lorem ipsum dolor sit amet,
 consectetur adipiscing elit.
 Aenean ligula quam, consequat non venenatis ut, blandit at justo.
 Praesent porttitor lacinia nulla, nec faucibus velit.
  Quisque congue consectetur egestas. Duis viverra sem sedfringilla mattis.
  Curabitur vitae lacus pulvinar, rhoncus neque ut, bibendum erat.
  Nunc nunc leo, ultricies id leo non, pretium suscipit sem. Donec pellentesque luctus mi,
  in condimentum turpis tristique sit amet.
  Sed accumsan finibus diam, sed accumsan erat finibus vel.
  Nullam imperdiet lacinia ipsum vel sagittis.
  Sed viverra nisi egestas magna fringilla, nec porta tellus pharetra.
  Proin quis tellus imperdiet, tristique quam vitae, auctor purus.
  Curabitur dignissim arcu diam, a lobortis eros dapibus eu. Donec ac pellentesque ante.
  Nam vitae luctus nunc, in tincidunt arcu.',
            user_id: admin.id, topic_id: topic.id

Post.create title: 'Warsztaty w Srebrnej Górze',
            content: 'Consectetur adipiscing elit.
            Aenean ligula quam, consequat non venenatis ut, blandit at justo.
  Praesent porttitor lacinia nulla, nec faucibus velit.
  Quisque congue consectetur egestas.
  Duis viverra sem sed fringilla mattis. Curabitur vitae lacus pulvinar, rhoncus neque ut,
   bibendum erat.
  Nunc nunc leo, ultricies id leo non, pretium suscipit sem.
  Donec pellentesque luctus mi in condimentum turpis tristique sit amet.
  Sed accumsan finibus diam, sed accumsan erat finibus vel.
  Nullam imperdiet lacinia ipsum vel sagittis.
  Sed viverra nisi egestas magna fringilla, nec porta tellus pharetra.
  Proin quis tellus imperdiet, tristique quam vitae, auctor purus. Curabitur
  dignissim arcu diam, a lobortis eros dapibus eu. Donec ac pellentesque ante.
  Nam vitae luctus nunc, in tincidunt arcu.',
            user_id: admin.id, topic_id: topic.id
