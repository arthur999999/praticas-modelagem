CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	"categoryId" INTEGER NOT NULL REFERENCES categories(id),
	size VARCHAR(1) NOT NULL,
	amount INTEGER NOT NULL,
    price INTEGER NOT NULL
);

ALTER TABLE products
	ADD "mainPhotoId" INTEGER NOT NULL REFERENCES photos(id)
;