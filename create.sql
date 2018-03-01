CREATE TABLE public.customers
(
    customers_id bigint NOT NULL,
    customers_name text COLLATE pg_catalog."default" NOT NULL,
    customers_address text COLLATE pg_catalog."default" NOT NULL,
    customers_phone bigint NOT NULL,
    CONSTRAINT customers_pk PRIMARY KEY (customers_id)
)

CREATE TABLE public.goods
(
    goods_id bigint NOT NULL,
    storage_id bigint NOT NULL,
    goods_name text COLLATE pg_catalog."default" NOT NULL,
    goods_price bigint NOT NULL,
    goods_quantity bigint NOT NULL,
    CONSTRAINT goods_pk PRIMARY KEY (goods_id),
    CONSTRAINT storageandsupplierofgoods_id FOREIGN KEY (storage_id)
        REFERENCES public.storageandsupplierofgoods (storageandsupplierofgoods_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

CREATE TABLE public.selling
(
    selling_id bigint NOT NULL,
    customers_id bigint NOT NULL,
    goods_id bigint NOT NULL,
    selling_date text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT selling_pk PRIMARY KEY (selling_id),
    CONSTRAINT customers_id FOREIGN KEY (customers_id)
        REFERENCES public.customers (customers_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT goods_id FOREIGN KEY (goods_id)
        REFERENCES public.goods (goods_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

CREATE TABLE public.storage
(
    storage_id bigint NOT NULL,
    storage_name text COLLATE pg_catalog."default" NOT NULL,
    storage_address text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT storage_pk PRIMARY KEY (storage_id)
)

CREATE TABLE public.storageandsupplierofgoods
(
    storageandsupplierofgoods_id bigint NOT NULL,
    storage_id bigint NOT NULL,
    supplierofgoods_id bigint NOT NULL,
    CONSTRAINT storageandsupplierofgoods_pk PRIMARY KEY (storageandsupplierofgoods_id),
    CONSTRAINT storage_id FOREIGN KEY (storage_id)
        REFERENCES public.storage (storage_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT suplierofgoods_id FOREIGN KEY (supplierofgoods_id)
        REFERENCES public."supplier of goods" (supplie_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

CREATE TABLE public."supplier of goods"
(
    supplie_id bigint NOT NULL,
    supplier_name text COLLATE pg_catalog."default" NOT NULL,
    supplier_address text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT supplier_pk PRIMARY KEY (supplie_id)
)