-- inserção de dados e queries
-- drop database ecommerce;

use ecommerce;

show tables;
desc clients;
-- idClient, Fname, Minit, Lname, CPF, Address
insert into Clients (Fname, Minit, Lname, CPF, Address)
	values('Maria', 'M', 'Silva', 123456789, 'rua silva de prata 29, Carangola - Cidade das flores'),
		  ('Matheus', 'O', 'Pimentel', 987654321, 'rua alamenda 289, Centro - Cidade das flores'),
          ('Ricardo', 'F', 'Silva', 45678913, 'avenida alameda vinha 1009, Centro - Cidade das flores'),
          ('Julia', 'S', 'França', 289123456, 'rua laranjeiras 861, Centro - Cidade das flores'),
          ('Roberta', 'G', 'Assis', 98745631, 'avenida liberdade 19, Centro - Cidade das flores'),
          ('Isabela', 'M', 'Cruz', 654789123, 'rua alameda das flores 28, Centro - Cidade das flores');
          
          
-- idProduct, Pname, classification_kids boolean, category('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis'), avaliação, size
insert into product (Pname, classification_kids, category, avaliação, size) values
							('Fone de ouvido',false,'Eletrônico','4',null),
                            ('Barbie Elsa',true,'Brinquedos','3',null),
                            ('Body Carters',true,'Vestimenta','5',null),
                            ('Microfone Vedo - Youtuber',false,'Eletrônico','4',null),
                            ('Sofá retrátil',false,'Móveis','3','3x57x80'),
                            ('Farinha de arroz',false,'Alimentos','2',null),
                            ('Fire Stick Amazon',false,'Eletrônico','3',null);
                            
select * from clients;
select * from product;
-- idOrder, idOrderClient, orderStatus, orderDescription, sendValue, paymentCash

delete from orders where idOrderClient in (1,2,3,4);
insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values
							(1,default,'compra via aplicativo',null,1),
                            (2,default,'compra via aplicativo',50,0),
                            (3,'Confirmado',null,null,1),
                            (4,default,'compra via web site',150,0);
						
	-- idPOproduct, idPOorder, poQuantity, poStatus
select * from orders;
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
						 (1,1,2,null),
                         (2,1,1,null),
                         (3,2,1,null);

-- storageLocation,quantity
insert into productStorage (storageLocation,quantity) values
							('Rio de Janeiro',1000),
                            ('Rio de Janeiro',500),
                            ('São Paulo',10),
                            ('São Paulo',100),
                            ('São Paulo',10),
                            ('Brasília',60);
                            
-- idLproduct, idLstorage, location
insert into storageLocation (idLproduct, idLstorage, location) values
						(1,2,'RJ'),
                        (2,6,'GO');
					
-- idSupplier, SocialName, CNPJ, contact
insert into supplier (SocialName, CNPJ, contact) values
							('Almeida e filhos', 123456789123456,'21985474'),
                            ('Eletrônicos Silva',854519649143450,'21985484'),
                            ('Eletrônicos Valma',934567893934692,'21975474');
select * from supplier;
-- idPsSupplier, idPsProduct, quantity
insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
						(1,3,500),
                        (1,2,400),
                        (2,4,633),
                        (3,3,5),
                        (2,5,10);

-- idSeller, SocialName, AbstName, CNPJ, CPF, location, contact
insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values
						('Tech eletrpnics',null,123456789456321,null,'Rio de Janeiro',219946287),
                        ('Botique Durgas',null,null,123456783,'Rio de Janeiro',219567895),
                        ('Kids World',null,456789121654485,null,'São Paulo',1198657484);

select * from seller;
-- idPseller, idPproduct, prodQuantity
insert into productSeller (idPseller, idPproduct, prodQuantity) values
						(1,1,80),
                        (2,7,10);
 
 select * from productSeller;
 select * from clients c, orders o where c.idClient = idOrderClient;