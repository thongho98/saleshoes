use dbsaleshoes;

#insert
insert into roles(roleName) values ("SYS_ADMIN");
insert into roles(roleName) values ("USER");
insert into roles(roleName) values ("USER_PRE");

insert into permission(permissionName) values ("CREATE");
insert into permission(permissionName) values ("READ");
insert into permission(permissionName) values ("UPDATE");
insert into permission(permissionName) values ("DELETE");
insert into permission(permissionName) values ("ORDER");

insert into role_permission(role_id,permission_id) values (1,1);
insert into role_permission(role_id,permission_id) values (1,2);
insert into role_permission(role_id,permission_id) values (1,3);

--category
insert into categories(name, image) values ("MEN","http://giayattom.com/wp-content/uploads/2015/07/chang-trai-phong-cach.jpg");
insert into categories(name, image) values ("WOMMEN","https://storage.googleapis.com/imgvn/3c1e30f994bf.jpg");
insert into categories(name, image) values ("CHILDREN","http://moby.com.vn/data/ck/images/2d6f715b34bec094868b5757156d76d5(1).jpg");

insert into status_product(name) values ("SELL");
insert into status_product(name) values ("STOP SELLING");
insert into status_product(name) values ("INVENTORY");

-- url_image
-- nam
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/b/b/bb53_black_f16_1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/h/p/hp_9f09_black_s15_1_2.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/h/p/hp_9f09_gaucho_s15_1_1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/h/p/hp_aa09_dark_brn_s16_1_1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/2/3/23092001_1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/m/i/mie_16074001.png");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/m/i/mie_16074600.png");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/h/p/hp_aa09_black_s16_1_1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/1/0/108879_1_thumbnail_2525x1220_page1_1321905.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/i/f/if17-24099_dark_brown_2_.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/i/m/img_9072a_1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/i/f/if17-24102_blue_7_.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/i/m/img_8850a_1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/i/m/img_1755a_1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/i/m/img_1738a_3.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/i/m/img_1829a_2.jpg");
-- nu
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/s/u/su_s19sho_119ssw3_s00fra0_970-1_4.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/s/0/s007wa-q16-1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/s/0/s007wa0-c90_1__1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/s/0/s007wa0-c26_2__1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/0/2/02s007wa0___wet_copy.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/s/0/s007wa0-c06_3__1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/i/m/img_2116a.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/2/6/26132397_1_1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/2/6/26132420_w_1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/2/6/26130933_isidora-faye_nude-patent.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/2/6/26130987_orabella-shine_black-combi.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/2/6/26130985_orabella-shine_nude-combi-leather-3.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/l/a/laina_rae_black_patent_26135175_w_1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/l/a/laina_rae_praline_patent_26138883_w_1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/m/e/mena_bloom_dark_grey_interest_nubuck_26138928_w_1.jpg");
insert into url_image(url) values ("https://hoang-phuc.com/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/2/6/26139306.jpg");
-- kid
insert into url_image(url) values ("https://drake.vn/image/cache/catalog/Vans/KID/VN000ZBUEO1-300x300.jpg");
insert into url_image(url) values ("https://drake.vn/image/cache/catalog/Vans/KID/VN000WWX6BT-300x300.jpg");
insert into url_image(url) values ("https://drake.vn/image/cache/catalog/Vans/KID/VN000WWX6RT-300x300.jpg");
insert into url_image(url) values ("https://drake.vn/image/cache/catalog/Vans/KID/VN000VHE6BT-300x300.jpg");
insert into url_image(url) values ("https://drake.vn/image/cache/catalog/Converse/Kid/327470-300x300.jpg");
insert into url_image(url) values ("https://drake.vn/image/cache/catalog/Converse/Kid/327468-300x300.jpg");
insert into url_image(url) values ("https://drake.vn/image/cache/catalog/Converse/Kid/327469-300x300.jpg");
insert into url_image(url) values ("https://drake.vn/image/cache/catalog/Converse/Kid/327467-300x300.jpg");

