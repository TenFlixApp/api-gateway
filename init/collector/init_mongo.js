db = db.getSiblingDB('metrics');

db.initcoll.insert([
  { name: 'init db' }
]);
