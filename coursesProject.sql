CREATE TABLE "roles" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int,
  "role_id" int
);

CREATE TABLE "user_courses" (
  "id" serial PRIMARY KEY,
  "user_id" uuid,
  "course_id" int
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "title" varchar,
  "description" text,
  "teacher" varchar,
  "categorie_id" int
);

CREATE TABLE "level_courses" (
  "id" serial PRIMARY KEY,
  "course_id" int,
  "level_id" int
);

CREATE TABLE "level" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "courses_videos" (
  "id" serial PRIMARY KEY,
  "title" varchar,
  "url_video" varchar,
  "course_id" int
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "user_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "level_courses" ADD FOREIGN KEY ("level_id") REFERENCES "level" ("id");

ALTER TABLE "level_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "user_courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("categorie_id") REFERENCES "categories" ("id");




insert 
	into roles (
	"name" 
	) 
values(
	'admin'	
), 
( 
	'teacher'
),
( 
	'student'
); 


insert
	into users (
	id,
	first_name,
	last_name,
	email,
	"password", 
	age, 
	role_id 
	)
values (
'86a40a5b-8906-4a5f-a327-f0a5c1de0e82',
'Nicolas',
'Pantoja',
'nicolas@gmail.com',
'1234',
29,
1
), (
'0b0c9118-f243-485c-9282-0c66b90bfe8f',
'Samuel',
'Pantoja',
'samuel@gmail.com',
'1234',
3, 
3
), (
'ebe9fad8-5db3-4010-8a72-c24f39aaeb29',
'Sahid',
'Kick',
'sahid@gmail.com',
'1234',
23, 
2
);

insert 
	into categories ( 
	id,
	"name" 
	)
values ( 
20220101,
'Fundamentos'
), (
20220201,
'Desarrollo'	
);

insert
	into courses (
	id,
	title,
	description,
	teacher,
	categorie_id 
	)
values (
	22118,
	'Nodejs',
	'Desarrollo Back-End con Node',
	'Sahid Kick',
	20220201
	), 
	(
	22119,
	'Reactjs',
	'Desarrollo Front-End con React',
	'Benjamin Flores',
	20220201
	),
	(
	22018,
	'Fundamentos de Programación',
	'Fundamentos de Javascript y programación básica',
	'Jesús Fernandez',
	20220101
	);

insert
	into courses_videos (
	id, 
	title,
	url_video,
	course_id
	)
values (
	0021,
	'First class ',
	'https://nodejs.com/firstclass',
	22118
), 
(
	0022,
	'Last class ',
	'https://nodejs.com/lastclass',
	22118
), ( 
	0011,
	'Class 1 React',
	'https://react.com/class1',
	22119
), 
(
	0001,
	'Class 1 Javascript',
	'https://javascript.com/class1',
	22018
);


insert
	into "level" (
	"name" 
	)
values (
	'Begginner'
), 
(
	'Intermediate'
),
(
	'Advanced'
);


insert
	into level_courses  (
	course_id,
	level_id 
	)
values (
	22118,
	3
), 
(
	22119,
	2
),
(
	22018,
	1
);


insert
	into roles  (
	"name"
	)
values (
	'admin'
), 
(
	'teacher'
),
(
	'student'
);


insert 
	into user_courses ( 
	user_id,
	course_id
	)
values (
'86a40a5b-8906-4a5f-a327-f0a5c1de0e82',
22118
), (
'86a40a5b-8906-4a5f-a327-f0a5c1de0e82',
22119
), (
'86a40a5b-8906-4a5f-a327-f0a5c1de0e82',
22018
), (
'0b0c9118-f243-485c-9282-0c66b90bfe8f', 
22018
), (
'0b0c9118-f243-485c-9282-0c66b90bfe8f',
22119
), 
(
'ebe9fad8-5db3-4010-8a72-c24f39aaeb29',
22118
);
