# friend-board

### setup commands↓

# 1. project clone
git clone [This Project URI]
# 2. container start up
dowcker-compose up -d
# 3. Migrate db
docker-compose exec friend-board-web rake db:migrate
# 4. Insert Test Data
docker-compose exec friend-board-web rake db:seed
# 5. access to 「http:localhost:3000」

###


### test user list↓

[Email] [password]

admin@admin.com admin
test0@test0.com test0
test0@test0.com test1
test0@test0.com test2
test0@test0.com test3
test0@test0.com test4
test0@test0.com test5
test0@test0.com test6
test0@test0.com test7
test0@test0.com test8
test0@test0.com test9

###
