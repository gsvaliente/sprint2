db.restaurante.find();
db.restaurante.find({}, { restaurant_id: 1, name: 1, borough: 1, cuisine: 1 });
db.restaurante.find(
  {},
  { restaurant_id: 1, name: 1, borough: 1, cuisine: 1, _id: 0 }
);
db.restaurante.find(
  {},
  { restaurant_id: 1, name: 1, borough: 1, 'address.zipcode': 1, _id: 0 }
);
db.restaurante.find({ borough: 'Bronx' });
db.restaurante.find({ borough: 'Bronx' }).limit(5);
db.restaurante.find({ borough: 'Bronx' }).skip(5).limit(5);
db.restaurante.find({ 'grades.score': { $gt: 90 } });
db.restaurante.find({ 'grades.score': { $gt: 80, $lt: 100 } });
db.restaurante.find({ 'address.coord.1': { $lt: -95.754168 } });
db.restaurante.find({
  cuisine: { $ne: 'American' },
  'address.coord.0': { $lt: -65.754168 },
  'grades.score': { $gt: 70 },
});
db.restaurante.find({
  cuisine: { $ne: 'American' },
  'address.coord.1': { $lt: -65.754168 },
  'grades.score': { $gt: 70 },
});
db.restaurante
  .find({
    cuisine: { $ne: 'American ' },
    borough: { $ne: 'Brooklyn' },
    'grades.grade': 'A',
  })
  .sort({ cuisine: -1 });
db.restaurante.find(
  { name: /^Wil/ },
  { restaurant_id: 1, name: 1, borough: 1, cuisine: 1 }
);
db.restaurante.find(
  { name: /ces$/ },
  { restaurant_id: 1, name: 1, borough: 1, cuisine: 1 }
);
db.restaurante.find(
  { name: /Reg/ },
  { restaurant_id: 1, name: 1, borough: 1, cuisine: 1 }
);
db.restaurante.find({
  borough: 'Bronx',
  $or: [{ cuisine: 'American ' }, { cuisine: 'Chinese' }],
});
db.restaurante.find({
  borough: { $in: ['Staten Island', 'Queens', 'Bronx', 'Brooklyn'] },
});
db.restaurante.find({
  borough: { $nin: ['Staten Island', 'Queens', 'Bronx', 'Brooklyn'] },
});
db.restaurante.find(
  { 'grades.score': { $lt: 10 } },
  { restaurant_id: 1, name: 1, borough: 1, cuisine: 1 }
);
db.restaurante.find({}).sort({ name: 1 });
db.restaurante.find({}).sort({ name: -1 });
db.restaurante.find({}).sort({ cuisine: 1 }, { borough: -1 });
db.restaurante.find({ 'address.street': { $not: { $size: 0 } } });
db.restaurante.find({ 'address.coord': { $size: 2 } });
db.restaurante.find(
  { name: /mon/ },
  { name: 1, borough: 1, 'address.coord': 1, cuisine: 1 }
);
db.restaurante.find(
  { name: /^Mad/ },
  { name: 1, borough: 1, 'address.coord': 1, cuisine: 1 }
);
