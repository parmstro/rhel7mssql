-- Create a database schema for a _really_ basic ap that manages orders
-- Generate some random data - data generated by https://www.randomlists.com

CREATE DATABASE testdb;
GO

Use testdb;
GO

CREATE SCHEMA testschema;
GO

CREATE TABLE testschema.locations (
  ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  ImageURL NVARCHAR(256) NOT NULL,
  CityName NVARCHAR(50) NOT NULL,
  CountryName NVARCHAR(50) NOT NULL
);
GO

INSERT INTO testschema.locations (ImageURL, CityName, CountryName) VALUES
(N'https://www.randomlists.com/img/world-city-maps/pune_india.png', N'Pune', N'India'), 
(N'https://www.randomlists.com/img/world-city-maps/hong_kong_china.png', N'Hong Kong', N'China'), 
(N'https://www.randomlists.com/img/world-city-maps/jakarta_indonesia.png', N'Jakarta', N'Indonesia'), 
(N'https://www.randomlists.com/img/world-city-maps/dhaka_bangladesh.png', N'Dhaka', N'Bangladesh'), 
(N'https://www.randomlists.com/img/world-city-maps/cairo_egypt.png', N'Cairo', N'Egypt'), 
(N'https://www.randomlists.com/img/world-city-maps/nairobi_kenya.png', N'Nairobi', N'Kenya'), 
(N'https://www.randomlists.com/img/world-city-maps/bangkok_thailand.png', N'Bangkok', N'Thailand'), 
(N'https://www.randomlists.com/img/world-city-maps/yokohama_japan.png', N'Yokohama', N'Japan'), 
(N'https://www.randomlists.com/img/world-city-maps/istanbul_turkey.png', N'Istanbul', N'Turkey'), 
(N'https://www.randomlists.com/img/world-city-maps/seoul_south_korea.png', N'Seoul', N'South Korea'), 
(N'https://www.randomlists.com/img/world-city-maps/tianjin_china.png', N'Tianjin', N'China'), 
(N'https://www.randomlists.com/img/world-city-maps/madrid_spain.png', N'Madrid', N'Spain'), 
(N'https://www.randomlists.com/img/world-city-maps/mexico_city_mexico.png', N'Mexico City', N'Mexico'), 
(N'https://www.randomlists.com/img/world-city-maps/abidjan_ivory_coast.png', N'Abidjan', N'Ivory Coast'), 
(N'https://www.randomlists.com/img/world-city-maps/kinshasa_democratic_republic_of_the_congo.png', N'Kinshasa', N'Democratic Republic of the Congo'), 
(N'https://www.randomlists.com/img/world-city-maps/hanoi_vietnam.png', N'Hanoi', N'Vietnam'), 
(N'https://www.randomlists.com/img/world-city-maps/riyadh_saudi_arabia.png', N'Riyadh', N'Saudi Arabia'), 
(N'https://www.randomlists.com/img/world-city-maps/addis_ababa_ethiopia.png', N'Addis Ababa', N'Ethiopia'), 
(N'https://www.randomlists.com/img/world-city-maps/bogota_colombia.png', N'Bogota', N'Colombia'), 
(N'https://www.randomlists.com/img/world-city-maps/new_taipei_city_republic_of_china_taiwan_.png', N'New Taipei City', N'Republic of China (Taiwan)'), 
(N'https://www.randomlists.com/img/world-city-maps/lima_peru.png', N'Lima', N'Peru'), 
(N'https://www.randomlists.com/img/world-city-maps/rio_de_janeiro_brazil.png', N'Rio de Janeiro', N'Brazil'), 
(N'https://www.randomlists.com/img/world-city-maps/moscow_russia.png', N'Moscow', N'Russia'), 
(N'https://www.randomlists.com/img/world-city-maps/durban_south_africa.png', N'Durban', N'South Africa'), 
(N'https://www.randomlists.com/img/world-city-maps/sao_paulo_brazil.png', N'Sao Paulo', N'Brazil'), 
(N'https://www.randomlists.com/img/world-city-maps/jaipur_india.png', N'Jaipur', N'India'), 
(N'https://www.randomlists.com/img/world-city-maps/lahore_pakistan.png', N'Lahore', N'Pakistan'), 
(N'https://www.randomlists.com/img/world-city-maps/alexandria_egypt.png', N'Alexandria', N'Egypt'), 
(N'https://www.randomlists.com/img/world-city-maps/hyderabad_india.png', N'Hyderabad', N'India'), 
(N'https://www.randomlists.com/img/world-city-maps/ahmedabad_india.png', N'Ahmedabad', N'India'), 
(N'https://www.randomlists.com/img/world-city-maps/santiago_chile.png', N'Santiago', N'Chile'), 
(N'https://www.randomlists.com/img/world-city-maps/shenyang_china.png', N'Shenyang', N'China'), 
(N'https://www.randomlists.com/img/world-city-maps/ankara_turkey.png', N'Ankara', N'Turkey'), 
(N'https://www.randomlists.com/img/world-city-maps/suzhou_china.png', N'Suzhou', N'China'), 
(N'https://www.randomlists.com/img/world-city-maps/surat_india.png', N'Surat', N'India'), 
(N'https://www.randomlists.com/img/world-city-maps/shenzhen_china.png', N'Shenzhen', N'China'), 
(N'https://www.randomlists.com/img/world-city-maps/cape_town_south_africa.png', N'Cape Town', N'South Africa'), 
(N'https://www.randomlists.com/img/world-city-maps/johannesburg_south_africa.png', N'Johannesburg', N'South Africa'), 
(N'https://www.randomlists.com/img/world-city-maps/berlin_germany.png', N'Berlin', N'Germany'), 
(N'https://www.randomlists.com/img/world-city-maps/shanghai_china.png', N'Shanghai', N'China'), 
(N'https://www.randomlists.com/img/world-city-maps/casablanca_moroccoa.png', N'Casablanca', N'Morocco'), 
(N'https://www.randomlists.com/img/world-city-maps/yangon_myanmar.png', N'Yangon', N'Myanmar'), 
(N'https://www.randomlists.com/img/world-city-maps/beijing_china.png', N'Beijing', N'China'), 
(N'https://www.randomlists.com/img/world-city-maps/new_york_city_united_states.png', N'New York City', N'United States'), 
(N'https://www.randomlists.com/img/world-city-maps/tokyo_japan.png', N'Tokyo', N'Japan'), 
(N'https://www.randomlists.com/img/world-city-maps/kolkata_india.png', N'Kolkata', N'India'), 
(N'https://www.randomlists.com/img/world-city-maps/karachi_pakistan.png', N'Karachi', N'Pakistan'), 
(N'https://www.randomlists.com/img/world-city-maps/los_angeles_united_states.png', N'Los Angeles', N'United States'), 
(N'https://www.randomlists.com/img/world-city-maps/jeddah_saudi_arabia.png', N'Jeddah', N'Saudi Arabia'), 
(N'https://www.randomlists.com/img/world-city-maps/saint_petersburg_russia.png', N'Saint Petersburg', N'Russia'), 
(N'https://www.randomlists.com/img/world-city-maps/baghdad_iraq.png', N'Baghdad', N'Iraq'), 
(N'https://www.randomlists.com/img/world-city-maps/singapore_singapore.png', N'Singapore', N'Singapore'), 
(N'https://www.randomlists.com/img/world-city-maps/tehran_iran.png', N'Tehran', N'Iran'), 
(N'https://www.randomlists.com/img/world-city-maps/busan_south_korea.png', N'Busan', N'South Korea'), 
(N'https://www.randomlists.com/img/world-city-maps/delhi_india.png', N'Delhi', N'India'), 
(N'https://www.randomlists.com/img/world-city-maps/chennai_india.png', N'Chennai', N'India'), 
(N'https://www.randomlists.com/img/world-city-maps/pyongyang_north_korea.png', N'Pyongyang', N'North Korea'), 
(N'https://www.randomlists.com/img/world-city-maps/bangalore_india.png', N'Bangalore', N'India'), 
(N'https://www.randomlists.com/img/world-city-maps/london_united_kingdom.png', N'London', N'United Kingdom'), 
(N'https://www.randomlists.com/img/world-city-maps/dongguan_china.png', N'Dongguan', N'China'), 
(N'https://www.randomlists.com/img/world-city-maps/guangzhou_china.png', N'Guangzhou', N'China'), 
(N'https://www.randomlists.com/img/world-city-maps/mumbai_india.png', N'Mumbai', N'India'), 
(N'https://www.randomlists.com/img/world-city-maps/ho_chi_minh_city_vietnam.png', N'Ho Chi Minh City', N'Vietnam'), 
(N'https://www.randomlists.com/img/world-city-maps/lagos_nigeria.png', N'Lagos', N'Nigeria');
GO