-- product
insert into products(name, price, update_at, id_category,id_status,id_img) values("Dr.Martens Giày Tây Cavendish BB53 21859001 Black",3490000,"2019-06-23",1,1,1);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Dr. Martens Giày Da Coronado 9F09 16592001 BLACK",2990000,"2019-06-23",1,1,2);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Dr. Martens Giày Da Coronado 9F09 16592201 GAUCHO",2990000,"2019-06-23",1,1,3);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Dr. Martens Giày Da Boyle AA09-20662201 Dark Brown",3490000,"2019-06-23",1,1,4);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Dr. Martens Giày Tây Nam Cavendish BTS BB53-23092001 BLACK.1",3490000,"2019-06-23",1,1,5);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Dr. Martens Giày Da Made In England 1461 16074001 BLACK",5990000,"2019-06-23",1,1,6);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Dr. Martens Giày Da Made In England 1461 16074600 MERLOT",5990000,"2019-06-23",1,1,7);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Dr. Martens Giày Da Boyle AA09-21096001 Black",3490000,"2019-06-23",1,1,8);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Dr. Martens Giày Sneaker Unisex Santanita EE28 23862001 Black",1990000,"2019-06-23",1,2,9);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Ecko Unltd Giày Sneaker Unisex IF17-24099 BROWN NET",2490000,"2019-06-23",1,2,10);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Ecko Unltd Giày Sneaker Nam IF17-24101 BLUERAY NET",2490000,"2019-06-23",1,2,11);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Ecko Unltd Giày Sneaker Unisex IF17-24102 BLUE NET",2490000,"2019-06-23",1,2,12);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Ecko Unltd Giày Sneaker Nam IF17-24104 BLUE NET",2290000,"2019-06-23",1,3,13);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Ecko Unltd Giày Sneaker Unisex IF17-24183 SODA BLU NET",2490000,"2019-06-23",1,3,14);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Ecko Unltd Giày Sneaker Unisex IF17-24185 S.PORT NET",2490000,"2019-06-23",1,3,15);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Ecko Unltd Giày Sneaker Unisex IF17-24186 BROWN NET",2490000,"2019-06-23",1,3,16);

insert into products(name, price, update_at, id_category,id_status,id_img) values("Superga Giày Búp Bê Nữ 119SSW3_S00FRA0-970",790000,"2019-06-23",2,3,17);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Superga Giày Búp Bê Nữ S007WA0-Q16",690000,"2019-06-23",2,3,18);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Superga Giày Búp Bê Nữ 218SCW3_S007WA0-C90",690000,"2019-06-23",2,3,19);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Superga Giày Búp Bê Nữ S007WA0-C26",790000,"2019-06-23",2,3,20);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Superga Giày Búp Bê Nữ S007WA0-WET",790000,"2019-06-23",2,2,21);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Superga Giày Búp Bê Nữ S007WA0-C06",790000,"2019-06-23",2,2,22);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Superga Giày Búp Bê Nữ S007WA0-XDY",690000,"2019-06-23",2,2,23);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Clarks Giày Búp Bê Nữ Pure Sense 26132397 BLACK",3699000,"2019-06-23",2,2,24);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Clarks Giày Búp Bê Nữ Mena Bloom 26132420 SAND",2999000,"2019-06-23",2,1,25);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Clarks Giày Búp Bê Nữ ISIDORA FAYE 26130933 NUDE",2899000,"2019-06-23",2,1,26);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Clarks Giày Búp Bê Nữ ORABELLA SHINE 26130987 BLACK",3299000,"2019-06-23",2,1,27);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Clarks Giày Búp Bê Nữ ORABELLA SHINE 26130985 NUDE",3299000,"2019-06-23",2,1,28);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Clarks Giày Búp Bê Nữ LAINA RAE 26135175 BLACK",3799000,"2019-06-23",2,1,29);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Clarks Giày Búp Bê Nữ LAINA RAE 26138883 NUDE",3799000,"2019-06-23",2,1,30);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Clarks Giày Búp Bê Nữ MENA BLOOM 26138928 D.GREY",2999000,"2019-06-23",2,1,31);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Clarks Giày Búp Bê Nữ ELLIS TILDA 26139306 BLACK",4399000,"2019-06-23",2,1,32);

