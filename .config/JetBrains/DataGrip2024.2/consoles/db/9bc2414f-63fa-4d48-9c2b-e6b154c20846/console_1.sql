select company_name, count(v.*) from companies
    join vehicles v on companies.company_id = v.company_id
    group by company_name;

select company_id, company_name from companies
    where company_name like 'A%';

select * from cities where country_id BETWEEN 3 and 10;

select * from vehicles;

select route_id, cities.city_name from routes as r
join cities on r.city_id = cities.city_id;

select * from transport_types;
update transport_types set average_speed = average_speed + 5 where average_speed < 100;

select * from cities;

insert into companies(company_id, company_name)
values (1, 'Toyota'), (2, 'Volkswagen'), (3, 'Mercedes'),
       (4, 'Mitsubishi'), (5, 'Audi');

insert into vehicles(vehicle_id, vehicle_type, company_id)
values (1, 'motorcycle', 1), (2, 'car', 1),
       (3, 'motorcycle', 2), (4, 'truck', 3),
       (5, 'car', 4), (6, 'truck', 5);

insert into cities(city_id, city_name, country_id)
values (1, 'Almaty', 1), (2, 'Aktau', 1),
       (3, 'New York', 2), (4, 'Washington', 2),
       (5, 'Moscow', 3);

insert into cities(city_id, city_name, country_id) values (6, 'Astana', NULL);

insert into routes(route_id, city_id)
values (1, 2), (2, 3), (3, 4), (4, 5), (5, 1);

insert into transport_types(transport_id, transport_name, average_speed)
values (1, 'bus', 50.5), (2, 'electro bus', 40.5),
       (3, 'bike', 20.3), (4, 'taxi', 70.7),
       (5, 'trolley', 50);

create table companies (
	company_id INT PRIMARY KEY,
	company_name VARCHAR(255)
);

create table vehicles(
	vehicle_id INT PRIMARY KEY,
	vehicle_type VARCHAR(255),
	company_id INT,
    constraint fk_company_id FOREIGN KEY(company_id) references companies(company_id)
);

create table cities(
	city_id INT PRIMARY KEY,
	city_name VARCHAR(255),
	country_id INT
);

create table routes(
	route_id INT PRIMARY KEY,
	city_id INT,
    constraint fk_city_id FOREIGN KEY(city_id) references cities(city_id)
);

create table transport_types(
	transport_id INT PRIMARY KEY,
	transport_name VARCHAR(255),
	average_speed DECIMAL
);