CREATE TABLE testschema.measures (
  ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  Quantity INT NOT NULL DEFAULT(1),
  Name NVARCHAR(50) NOT NULL
);
GO

INSERT INTO testschema.measures (Quantity, Name) VALUES
(1, N'each'),
(1, N'gross'),
(1, N'case'),
(1, N'kg'),
(1, N'pair'),
(1, N'gaggle (12)'),
(1, N'bunch'),
(1, N'dozen'),
(1, N'ninty-nine'),
(1, N'bakers dozen'),
(1, N'bucket'),
(1, N'square foot'),
(1, N'piece (2kg)'),
(1, N'slab (10kg)'),
(1, N'haunch (50kg)'),
(1, N'na hundred wt. (100lbs)'),
(1, N'uk hundred wt. (112lbs)'),
(1, N'herd (50 head)'),
(1, N'100K!!'),
(1, N'pad'),
(1, N'lift (40 cases)'),
(1, N'container (40 lifts)'),
(1, N'ship (4000 containers)'),
(1, N'openshift (40000000 containers)'),
(1, N'six-pack'),
(1, N'half case'),
(1, N'2-4, eh'),
(1, N'case'),
(1, N'keg'),
(1, N'vat (Brewery 200HL)');
GO

CREATE TABLE testschema.items (
  ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  MeasureID INT NOT NULL DEFAULT(1),
  ImageURL NVARCHAR(256) NOT NULL,
  Name NVARCHAR(50) NOT NULL
);
GO

