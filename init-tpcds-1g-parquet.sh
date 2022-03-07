#!/bin/bash

"$SPARK_HOME"/bin/spark-sql -e "
    create database if not exists ks_tpcds_1g_parquet;
    use ks_tpcds_1g;

    drop table if exists ks_tpcds_1g_parquet.call_center;
    drop table if exists ks_tpcds_1g_parquet.catalog_page;
    drop table if exists ks_tpcds_1g_parquet.catalog_returns;
    drop table if exists ks_tpcds_1g_parquet.catalog_sales;
    drop table if exists ks_tpcds_1g_parquet.customer;
    drop table if exists ks_tpcds_1g_parquet.customer_address;
    drop table if exists ks_tpcds_1g_parquet.customer_demographics;
    drop table if exists ks_tpcds_1g_parquet.date_dim;
    drop table if exists ks_tpcds_1g_parquet.dbgen_version;
    drop table if exists ks_tpcds_1g_parquet.household_demographics;
    drop table if exists ks_tpcds_1g_parquet.income_band;
    drop table if exists ks_tpcds_1g_parquet.inventory;
    drop table if exists ks_tpcds_1g_parquet.item;
    drop table if exists ks_tpcds_1g_parquet.promotion;
    drop table if exists ks_tpcds_1g_parquet.reason;
    drop table if exists ks_tpcds_1g_parquet.ship_mode;
    drop table if exists ks_tpcds_1g_parquet.store;
    drop table if exists ks_tpcds_1g_parquet.store_returns;
    drop table if exists ks_tpcds_1g_parquet.store_sales;
    drop table if exists ks_tpcds_1g_parquet.time_dim;
    drop table if exists ks_tpcds_1g_parquet.warehouse;
    drop table if exists ks_tpcds_1g_parquet.web_page;
    drop table if exists ks_tpcds_1g_parquet.web_returns;
    drop table if exists ks_tpcds_1g_parquet.web_sales;
    drop table if exists ks_tpcds_1g_parquet.web_site;

    create table ks_tpcds_1g_parquet.call_center stored as parquet as select * from call_center;
    create table ks_tpcds_1g_parquet.catalog_page stored as parquet as select * from catalog_page;
    create table ks_tpcds_1g_parquet.catalog_returns stored as parquet as select * from catalog_returns;
    create table ks_tpcds_1g_parquet.catalog_sales stored as parquet as select * from catalog_sales;
    create table ks_tpcds_1g_parquet.customer stored as parquet as select * from customer;
    create table ks_tpcds_1g_parquet.customer_address stored as parquet as select * from customer_address;
    create table ks_tpcds_1g_parquet.customer_demographics stored as parquet as select * from customer_demographics;
    create table ks_tpcds_1g_parquet.date_dim stored as parquet as select * from date_dim;
    create table ks_tpcds_1g_parquet.dbgen_version stored as parquet as select * from dbgen_version;
    create table ks_tpcds_1g_parquet.household_demographics stored as parquet as select * from household_demographics;
    create table ks_tpcds_1g_parquet.income_band stored as parquet as select * from income_band;
    create table ks_tpcds_1g_parquet.inventory stored as parquet as select * from inventory;
    create table ks_tpcds_1g_parquet.item stored as parquet as select * from item;
    create table ks_tpcds_1g_parquet.promotion stored as parquet as select * from promotion;
    create table ks_tpcds_1g_parquet.reason stored as parquet as select * from reason;
    create table ks_tpcds_1g_parquet.ship_mode stored as parquet as select * from ship_mode;
    create table ks_tpcds_1g_parquet.store stored as parquet as select * from store;
    create table ks_tpcds_1g_parquet.store_returns stored as parquet as select * from store_returns;
    create table ks_tpcds_1g_parquet.store_sales stored as parquet as select * from store_sales;
    create table ks_tpcds_1g_parquet.time_dim stored as parquet as select * from time_dim;
    create table ks_tpcds_1g_parquet.warehouse stored as parquet as select * from warehouse;
    create table ks_tpcds_1g_parquet.web_page stored as parquet as select * from web_page;
    create table ks_tpcds_1g_parquet.web_returns stored as parquet as select * from web_returns;
    create table ks_tpcds_1g_parquet.web_sales stored as parquet as select * from web_sales;
    create table ks_tpcds_1g_parquet.web_site stored as parquet as select * from web_site;
"
