CREATE TABLE "menu_items"(
    "menu_item_id" BIGINT NOT NULL,
    "item_name" VARCHAR(255) NOT NULL,
    "category" VARCHAR(255) NOT NULL,
    "price" FLOAT(53) NOT NULL
);
ALTER TABLE
    "menu_items" ADD PRIMARY KEY("menu_item_id");
CREATE TABLE "order_details"(
    "order_details_id" BIGINT NOT NULL,
    "order_id" BIGINT NOT NULL,
    "order_date" DATE NOT NULL,
    "order_time" TIME(0) WITHOUT TIME ZONE NOT NULL,
    "item_id" BIGINT NOT NULL
);
ALTER TABLE
    "order_details" ADD PRIMARY KEY("order_details_id");
ALTER TABLE
    "order_details" ADD CONSTRAINT "order_details_item_id_foreign" FOREIGN KEY("item_id") REFERENCES "menu_items"("menu_item_id");