insert into products(name, price, update_at, id_category,id_status,id_img) values("Vans Kids' Slip On Checkerboard",900000,"2019-06-23",3,1,33);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Vans Kids' Authentic",900000,"2019-06-23",3,1,34);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Vans Kids' Authentic-6RT",900000,"2019-06-23",3,1,35);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Vans Kids' Old Skool",1000000,"2019-06-23",3,1,36);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Converse Kids' Chuck Taylor All Star-327470C",800000,"2019-06-23",3,2,37);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Converse Kids' Chuck Taylor All Star-327468C",800000,"2019-06-23",3,2,38);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Converse Kids' Chuck Taylor All Star-327469C",800000,"2019-06-23",3,3,39);
insert into products(name, price, update_at, id_category,id_status,id_img) values("Converse Kids' Chuck Taylor All Star-327467C",800000,"2019-06-23",3,3,40);

-- size-shoes
insert into size_shoes(name) values("27");
insert into size_shoes(name) values("28");
insert into size_shoes(name) values("29");
insert into size_shoes(name) values("30");
insert into size_shoes(name) values("31");
insert into size_shoes(name) values("32");
insert into size_shoes(name) values("33");
insert into size_shoes(name) values("34");
insert into size_shoes(name) values("35");
insert into size_shoes(name) values("36");
insert into size_shoes(name) values("37");
insert into size_shoes(name) values("38");
insert into size_shoes(name) values("39");
insert into size_shoes(name) values("40");
insert into size_shoes(name) values("41");
insert into size_shoes(name) values("43");
insert into size_shoes(name) values("44");
insert into size_shoes(name) values("45");
insert into size_shoes(name) values("46");