INSERT INTO testschema.items (MeasureID, ImageURL, Name) VALUES
(2, N'https://www.randomlists.com/img/things/soap.jpg', N'soap'), 
(2, N'https://www.randomlists.com/img/things/sponge.jpg', N'sponge'), 
(1, N'https://www.randomlists.com/img/things/television.jpg', N'television'), 
(1, N'https://www.randomlists.com/img/things/ring.jpg', N'ring'), 
(3, N'https://www.randomlists.com/img/things/tooth_picks.jpg', N'tooth picks'), 
(2, N'https://www.randomlists.com/img/things/nail_clippers.jpg', N'nail clippers'), 
(1, N'https://www.randomlists.com/img/things/checkbook.jpg', N'checkbook'), 
(1, N'https://www.randomlists.com/img/things/watch.jpg', N'watch'), 
(7, N'https://www.randomlists.com/img/things/flowers.jpg', N'flowers'), 
(1, N'https://www.randomlists.com/img/things/knife.jpg', N'knife'), 
(3, N'https://www.randomlists.com/img/things/rubber_band.jpg', N'rubber band'), 
(1, N'https://www.randomlists.com/img/things/bowl.jpg', N'bowl'), 
(5, N'https://www.randomlists.com/img/things/pants.jpg', N'pants'), 
(1, N'https://www.randomlists.com/img/things/keyboard.jpg', N'keyboard'), 
(2, N'https://www.randomlists.com/img/things/rusty_nail.jpg', N'rusty nail'), 
(1, N'https://www.randomlists.com/img/things/bracelet.jpg', N'bracelet'), 
(8, N'https://www.randomlists.com/img/things/glass.jpg', N'glass'), 
(1, N'https://www.randomlists.com/img/things/sofa.jpg', N'sofa'), 
(1, N'https://www.randomlists.com/img/things/mp3_player.jpg', N'mp3 player'), 
(8, N'https://www.randomlists.com/img/things/zipper.jpg', N'zipper'), 
(1, N'https://www.randomlists.com/img/things/drill_press.jpg', N'drill press'), 
(4, N'https://www.randomlists.com/img/things/cinder_block.jpg', N'cinder block'), 
(2, N'https://www.randomlists.com/img/things/playing_card.jpg', N'playing card'), 
(5, N'https://www.randomlists.com/img/things/paint_brush.jpg', N'paint brush'), 
(1, N'https://www.randomlists.com/img/things/book.jpg', N'book'), 
(1, N'https://www.randomlists.com/img/things/desk.jpg', N'desk'), 
(2, N'https://www.randomlists.com/img/things/nail_file.jpg', N'nail file'), 
(1, N'https://www.randomlists.com/img/things/clothes.jpg', N'clothes'), 
(8, N'https://www.randomlists.com/img/things/water_bottle.jpg', N'water bottle'), 
(1, N'https://www.randomlists.com/img/things/boom_box.jpg', N'boom box'), 
(1, N'https://www.randomlists.com/img/things/usb_drive.jpg', N'USB drive'), 
(1, N'https://www.randomlists.com/img/things/conditioner.jpg', N'conditioner'), 
(1, N'https://www.randomlists.com/img/things/pool_stick.jpg', N'pool stick'), 
(8, N'https://www.randomlists.com/img/things/pencil.jpg', N'pencil'), 
(1, N'https://www.randomlists.com/img/things/magnet.jpg', N'magnet'), 
(1, N'https://www.randomlists.com/img/things/blanket.jpg', N'blanket'), 
(1, N'https://www.randomlists.com/img/things/tomato.jpg', N'tomato'), 
(1, N'https://www.randomlists.com/img/things/greeting_card.jpg', N'greeting card'), 
(1, N'https://www.randomlists.com/img/things/rug.jpg', N'rug'), 
(1, N'https://www.randomlists.com/img/things/bottle_cap.jpg', N'bottle cap'), 
(1, N'https://www.randomlists.com/img/things/face_wash.jpg', N'face wash'), 
(1, N'https://www.randomlists.com/img/things/buckel.jpg', N'buckle'), 
(1, N'https://www.randomlists.com/img/things/wagon.jpg', N'wagon'), 
(1, N'https://www.randomlists.com/img/things/food.jpg', N'food'), 
(1, N'https://www.randomlists.com/img/things/spring.jpg', N'spring'), 
(1, N'https://www.randomlists.com/img/things/packing_peanuts.jpg', N'packing peanuts'), 
(1, N'https://www.randomlists.com/img/things/lamp.jpg', N'lamp'), 
(1, N'https://www.randomlists.com/img/things/tree.jpg', N'tree'), 
(1, N'https://www.randomlists.com/img/things/eye_liner.jpg', N'eye liner'), 
(1, N'https://www.randomlists.com/img/things/stop_sign.jpg', N'stop sign'), 
(1, N'https://www.randomlists.com/img/things/twister.jpg', N'twister'), 
(1, N'https://www.randomlists.com/img/things/picture_frame.jpg', N'picture frame'), 
(1, N'https://www.randomlists.com/img/things/bookmark.jpg', N'bookmark'), 
(1, N'https://www.randomlists.com/img/things/candle.jpg', N'candle'), 
(1, N'https://www.randomlists.com/img/things/lamp_shade.jpg', N'lamp shade'), 
(1, N'https://www.randomlists.com/img/things/chapter_book.jpg', N'chapter book'), 
(1, N'https://www.randomlists.com/img/things/purse.jpg', N'purse'), 
(1, N'https://www.randomlists.com/img/things/table.jpg', N'table'), 
(1, N'https://www.randomlists.com/img/things/street_lights.jpg', N'street lights'), 
(1, N'https://www.randomlists.com/img/things/chocolate.jpg', N'chocolate'), 
(1, N'https://www.randomlists.com/img/things/flag.jpg', N'flag'), 
(1, N'https://www.randomlists.com/img/things/grid_paper.jpg', N'grid paper'), 
(3, N'https://www.randomlists.com/img/things/soy_sauce_packet.jpg', N'soy sauce packet'), 
(1, N'https://www.randomlists.com/img/things/ipod.jpg', N'ipod'), 
(8, N'https://www.randomlists.com/img/things/eraser.jpg', N'eraser'), 
(1, N'https://www.randomlists.com/img/things/toothpaste.jpg', N'toothpaste'), 
(1, N'https://www.randomlists.com/img/things/clock.jpg', N'clock'), 
(1, N'https://www.randomlists.com/img/things/shovel.jpg', N'shovel'), 
(1, N'https://www.randomlists.com/img/things/cat.jpg', N'cat'), 
(1, N'https://www.randomlists.com/img/things/car.jpg', N'car'), 
(1, N'https://www.randomlists.com/img/things/canvas.jpg', N'canvas'), 
(1, N'https://www.randomlists.com/img/things/keys.jpg', N'keys'), 
(1, N'https://www.randomlists.com/img/things/sidewalk.jpg', N'sidewalk'), 
(1, N'https://www.randomlists.com/img/things/spoon.jpg', N'spoon'), 
(2, N'https://www.randomlists.com/img/things/glow_stick.jpg', N'glow stick'), 
(1, N'https://www.randomlists.com/img/things/doll.jpg', N'doll'), 
(2, N'https://www.randomlists.com/img/things/scotch_tape.jpg', N'scotch tape'), 
(3, N'https://www.randomlists.com/img/things/sand_paper.jpg', N'sand paper'), 
(1, N'https://www.randomlists.com/img/things/plastic_fork.jpg', N'plastic fork'), 
(1, N'https://www.randomlists.com/img/things/candy_wrapper.jpg', N'candy wrapper'), 
(1, N'https://www.randomlists.com/img/things/hair_brush.jpg', N'hair brush'), 
(6, N'https://www.randomlists.com/img/things/rubber_duck.jpg', N'rubber duck'), 
(8, N'https://www.randomlists.com/img/things/thread.jpg', N'thread'), 
(1, N'https://www.randomlists.com/img/things/fridge.jpg', N'fridge'), 
(1, N'https://www.randomlists.com/img/things/charger.jpg', N'charger'), 
(1, N'https://www.randomlists.com/img/things/sun_glasses.jpg', N'sun glasses'), 
(1, N'https://www.randomlists.com/img/things/button.jpg', N'button'), 
(3, N'https://www.randomlists.com/img/things/paper.jpg', N'paper'), 
(1, N'https://www.randomlists.com/img/things/phone.jpg', N'phone'), 
(20, N'https://www.randomlists.com/img/things/sticky_note.jpg', N'sticky note'), 
(2, N'https://www.randomlists.com/img/things/sticky_note.jpg', N'sticky note'), 
(3, N'https://www.randomlists.com/img/things/sticky_note.jpg', N'sticky note'), 
(12, N'https://www.randomlists.com/img/things/sticky_note.jpg', N'sticky note'), 
(17, N'https://www.randomlists.com/img/things/sticky_note.jpg', N'sticky note'), 
(21, N'https://www.randomlists.com/img/things/sticky_note.jpg', N'sticky note'), 
(22, N'https://www.randomlists.com/img/things/sticky_note.jpg', N'sticky note'), 
(23, N'https://www.randomlists.com/img/things/sticky_note.jpg', N'sticky note'), 
(24, N'https://www.randomlists.com/img/things/sticky_note.jpg', N'sticky note'), 
(5, N'https://www.randomlists.com/img/things/speakers.jpg', N'speakers'), 
(8, N'https://www.randomlists.com/img/things/sharpie.jpg', N'sharpie'), 
(1, N'https://www.randomlists.com/img/things/clay_pot.jpg', N'clay pot'), 
(1, N'https://www.randomlists.com/img/things/milk.jpg', N'milk'), 
(1, N'https://www.randomlists.com/img/things/air_freshener.jpg', N'air freshener'), 
(1, N'https://www.randomlists.com/img/things/twezzers.jpg', N'twezzers'), 
(1, N'https://www.randomlists.com/img/things/bottle.jpg', N'bottle'), 
(9, N'https://www.randomlists.com/img/things/balloon.jpg', N'balloon'), 
(1, N'https://www.randomlists.com/img/things/mop.jpg', N'mop'), 
(1, N'https://www.randomlists.com/img/things/door.jpg', N'door'), 
(5, N'https://www.randomlists.com/img/things/shoes.jpg', N'shoes'), 
(1, N'https://www.randomlists.com/img/things/tire_swing.jpg', N'tire swing'), 
(1, N'https://www.randomlists.com/img/things/bed.jpg', N'bed'), 
(1, N'https://www.randomlists.com/img/things/photo_album.jpg', N'photo album'), 
(8, N'https://www.randomlists.com/img/things/hanger.jpg', N'hanger'), 
(1, N'https://www.randomlists.com/img/things/ice_cube_tray.jpg', N'ice cube tray'), 
(1, N'https://www.randomlists.com/img/things/shirt.jpg', N'shirt'), 
(8, N'https://www.randomlists.com/img/things/apple.jpg', N'apple'), 
(1, N'https://www.randomlists.com/img/things/drawer.jpg', N'drawer'), 
(1, N'https://www.randomlists.com/img/things/washing_machine.jpg', N'washing machine'), 
(1, N'https://www.randomlists.com/img/things/credit_card.jpg', N'credit card'), 
(1, N'https://www.randomlists.com/img/things/needle.jpg', N'needle'), 
(1, N'https://www.randomlists.com/img/things/chair.jpg', N'chair'), 
(5, N'https://www.randomlists.com/img/things/leg_warmers.jpg', N'leg warmers'), 
(1, N'https://www.randomlists.com/img/things/mirror.jpg', N'mirror'), 
(8, N'https://www.randomlists.com/img/things/fake_flowers.jpg', N'fake flowers'), 
(1, N'https://www.randomlists.com/img/things/remote.jpg', N'remote'), 
(4, N'https://www.randomlists.com/img/things/carrots.jpg', N'carrots'), 
(1, N'https://www.randomlists.com/img/things/wallet.jpg', N'wallet'), 
(5, N'https://www.randomlists.com/img/things/stockings.jpg', N'stockings'), 
(3, N'https://www.randomlists.com/img/things/box.jpg', N'box'), 
(1, N'https://www.randomlists.com/img/things/vase.jpg', N'vase'), 
(1, N'https://www.randomlists.com/img/things/perfume.jpg', N'perfume'), 
(10, N'https://www.randomlists.com/img/things/bread.jpg', N'bread'), 
(1, N'https://www.randomlists.com/img/things/shampoo.jpg', N'shampoo'), 
(4, N'https://www.randomlists.com/img/things/brocolli.jpg', N'brocolli'), 
(1, N'https://www.randomlists.com/img/things/shawl.jpg', N'shawl'), 
(1, N'https://www.randomlists.com/img/things/clamp.jpg', N'clamp'), 
(4, N'https://www.randomlists.com/img/things/bananas.jpg', N'bananas'), 
(1, N'https://www.randomlists.com/img/things/pillow.jpg', N'pillow'), 
(1, N'https://www.randomlists.com/img/things/deodorant_.jpg', N'deodorant '), 
(1, N'https://www.randomlists.com/img/things/lotion.jpg', N'lotion'), 
(1, N'https://www.randomlists.com/img/things/tv.jpg', N'tv'), 
(1, N'https://www.randomlists.com/img/things/outlet.jpg', N'outlet'), 
(1, N'https://www.randomlists.com/img/things/lace.jpg', N'lace'), 
(1, N'https://www.randomlists.com/img/things/toe_ring.jpg', N'toe ring'), 
(5, N'https://www.randomlists.com/img/things/sandal.jpg', N'sandal'), 
(1, N'https://www.randomlists.com/img/things/cork.jpg', N'cork'), 
(8, N'https://www.randomlists.com/img/things/coasters.jpg', N'coasters'), 
(1, N'https://www.randomlists.com/img/things/newspaper.jpg', N'newspaper'), 
(1, N'https://www.randomlists.com/img/things/controller.jpg', N'controller'), 
(1, N'https://www.randomlists.com/img/things/monitor.jpg', N'monitor'), 
(1, N'https://www.randomlists.com/img/things/window.jpg', N'window'), 
(1, N'https://www.randomlists.com/img/things/camera.jpg', N'camera'), 
(1, N'https://www.randomlists.com/img/things/thermometer.jpg', N'thermometer'), 
(5, N'https://www.randomlists.com/img/things/slipper.jpg', N'slipper'), 
(1, N'https://www.randomlists.com/img/things/cup.jpg', N'cup'), 
(1, N'https://www.randomlists.com/img/things/model_car.jpg', N'model car'), 
(1, N'https://www.randomlists.com/img/things/radio.jpg', N'radio'), 
(1, N'https://www.randomlists.com/img/things/seat_belt.jpg', N'seat belt'), 
(1, N'https://www.randomlists.com/img/things/house.jpg', N'house'), 
(1, N'https://www.randomlists.com/img/things/sketch_pad.jpg', N'sketch pad'), 
(1, N'https://www.randomlists.com/img/things/key_chain.jpg', N'key chain'), 
(11, N'https://www.randomlists.com/img/things/puddle.jpg', N'puddle'), 
(1, N'https://www.randomlists.com/img/things/sailboat.jpg', N'sailboat'), 
(1, N'https://www.randomlists.com/img/things/thermostat.jpg', N'thermostat'), 
(1, N'https://www.randomlists.com/img/things/video_games.jpg', N'video games'), 
(1, N'https://www.randomlists.com/img/things/fork.jpg', N'fork'), 
(1, N'https://www.randomlists.com/img/things/truck.jpg', N'truck'), 
(5, N'https://www.randomlists.com/img/things/socks.jpg', N'socks'), 
(2, N'https://www.randomlists.com/img/things/lip_gloss.jpg', N'lip gloss'), 
(3, N'https://www.randomlists.com/img/things/tissue_box.jpg', N'tissue box'), 
(1, N'https://www.randomlists.com/img/things/bow.jpg', N'bow'), 
(1, N'https://www.randomlists.com/img/things/blouse.jpg', N'blouse'), 
(1, N'https://www.randomlists.com/img/things/pen.jpg', N'pen'), 
(5, N'https://www.randomlists.com/img/things/glasses.jpg', N'glasses'), 
(8, N'https://www.randomlists.com/img/things/soda_can.jpg', N'soda can'), 
(3, N'https://www.randomlists.com/img/things/screw.jpg', N'screw'), 
(1, N'https://www.randomlists.com/img/things/hair_tie.jpg', N'hair tie'), 
(1, N'https://www.randomlists.com/img/things/piano.jpg', N'piano'), 
(12, N'https://www.randomlists.com/img/things/floor.jpg', N'floor'), 
(1, N'https://www.randomlists.com/img/things/cd.jpg', N'CD'), 
(5, N'https://www.randomlists.com/img/things/shoe_lace.jpg', N'shoe lace'), 
(8, N'https://www.randomlists.com/img/things/chalk.jpg', N'chalk'), 
(1, N'https://www.randomlists.com/img/things/white_out.jpg', N'white out'), 
(1, N'https://www.randomlists.com/img/things/cookie_jar.jpg', N'cookie jar'), 
(1, N'https://www.randomlists.com/img/things/cell_phone.jpg', N'cell phone'), 
(1, N'https://www.randomlists.com/img/things/mouse_pad.jpg', N'mouse pad'), 
(1, N'https://www.randomlists.com/img/things/toilet.jpg', N'toilet'), 
(5, N'https://www.randomlists.com/img/things/headphones.jpg', N'headphones'), 
(1, N'https://www.randomlists.com/img/things/computer.jpg', N'computer'), 
(1, N'https://www.randomlists.com/img/things/towel.jpg', N'towel'), 
(1, N'https://www.randomlists.com/img/things/toothbrush.jpg', N'toothbrush'), 
(1, N'https://www.randomlists.com/img/things/teddies.jpg', N'teddies'), 
(12, N'https://www.randomlists.com/img/things/beef.jpg', N'beef'), 
(13, N'https://www.randomlists.com/img/things/beef.jpg', N'beef'), 
(14, N'https://www.randomlists.com/img/things/beef.jpg', N'beef'), 
(15, N'https://www.randomlists.com/img/things/beef.jpg', N'beef'), 
(16, N'https://www.randomlists.com/img/things/beef.jpg', N'beef'), 
(17, N'https://www.randomlists.com/img/things/beef.jpg', N'beef'), 
(18, N'https://www.randomlists.com/img/things/beef.jpg', N'beef'), 
(1, N'https://www.randomlists.com/img/things/helmet.jpg', N'helmet'), 
(19, N'https://www.randomlists.com/img/things/money.jpg', N'money'), 
(1, N'https://www.randomlists.com/img/things/plate.jpg', N'plate'), 
(1, N'https://www.randomlists.com/img/things/bag.jpg', N'bag'), 
(1, N'https://www.randomlists.com/img/things/couch.jpg', N'couch'),
(1, N'https://www.randomlists.com/img/things/bottle.jpg', N'beer'),
(25, N'https://www.randomlists.com/img/things/bottle.jpg', N'beer'),
(26, N'https://www.randomlists.com/img/things/bottle.jpg', N'beer'),
(27, N'https://www.randomlists.com/img/things/bottle.jpg', N'beer'),
(28, N'https://www.randomlists.com/img/things/bottle.jpg', N'beer'),
(29, N'https://www.randomlists.com/img/things/bottle.jpg', N'beer'),
(30, N'https://www.randomlists.com/img/things/bottle.jpg', N'beer');
GO


