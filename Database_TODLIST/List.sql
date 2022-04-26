Create database List

Create table Categories
( id_categories numeric(2) primary key IDENTITY,
  name_categories varchar(30) NOT NULL
)
Go

Create table Task_list
( id_list numeric(2) primary key IDENTITY,
  name_list varchar(50) NOT NULL,
  date_finished datetime NOT NULL,
  done_or_not varchar(3) CHECK(done_or_not in ('yes','no')),
  id_categories numeric(2) references Categories
)


  ALTER TABLE Task_list
     ADD  FOREIGN KEY (id_categories) REFERENCES Categories(id_categories) ON delete CASCADE on update no action
	 GO

	 Select * from Categories

	  Select * from Task_list


	INSERT Categories(name_categories)
	Values('Дім'),
    ('Навчання');


	INSERT Task_list(name_list,date_finished,done_or_not,id_categories)
	/*Values('Прокинувся','2022-12-08','y',1)*/
	Values('Поїв','2022-12-08 12:12','yes',1),
	('Универ','2022-12-08 15:12','no',2);


	Select Categories.id_categories,Categories.name_categories,Task_list.name_list,Task_list.date_finished,Task_list.done_or_not
	From Categories INNER JOIN Task_list ON Categories.id_categories =Task_list.id_categories 

    
	 