-- size_product
insert into size_product(id_size, id_product, quantity, unit) values(1,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(2,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(3,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(4,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(5,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(6,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(7,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(8,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(9,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(10,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(11,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(12,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(13,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(14,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(15,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(16,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(17,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(18,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(19,1,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(1,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(2,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(3,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(4,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(5,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(6,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(7,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(8,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(9,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(10,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(11,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(12,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(13,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(14,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(15,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(16,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(17,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(18,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(19,2,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(1,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(2,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(3,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(4,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(5,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(6,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(7,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(8,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(9,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(10,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(11,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(12,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(13,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(14,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(15,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(16,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(17,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(18,3,30,"đôi");
insert into size_product(id_size, id_product, quantity, unit) values(19,3,30,"đôi");

-- description(id,id_product,code,description_detail,material,brands,design,madein)

insert into description(id_product,code,description_detail,material,brands,design,madein) values (1,"16592001_BLACK_S15","","Da","Dr. Martens","DM's LITE","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (2,"16592001_BLACK_S15","","Wyoming","Dr. Martens","Airwair Outsole","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (3,"16592201_GAUCHO_S15","","Crazy Horse","Dr. Martens","Airwair Outsole","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (4,"20662201_DARK_BRN_S16","","Grizzly /Hi Suede Wp","Dr. Martens","Airwair Outsole","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (5,"23092001_BLACK.1_AW17","","Temperley","Dr. Martens","3 I Shoe","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (6,"16074001_BLACK_F14","","Boanil Brush","Dr. Martens","Airwair Outsole","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (7,"16074600_MERLOT_F14","","Boanil Brush","Dr. Martens","Airwair Outsole","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (8,"21096001_BLACK_S16","","Grizzly /Hi Suede Wp","Dr. Martens","Airwair Outsole","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (9,"23862001_BLACK_AW18","","Canvas","Dr. Martens","Dr. Martens Octavo","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (10,"IF17-24099_BROWN","Dòng giày Authentic phom ôm, gọn gàng, nhẹ nhàng mà vẫn rất thể thao & thời thượng của Ecko Unltd","Da tổng hợp","Ecko Unltd","Authentic","Mỹ");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (11,"IF17-24101_BLUERAY","Dòng giày Sporty đặc trưng của Ecko Unltd với các họa tiết mạnh mẽ, độc quyền sẽ giúp cho người sở hữu nổi bật giữa đám đông","Da tổng hợp","Ecko Unltd","Sporty","Mỹ");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (12,"IF17-24102_BLUE","Dòng Giày sneaker Authentic phom ôm, gọn gàng, nhẹ nhàng mà vẫn rất thể thao & thời thượng của Ecko Unltd","Da tổng hợp","Ecko Unltd","Authentic","Mỹ");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (13,"IF17-24104_BLUE","Dòng Giày sneaker Sporty đặc trưng của Ecko Unltd với các họa tiết mạnh mẽ, độc quyền sẽ giúp cho người sở hữu nổi bật giữa đám đông","Da tổng hợp","Ecko Unltd","Sporty","Mỹ");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (14,"IF17-24183_SODA BLU","Dòng giày Authentic phom ôm, gọn gàng, nhẹ nhàng mà vẫn rất thể thao & thời thượng của Ecko Unltd","Da tổng hợp","Ecko Unltd","Authentic","Mỹ");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (15,"IF17-24185_S.PORT","Dòng giày Authentic phom ôm, gọn gàng, nhẹ nhàng mà vẫn rất thể thao & thời thượng của Ecko Unltd","Da tổng hợp","Ecko Unltd","Authentic","Mỹ");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (16,"IF17-24186_BROWN","Dòng giày Authentic phom ôm, gọn gàng, nhẹ nhàng mà vẫn rất thể thao & thời thượng của Ecko Unltd","Da tổng hợp","Ecko Unltd","Authentic","Mỹ");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (17,"S00FRA0_970_S19","Giày búp bê với kiểu dáng đơn giản, thoải mái và dễ dàng khi mang. Chất liệu vải canvas thoáng mát với đế cao su tự nhiên.","Vải, đế cao su","Superga","Superga Sneakers","Ý");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (18,"S007WA0_Q16_F18","Giày búp bê với kiểu dáng đơn giản, thoải mái và dễ dàng khi mang. Chất liệu vải canvas thoáng mát với đế cao su tự nhiên.","Vải, đế cao su","Superga","Superga Sneakers","Ý");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (19,"S007WA0_C90_F18","Giày búp bê với kiểu dáng đơn giản, thoải mái và dễ dàng khi mang. Chất liệu vải canvas thoáng mát với đế cao su tự nhiên.","Vải cotton, đế cao su","Superga","Superga Slip On","Ý");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (20,"S007WA0_C26_S18","Giày búp bê với kiểu dáng đơn giản, thoải mái và dễ dàng khi mang. Chất liệu vải canvas thoáng mát với đế cao su tự nhiên.","Vải, đế cao su","Superga","Superga Sneakers","Ý");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (21,"S007WA0_WET_F18","Giày búp bê với kiểu dáng đơn giản, thoải mái và dễ dàng khi mang. Chất liệu vải canvas thoáng mát với đế cao su tự nhiên.","Vải, đế cao su","Superga","Superga Sneakers","Ý");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (22,"S007WA0_C06_F18","Giày búp bê với kiểu dáng đơn giản, thoải mái và dễ dàng khi mang. Chất liệu vải canvas thoáng mát với đế cao su tự nhiên.","Vải, đế cao su","Superga","Superga Sneakers","Ý");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (23,"S007WA0_XDY_S18","Giày búp bê với kiểu dáng đơn giản, thoải mái và dễ dàng khi mang. Chất liệu vải canvas thoáng mát với đế cao su tự nhiên.","Vải, đế cao su","Superga","Superga Sneakers","Ý");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (24,"26132397_BLACK_S18","","Da","Clarks","Clarks Retail Sort 1","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (25,"26132420_SAND_S18","","Da","Clarks","Clarks Retail Sort 1","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (26,"26130933_NUDE_S18","Kiểu dáng cổ điển, đôi giày Isidora Faye mang phong cách sang trọng và vô cùng nữ tính.","Da, Đế nhựa","Clarks","Cushion Plus™","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (27,"26130987_BLACK_S18","Thiết kế gót giày với kiểu dáng block và chi tiết khóa to bản giúp tô điểm cho đôi Orabella Shine càng thêm lộng lẫy","Da, Đế nhựa","Clarks","Cushion Plus™","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (28,"26130985_NUDE_S18","Thiết kế gót giày với kiểu dáng block và chi tiết khóa to bản giúp tô điểm cho đôi Orabella Shine càng thêm lộng lẫy","Da, Đế nhựa","Clarks","Cushion Plus™","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (29,"26135175_BLACK_S19","","Da","Clarks","Clarks Retail Sort 2","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (30,"26138883_NUDE_S19","","Da","Clarks","Clarks Retail Sort 2","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (31,"26138928_D.GREY_S19","","Da","Clarks","Clarks Retail Sort 2","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (32,"26139306_BLACK_S19","","Da","Clarks","Clarks Retail Sort 2","Anh");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (33,"VN000ZBUEO1","Là phiên bản mini của các dòng giày Vans, thế nhưng do các sản phẩm Van’s Kid chỉ dành cho trẻ em nên Vans đã tối ưu chất lượng một cách tốt hơn. Đặc biệt, đảm bảo sự gọn nhẹ, êm ái để các bé có thể diện giày mà không gặp phải bất kì trở ngại hay khó khăn nào.","Vải, đế cao su","Converse ","Vans Kids' Slip On Checkerboard","Việt Nam");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (34,"VN000WWX6BT","Là phiên bản mini của các dòng giày Vans, thế nhưng do các sản phẩm Van’s Kid chỉ dành cho trẻ em nên Vans đã tối ưu chất lượng một cách tốt hơn. Đặc biệt, đảm bảo sự gọn nhẹ, êm ái để các bé có thể diện giày mà không gặp phải bất kì trở ngại hay khó khăn nào.","Vải, đế cao su","Converse ","Vans Kids' Slip On Checkerboard","Việt Nam");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (35,"VN000WWX6RT","Là phiên bản mini của các dòng giày Vans, thế nhưng do các sản phẩm Van’s Kid chỉ dành cho trẻ em nên Vans đã tối ưu chất lượng một cách tốt hơn. Đặc biệt, đảm bảo sự gọn nhẹ, êm ái để các bé có thể diện giày mà không gặp phải bất kì trở ngại hay khó khăn nào.","Vải, đế cao su","Converse ","Vans Kids' Slip On Checkerboard","Việt Nam");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (36,"VN000VHE6BT","Là phiên bản mini của các dòng giày Vans, thế nhưng do các sản phẩm Van’s Kid chỉ dành cho trẻ em nên Vans đã tối ưu chất lượng một cách tốt hơn. Đặc biệt, đảm bảo sự gọn nhẹ, êm ái để các bé có thể diện giày mà không gặp phải bất kì trở ngại hay khó khăn nào.","Vải, đế cao su","Converse ","Vans Kids' Slip On Checkerboard","Việt Nam");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (37,"327470C","Đối với những đôi giày Converse dành cho trẻ em, nhà Converse tập trung đánh vào kiểu dáng sao cho gọn nhẹ và tiện lợi nhất. Giúp các bé luôn có cảm giác thoải mái nhất khi mang. Với thiết kế Chuck Taylor gồm hai phiên bản cổ cao và cổ thấp huyền thoại hứa hẹn sẽ mang đến cho các bé nhà bạn những set đồ nổi bật nhất.","Vải, đế cao su","Converse","Chuck Taylor All Star Kid","Việt Nam");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (38,"327468C","Đối với những đôi giày Converse dành cho trẻ em, nhà Converse tập trung đánh vào kiểu dáng sao cho gọn nhẹ và tiện lợi nhất. Giúp các bé luôn có cảm giác thoải mái nhất khi mang. Với thiết kế Chuck Taylor gồm hai phiên bản cổ cao và cổ thấp huyền thoại hứa hẹn sẽ mang đến cho các bé nhà bạn những set đồ nổi bật nhất.","Vải, đế cao su","Converse","Chuck Taylor All Star Kid","Việt Nam");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (39,"327469C","Đối với những đôi giày Converse dành cho trẻ em, nhà Converse tập trung đánh vào kiểu dáng sao cho gọn nhẹ và tiện lợi nhất. Giúp các bé luôn có cảm giác thoải mái nhất khi mang. Với thiết kế Chuck Taylor gồm hai phiên bản cổ cao và cổ thấp huyền thoại hứa hẹn sẽ mang đến cho các bé nhà bạn những set đồ nổi bật nhất.","Vải, đế cao su","Converse","Chuck Taylor All Star Kid","Việt Nam");
insert into description(id_product,code,description_detail,material,brands,design,madein) values (40,"327467C","Đối với những đôi giày Converse dành cho trẻ em, nhà Converse tập trung đánh vào kiểu dáng sao cho gọn nhẹ và tiện lợi nhất. Giúp các bé luôn có cảm giác thoải mái nhất khi mang. Với thiết kế Chuck Taylor gồm hai phiên bản cổ cao và cổ thấp huyền thoại hứa hẹn sẽ mang đến cho các bé nhà bạn những set đồ nổi bật nhất.","Vải, đế cao su","Converse","Chuck Taylor All Star Kid","Việt Nam");


