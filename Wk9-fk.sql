/*=========================================*/

CREATE TABLE projects (
  projectID       INT AUTO_INCREMENT,
  projectName    VARCHAR(250) NOT NULL,
  projectDescription  TEXT NOT NULL,

  PRIMARY KEY     (projectID)
);
ALTER TABLE projects ADD UNIQUE index_projectName (projectName);

CREATE TABLE todoItems (
  todoID       INT AUTO_INCREMENT,
  todoItem    VARCHAR(250) NOT NULL,
  dateCreated  DATETIME NOT NULL DEFAULT NOW(),
  todoStatus  TEXT NOT NULL,
  projectID  INT NOT NULL,

  PRIMARY KEY     (todoID),
  FOREIGN KEY (projectID) REFERENCES projects(projectID)
  ON UPDATE CASCADE ON DELETE CASCADE
);
ALTER TABLE todoItems ADD UNIQUE index_todoItem (todoItem);


/* TESTS */
/*
select * from todoItems;
insert into todoItems (todoItem,todoStatus,projectID)values('TEST', 'Okay', 2);
delete from todoItems;
drop table todoItems;

select * from projects;
insert into projects values(null,'TEST Project', 'TEST desc');
delete from projects;
drop table projects;
*/







