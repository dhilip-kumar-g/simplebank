postgres:
	docker run --name postgres12 --network bank-network -p 5433:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=mysecretpassword -d postgres:12-alpine
createdb:
	docker exec -it postgres12 createdb --username=root --owner=root simple_bank
dropdb:
	docker exec -it postgres12 dropdb simple_bank
migrateup:
	migrate -path db/migration -database "postgresql://root:mysecretpassword@localhost:5433/simple_bank?sslmode=disable" -verbose up
migrateup:
	migrate -path db/migration -database "postgresql://root:mysecretpassword@localhost:5433/simple_bank?sslmode=disable" -verbose up 1
migratedown:
	migrate -path db/migration -database "postgresql://root:mysecretpassword@localhost:5433/simple_bank?sslmode=disable" -verbose down
sqlc:
	sqlc generate
test:
	go test -v -cover ./...
mock:
	mockgen -package mockdb -destination db/mock/store.go simplebank/db/sqlc Store
.PHONY: postgres createdb dropdb migrateup migratedown sqlc test mock