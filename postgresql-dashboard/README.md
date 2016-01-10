


# Run a demo with docker in 4 steps


1- Create a dummy database

```
docker run --name pgdash_dummy_db -e POSTGRES_PASSWORD=plop -d postgres 
```

2- Launch the demo

```
docker run -i --name pgdash_demo -p 3030:3030 --link pgdash_dummy_db:postgres -d -t dalibo/postgresql-dashboard-demo
```

3- Create some activity on the node 

initialize a pgbench database and fire 5 minutes (300s) of Read/Write workload on the db from 4 different connexions

```
docker exec -d pgdash_dummy_db gosu postgres pgbench -i postgres
docker exec -d pgdash_dummy_db gosu postgres pgbench -c 4 -T 300 postgres
```

4- Go to http://127.0.0.1:3030


# Stop the demo & clean up

```
docker stop pgdash_demo pgdash_dummy_db
docker rm postgres postgresql-dashboard-demo
```