CREATE TABLE testschema.employees (
  ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  LocationID INT NOT NULL,
  Name NVARCHAR(50) NOT NULL
);
GO

INSERT INTO testschema.employees (LocationID, Name) VALUES
(33, N'Jared Tallent'),
(24, N'Nikita Khrushchev'),
(1, N'Geeta Phogat'),
(39, N'Thomas Hasler'),
(17, N'John A. MacDonald'),
(44, N'Chris Runge'),
(12, N'Michael Lessard'),
(48, N'Anthony Green'),
(2, N'Kim Li'),
(59, N'Paul Pinkney'),
(45, N'Jane Circle');
GO

CREATE TABLE testschema.customers (
  ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  LocationID INT NOT NULL,
  Name NVARCHAR(50) NOT NULL
);
GO

INSERT INTO testschema.customers (LocationID, Name) VALUES
(3, N'Panasonic Corporation'), 
(29, N'Credit Suisse'), 
(44, N'Pampers'), 
(44, N'United Parcel Service'), 
(22, N'Nescafé'), 
(35, N'Intel Corporation'), 
(36, N'Citigroup'), 
(44, N'Global Gillette'), 
(48, N'H&M'), 
(44, N'Harley-Davidson Motor Company'), 
(39, N'Volkswagen Group'), 
(44, N'IBM'), 
(48, N'Oracle Corporation'), 
(48, N'Cisco Systems, Inc.'), 
(59, N'Johnnie Walker'), 
(21, N'Gucci'), 
(48, N'eBay'), 
(17, N'Johnson & Johnson'), 
(12, N'Sprite'), 
(8, N'Mitsubishi'), 
(25, N'Deere & Company'), 
(39, N'Cartier SA'), 
(39, N'Mercedes-Benz'), 
(48, N'MasterCard'), 
(17, N'Audi'), 
(9, N'McDonald''s'), 
(59, N'Jack Daniel''s'), 
(8, N'Sony'), 
(4, N'Louis Vuitton'), 
(21, N'IKEA'), 
(10, N'Samsung Group'), 
(8, N'Honda Motor Company, Ltd'), 
(24, N'Zara'), 
(32, N'Ralph Lauren Corporation'), 
(39, N'Porsche'), 
(37, N'Pizza Hut'), 
(47, N'Nike, Inc.'), 
(20, N'Nintendo'), 
(48, N'Facebook, Inc.'), 
(8, N'Nissan Motor Co., Ltd.'), 
(33, N'The Walt Disney Company'), 
(59, N'Microsoft'), 
(61, N'Beko'), 
(12, N'Moët et Chandon'), 
(44, N'Bank of America'), 
(44, N'Hewlett-Packard'), 
(8, N'Heineken Brewery'), 
(36, N'Nokia'), 
(48, N'Yahoo!'), 
(46, N'PepsiCo'), 
(50, N'Smirnoff'), 
(52, N'Wal-Mart'), 
(45, N'Ferrari S.p.A.'), 
(52, N'Hermès'), 
(52, N'NTT Data'), 
(48, N'Adobe Systems'), 
(45, N'Canon'), 
(44, N'Google'), 
(43, N'KFC'), 
(44, N'Chase'), 
(13, N'Corona'), 
(48, N'Home Depot'), 
(17, N'Kleenex'), 
(39, N'SAP'), 
(39, N'Vodafone'), 
(48, N'Apple Inc.'), 
(31, N'Budweiser Stag Brewing Company'), 
(41, N'VISA'), 
(41, N'Adidas'), 
(28, N'HSBC'), 
(54, N'Kia Motors'), 
(55, N'BlackBerry'), 
(17, N'Xerox'), 
(44, N'Verizon Communications'), 
(36, N'Amazon.com'), 
(21, N'Caterpillar Inc.'), 
(31, N'General Electric'), 
(27, N'American Express'), 
(48, N'Wells Fargo'), 
(17, N'Prada'), 
(59, N'Morgan Stanley'), 
(59, N'L''Oréal'), 
(39, N'Siemens AG'), 
(8, N'Toyota Motor Corporation'), 
(54, N'Hyundai'), 
(39, N'BMW'), 
(41, N'Starbucks'), 
(64, N'Tesco Corporation'), 
(25, N'AT&T'), 
(25, N'Shell Oil Company'), 
(44, N'Kellogg Company'), 
(48, N'MTV'), 
(44, N'Tiffany & Co.'), 
(59, N'Avon'), 
(18, N'Coca-Cola'), 
(26, N'Allianz'), 
(2, N'Gap Inc.'), 
(59, N'Burberry'), 
(13, N'3M'); 
GO


