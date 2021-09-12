drop table if exists animals;
create TABLE animals(
   id            INTEGER  NOT NULL PRIMARY KEY
  ,animal        VARCHAR(40) NOT NULL
  ,name          VARCHAR(40) NOT NULL
  ,price         NUMERIC(10,5) NOT NULL
  ,image_url     VARCHAR(1000) NOT NULL
  ,in_stock      INTEGER  NOT NULL
  ,fast_delivery VARCHAR(5) NOT NULL
  ,ratings       INTEGER  NOT NULL
);

drop table if exists orders;
create TABLE orders(
   id               INTEGER  NOT NULL AUTO_INCREMENT PRIMARY KEY
  ,customer_email   VARCHAR(200) NOT NULL
  ,customer_nick   VARCHAR(200) NOT NULL
  ,customer_address1 VARCHAR(1000) NOT NULL
  ,customer_address2 VARCHAR(1000) NOT NULL
  ,customer_city VARCHAR(1000) NOT NULL
  ,customer_zipcode VARCHAR(1000) NOT NULL
  ,total_price      NUMERIC(10,5) NOT NULL
  ,comments         VARCHAR(1000)  NOT NULL
);

drop table if exists order_items;
create TABLE order_items(
   id               INTEGER  NOT NULL AUTO_INCREMENT PRIMARY KEY
  ,order_id         INTEGER NOT NULL
  ,item_id          INTEGER NOT NULL
  ,items_num        INTEGER NOT NULL
);

insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (1,'Skye Terrier','Small Frozen Computer',524.00,'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/26164828/Skye-Terrier-standing-outdoors-in-profile.jpg',2,'true',1);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (2,'Alaskan Klee Kai','Handcrafted Steel Chicken',598.00,'https://alaskankleekai101.com/wp-content/uploads/2015/05/alaskan-klee-kai-sun.jpg',4,'false',5);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (3,'Basque Shepherd Dog','Rustic Soft Chicken',880.00,'https://p0.pxfuel.com/preview/50/382/459/elo-dog-dog-breed-purebred-dog.jpg',4,'false',4);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (4,'Japanese Spitz','Incredible Cotton Mouse',47.00,'https://japanesedogbreedguide.com/wp-content/uploads/2020/02/Japanese-Spitz-Breed-1024x576.png',1,'true',3);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (5,'Slovakian Wirehaired Pointer','Practical Rubber Chips',592.00,'https://kc-media-cdn-live.azureedge.net/cache/9/0/f/a/8/f/90fa8ff26b532b573bbaea5a153128b03d14a2b2.jpg',7,'true',5);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (6,'Bullmastiff','Unbranded Plastic Hat',789.00,'https://www.omlet.com.pl/images/cache/979/768/Dog-Bullmastiff-A_wonderful,_adult_Bullmastiff_lying_neatly_on_the_grass.jpg',7,'true',1);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (7,'Giant Schnauzer','Awesome Rubber Shirt',836.00,'https://media-be.chewy.com/wp-content/uploads/2021/07/12094736/GiantSchnauzer-FeaturedImage.jpg',2,'false',3);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (8,'Cão Fila de São Miguel','Awesome Frozen Chips',761.00,'https://cdn.fotofits.com/petzlover/gallery/img/l/cao-fila-de-sao-miguel-850386.jpg',1,'true',2);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (9,'Lancashire Heeler','Intelligent Cotton Table',321.00,'https://azure.wgp-cdn.co.uk/app-yourdog/posts/JennyGrantParkesdogPickersleyisahappyactiveHeeler.jpg',0,'false',2);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (10,'Hygen Hound','Rustic Fresh Mouse',178.00,'https://worlddogfinder.com/imager/1200x630/upload/hygen_hound.jpg',6,'true',1);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (11,'Smooth Collie','Gorgeous Frozen Hat',602.00,'https://www.pawer.global/wp-content/uploads/hm_bbpui/19647/z59txilp98cttysx3rsx9kmikywct27j.jpeg',6,'true',2);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (12,'Smooth Fox Terrier','Practical Plastic Towels',343.00,'https://cdn.shopify.com/s/files/1/0994/0236/articles/smooth-fox-terrier_1200x.jpg?v=1505414501',1,'true',5);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (13,'Polish Greyhound','Tasty Wooden Ball',217.00,'https://alchetron.com/cdn/polish-greyhound-d9a47baf-98cf-4e64-955d-233a5547a33-resize-750.jpeg',5,'true',3);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (14,'Istrian Shorthaired Hound','Tasty Frozen Car',335.00,'https://petkeen.com/wp-content/uploads/2021/03/Istrain-shorthaired-hound_f8grapher_Shutterstock.jpg',7,'true',1);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (15,'Sussex Spaniel','Ergonomic Wooden Chips',576.00,'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12223645/Sussex-Spaniel-On-White-01.jpg',1,'true',3);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (16,'Black and Tan Coonhound','Gorgeous Concrete Pants',396.00,'https://dogtime.com/assets/uploads/gallery/black-and-tan-coonhound-dog-breed-pictures/3-sitforward.jpg',5,'false',1);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (17,'Sporting Lucas Terrier','Gorgeous Fresh Shirt',278.00,'https://i.pinimg.com/474x/8a/8b/b8/8a8bb8e650bfe30f9dc74b7fa619457d--lucas-terrier-russell-terrier.jpg',0,'true',5);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (18,'Shih Tzu','Unbranded Frozen Cheese',18.00,'https://www.purina.pl/sites/default/files/styles/nppe_breed_selector_500/public/breed_library/shih_tzu.jpg?itok=qZ7j0JSt',0,'true',4);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (19,'Kaikadi','Sleek Frozen Towels',339.00,'https://i.pinimg.com/originals/49/8f/75/498f75f42659540fa892fb9271d369d9.jpg',2,'false',1);
insert into animals(id,animal,name,price,image_url,in_stock,fast_delivery,ratings) values (20,'Drentse Patrijshond','Handcrafted Wooden Towels',567.00,'https://www.101dogbreeds.com/wp-content/uploads/2018/04/Drentse-Patrijshond-Images.jpg',0,'true',5);