CREATE TABLE testschema.orders (
  ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  EmployeeID INT NOT NULL,
  CustomerID INT NOT NULL,
  DateOrdered DateTime NOT NULL,
  DateShipped DateTime,
  Paid BIT NOT NULL DEFAULT(0)
);
GO

CREATE TABLE testschema.orderdetails (
  ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  OrderID INT NOT NULL,
  Qty INT NOT NULL,
  MeasureID INT NOT NULL,
  ItemID INT NOT NULL,
  Picked BIT NOT NULL DEFAULT(0)
);
GO

CREATE PROCEDURE testschema.generateOrder 
AS
BEGIN

DECLARE @totalEmployees INT    -- the total number of employees
DECLARE @totalCustomers INT    -- the total number of customers
DECLARE @totalItems INT        -- the total number of items

DECLARE @EmployeeID INT        -- the employee that made the order
DECLARE @CustomerID INT        -- the customer that gets the order
DECLARE @OrderID INT           -- the orderID for the items to be attached to
DECLARE @ItemID INT            -- the itemID of the item to order
DECLARE @MeasureID INT         -- the measurement units that the quantity of the order item is in.
DECLARE @countItems INT        -- random number of items in the order
DECLARE @counter INT 	       -- an iterator
DECLARE @Qty INT					 -- the number of items of a given itemid to be ordered.

-- Generate a random order of items for a random customer and assign it to a random employee
SET @totalEmployees = (SELECT COUNT(*) FROM testschema.employees)
SET @totalCustomers = (SELECT COUNT(*) FROM testschema.customers)
SET @totalItems = (SELECT COUNT(*) FROM testschema.items)

WHILE (@EmployeeID IS NULL)
  BEGIN
    SET @EmployeeID = (SELECT id FROM testschema.employees WHERE id = (SELECT FLOOR(RAND()*(@totalEmployees-1)+1)))
  END

WHILE (@CustomerID IS NULL)
  BEGIN
    SET @CustomerID = (SELECT id FROM customers WHERE id = (SELECT FLOOR(RAND()*(@totalCustomers-1)+1)))
  END

SET @countItems = (SELECT FLOOR(RAND()*(20-1)+1))

BEGIN TRANSACTION
  INSERT INTO testschema.orders (EmployeeID, CustomerID, DateOrdered) VALUES
  (@EmployeeID, @CustomerID, GETDATE())
  SET @OrderID = (SELECT @@IDENTITY)
  SET @counter = 1
  WHILE (@counter <= @countItems)
    BEGIN
      WHILE (@ItemID IS NULL)
        BEGIN
          SET @ItemID = (SELECT id FROM testschema.items WHERE id = (SELECT FLOOR(RAND()*(@totalItems-1)+1)))
        END -- WHILE
      SET @MeasureID = (SELECT measureid FROM testschema.items WHERE id = @ItemID)
      SET @Qty = (SELECT FLOOR(RAND()*(20-1)+1))
      INSERT INTO testschema.orderdetails (OrderID, Qty, MeasureID, ItemID) VALUES
      (@OrderID, @Qty, @MeasureID, @ItemID)
      SET @counter = @counter + 1
      SET @ItemID = NULL
    END -- WHILE
COMMIT TRANSACTION

SELECT @OrderID AS OrderID

END -- SPROC
;
GO

EXEC testschema.generateOrder;
GO

CREATE PROCEDURE testschema.getOrderAndDetails (@OrderID INT)
AS
BEGIN
  SELECT
    O.id AS OrderID,
    E.id AS EmployeeID,
    C.id AS CustomerID,
    E.name AS EmployeeName, 
    L.cityname AS EmployeeLocation,
    L.imageURL AS EmployeeMap, 
    C.name AS CustomerName, 
    L2.cityname AS CustomerCity, 
    L2.countryname AS CustomerCountry,
    L2.imageURL AS CustomerMap,
    O.dateordered AS DateOrdered
  FROM
    testschema.orders AS O
  INNER JOIN testschema.employees AS E ON E.id = O.employeeid 
  INNER JOIN testschema.locations AS L ON E.locationid = L.id
  INNER JOIN testschema.customers AS C ON C.id = O.customerid
  INNER JOIN testschema.locations AS L2 ON C.locationid = L2.id
  WHERE O.id = @OrderID

  SELECT
    I.id AS ItemID,
    OD.qty AS Qty,
    M.name As UnitOfMeasure,
    I.name AS ItemName, 
    I.ImageURL AS ItemPicture,		
    OD.picked AS ItemPickedForDelivery
  FROM
    orderdetails AS OD
  INNER JOIN testschema.measures AS M ON M.id = OD.measureid
  INNER JOIN testschema.items AS I ON I.id = OD.itemid
  WHERE OD.orderid = @OrderID
END
;

GO
