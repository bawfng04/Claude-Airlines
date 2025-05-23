-- Chèn dữ liệu mẫu vào bảng faq
INSERT INTO faq (question, answer, category)
VALUES
-- Booking
(
  'How do I book a flight?',
  'To book a flight, navigate to our homepage and use the booking form. Enter your departure and arrival destinations, select your travel dates, and click ''Search Flights''. You''ll then be presented with available options where you can select your preferred flight and complete the booking process by entering passenger details and payment information.',
  'Booking'
),
(
  'Can I book a flight for someone else?',
  'Yes, you can book a flight for someone else. Simply enter their details in the passenger information section during the booking process.',
  'Booking'
),
(
  'What payment methods do you accept?',
  'We accept major credit cards, debit cards, and online payment methods such as PayPal. Some routes may also allow payment via bank transfer.',
  'Booking'
),
-- Baggage
(
  'What is your baggage allowance policy?',
  'Our standard baggage allowance includes one carry-on bag (max. 7kg) and one checked bag (max. 23kg) per passenger. Premium and business class passengers are entitled to additional baggage allowance. Excess baggage can be purchased during booking or at check-in. Please note that specific routes may have different restrictions, so we recommend checking your flight details.',
  'Baggage'
),
(
  'Can I bring sports equipment as checked baggage?',
  'Yes, sports equipment such as golf clubs, skis, and bicycles can be checked in. Additional fees may apply depending on the size and weight of the equipment.',
  'Baggage'
),
(
  'What items are prohibited in carry-on baggage?',
  'Prohibited items include sharp objects, flammable liquids, and any items that pose a security risk. Please check our website for a full list of restricted items.',
  'Baggage'
),
-- Reservation
(
  'Can I change or cancel my reservation?',
  'Yes, changes and cancellations can be made through your account on our website or by contacting our customer service. Changes made at least 24 hours before departure typically incur a change fee plus any fare difference. Cancellation policies vary based on the fare type you purchased - flexible fares offer more generous cancellation terms compared to promotional fares.',
  'Reservation'
),
(
  'How do I check my booking status?',
  'You can check your booking status by logging into your account on our website or using the booking reference number provided in your confirmation email.',
  'Reservation'
),
(
  'What happens if I miss my flight?',
  'If you miss your flight, please contact our customer service team immediately. Depending on your fare type, you may be able to rebook for a later flight with an additional fee.',
  'Reservation'
),
-- Membership
(
  'How do I join your frequent flyer program?',
  'Joining our frequent flyer program is easy and free. Simply click on the ''Join Now'' button on our website and complete the registration form. Once registered, you''ll receive a membership number that you can use when booking flights to earn miles. These miles can be redeemed for free flights, upgrades, and various other rewards with our partner airlines and businesses.',
  'Membership'
),
(
  'How do I redeem my frequent flyer miles?',
  'You can redeem your miles for free flights, seat upgrades, and other rewards through your account on our website. Simply log in and navigate to the ''Redeem Miles'' section.',
  'Membership'
),
(
  'Do my frequent flyer miles expire?',
  'Yes, miles typically expire after 24 months of inactivity. To keep your account active, ensure you earn or redeem miles within this period.',
  'Membership'
),
-- Accessibility
(
  'Do you provide special assistance for passengers with disabilities?',
  'Yes, we offer special assistance services for passengers with disabilities or reduced mobility. These services include wheelchair assistance, priority boarding, and special seating arrangements. To ensure a smooth travel experience, please inform us of any requirements at least 48 hours before your flight by contacting our customer service team or including this information during the booking process.',
  'Accessibility'
),
(
  'Can I travel with a service animal?',
  'Yes, service animals are allowed on our flights. Please provide documentation and notify us at least 48 hours before your flight to ensure proper arrangements.',
  'Accessibility'
),
(
  'Are there special facilities for visually impaired passengers?',
  'Yes, we provide assistance for visually impaired passengers, including priority boarding and in-flight support. Please inform us of your needs during booking.',
  'Accessibility'
),
-- Health & Safety
(
  'What COVID-19 measures are currently in place?',
  'We continue to maintain enhanced hygiene protocols on all our flights. These include regular disinfection of high-touch surfaces, HEPA air filters on aircraft, and modified meal services where appropriate. Requirements for testing, vaccination, or mask-wearing vary by destination and are regularly updated in line with local regulations. Please check the latest requirements for your specific route before traveling.',
  'Health & Safety'
),
(
  'Do I need a COVID-19 test before flying?',
  'Testing requirements vary by destination. Please check the latest travel advisories for your departure and arrival locations.',
  'Health & Safety'
),
(
  'What should I do if I feel unwell before my flight?',
  'If you feel unwell, we recommend consulting a doctor and contacting our customer service team to discuss your options for rescheduling your flight.',
  'Health & Safety'
),
-- Travel Guidelines
(
  'How early should I arrive at the airport?',
  'We recommend arriving at the airport at least 2 hours before domestic flights and 3 hours before international flights. This allows adequate time for check-in, security screening, immigration procedures (for international flights), and boarding. During peak travel seasons or at busy airports, you may want to allow additional time to avoid any stress from unexpected delays.',
  'Travel Guidelines'
),
(
  'What documents do I need for international travel?',
  'For international travel, you will need a valid passport, visa (if required), and any additional documents specified by the destination country. Please check the entry requirements before your trip.',
  'Travel Guidelines'
),
(
  'Can I bring food and drinks on board?',
  'Yes, you can bring food and non-alcoholic beverages on board. However, liquids must comply with the 100ml limit for carry-on baggage.',
  'Travel Guidelines'
);


INSERT INTO ABOUT_US (title, content)
VALUES
('Our Story', "Founded in 1998, our airline began with a small fleet of just 3 aircraft serving domestic routes. Today, we've grown to become one of Southeast Asia's leading carriers, connecting passengers to over 100 destinations worldwide with a modern fleet of 78 aircraft."),
('Our Mission', 'To connect people and places with safe, reliable air travel that is accessible to all, while delivering exceptional service that exceeds expectations at every step of the journey.'),
('Our Vision', 'To be recognized globally as the airline of choice, known for innovation, sustainability, and a customer 
experience that sets the industry standard.');

INSERT INTO CORE_VALUE (title, description, icon)
VALUES
('Customer Focus', 'We prioritize our customers in everything we do, ensuring their needs and preferences are at the forefront of our services.', 'FaUsers'),
('Safety First', 'Safety is non-negotiable, and we maintain the highest standards in all our operations.', 'FaCheckCircle'),
('Excellence', 'We strive for excellence in every aspect of our service, continuously improving to exceed expectations.', 'FaMedal'),
('Reliability', 'We keep our promises to passengers, with punctuality and dependability in all our operations.', 'FaHistory');

INSERT INTO ACHIEVEMENTS (title, description, year)
VALUES
('Best Airline in Asia', 'Awarded by Skytrax World Airline Awards for the second consecutive year', '2024'),
('Best Airline in Southeast Asia', 'Awarded by Skytrax World Airline Awards for the third consecutive year', '2023'),
('Top 10 Airlines Worldwide', 'Ranked by AirlineRatings.com for safety and service excellence', '2022'),
('Green Airline of the Year', 'Recognized for our commitment to sustainability and reducing carbon emissions', '2021'),
('Best Cabin Crew', 'Awarded by Skytrax World Airline Awards for outstanding service and hospitality', '2020'),
('Best Low-Cost Airline', 'Recognized for providing affordable travel options without compromising on quality', '2019'),
('Most Innovative Airline', 'Awarded for our use of technology to enhance the passenger experience', '2018');


INSERT INTO LEADERSHIP_TEAM (name, position, bio)
VALUES
('John Doe', 'CEO', "John has over 20 years of experience in the aviation industry and has been instrumental in the airline's growth and success. He is passionate about customer service and innovation."),
('Jane Smith', 'CFO', "Jane is a seasoned finance professional with a strong background in corporate finance and strategic planning. She ensures the airline's financial health and sustainability."),
('Michael Brown', 'COO', "Michael oversees the airline's operations, ensuring safety, efficiency, and reliability in all aspects of our service."),
('Emily Davis', 'CMO', 'Emily leads the marketing and customer experience teams, focusing on enhancing brand loyalty and customer satisfaction.');

INSERT INTO AIRLINE_FLEET (aircraft_model, description)
VALUES
('Boeing 737 MAX', "The Boeing 737 MAX is a narrow-body aircraft designed for short to medium-haul routes, featuring advanced aerodynamics and fuel efficiency."),
('Airbus A320', 'The Airbus A320 is a popular choice for airlines around the world, offering comfort and advanced technology for passengers and crew.'),
('Boeing 787 Dreamliner', 'The Boeing 787 Dreamliner is a long-haul aircraft that provides exceptional fuel efficiency and passenger comfort with its spacious cabin and modern amenities.'),
('Airbus A350', 'The Airbus A350 is a state-of-the-art long-haul aircraft designed for maximum comfort and fuel efficiency, featuring the latest in aviation technology.');

INSERT INTO AIRLINE_EXPERIENCE (title)
VALUES
('Comfort Above All'),
('Culinary Excellence'),
('Our Fleet');

INSERT INTO EXPERIENCE_DESCRIPTION (airline_experience_id, description)
VALUES
(1, 'Our aircraft are equipped with ergonomically designed seats, providing optimal comfort even on long-haul flights. With generous legroom and adjustable headrests, you can relax and arrive at your destination feeling refreshed.'),
(1, 'Premium cabins feature fully-flat beds and private suites for an unparalleled travel experience.'),
(2, 'We believe that airline food should be something to look forward to. Our menus are crafted by award-winning chefs, featuring both international favorites and local specialties from our destination countries.'),
(2, 'All meals are prepared using fresh, high-quality ingredients, with special dietary requirements accommodated with advance notice.'),
(3, 'Our fleet consists of modern, fuel-efficient aircraft designed for comfort and sustainability. Each aircraft is equipped with the latest technology to ensure a smooth and enjoyable flight.'),
(3, 'We continuously invest in our fleet to enhance passenger comfort and reduce our environmental impact, with a commitment to sustainability at the core of our operations.');

INSERT IGNORE INTO `USERS` (`ID`, `FAMILY_NAME`, `GIVEN_NAME`, `EMAIL`, `PASSWORD`, `BIRTHDAY`, `NATIONALITY`, `ROLE`, `ACTIVE`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'Admin', 'User', 'admin@claudeair.test', '$2y$10$placeholderhashfortestingonly1', '1990-01-01', 'Testland', 'ADMIN', 1, NOW(), NOW()),
(2, 'Test', 'User', 'user@claudeair.test', '$2y$10$placeholderhashfortestingonly2', '1995-05-10', 'Testland', 'USER', 1, NOW(), NOW()),
(3, 'Vlogger', 'Pro', 'pro.vlogger@claudeair.test', '$2y$10$placeholderhashfortestingonly3', '1988-11-20', 'Travelonia', 'ADMIN', 1, NOW(), NOW()),
(4, 'Commenter', 'Frequent', 'freq.commenter@email.test', '$2y$10$placeholderhashfortestingonly4', '2000-03-15', 'Blogland', 'USER', 1, NOW(), NOW());


INSERT INTO `vlog_posts` (`id`, `user_id`, `title`, `slug`, `introduction`, `main_content`, `featured_image`, `gallery_images`, `status`, `no_of_ratings`, `average_rating`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sunrise Magic at Angkor Wat', 'sunrise-magic-angkor-wat', 'Experience the unforgettable dawn spectacle at Cambodia\'s iconic Angkor Wat. Watch as the ancient temple silhouette emerges against a sky painted in vibrant hues. This UNESCO site offers a truly spiritual and visually stunning start, reflecting perfectly in the pools. A must-do.', 'Arriving before dawn, the air hums with quiet anticipation. Finding a spot near the reflection pools offers the best view as the sky shifts from deep indigo to soft pastels, then fiery orange. The five iconic towers slowly etch themselves against the brightening horizon. It’s a collective moment of awe, connecting you instantly to the grandeur and history of the Khmer empire. Remember your camera, but also take time to simply absorb the atmosphere without a lens. The tranquility mixed with the scale is powerful.\r\n\r\nOnce sunlight floods the complex, the intricate details come alive. Spend time exploring the vast galleries adorned with bas-reliefs depicting Hindu epics and historical scenes. The sheer amount of detailed carving is staggering, telling stories of gods, battles, and daily life centuries ago. Appreciate the architectural genius, from the steep stairways representing Mount Meru to the symmetrical layout. Wear comfortable shoes, as exploring the grounds takes time, and every corner reveals new perspectives and hidden details worth discovering. It\'s easy to spend hours here.\r\n\r\nExpand your exploration beyond Angkor Wat to nearby temples like Bayon and Ta Prohm. Bayon, within Angkor Thom, mesmerizes with its giant, smiling stone faces, offering a distinctly different feel. Ta Prohm, famously engulfed by massive tree roots, showcases the dramatic interplay between nature and ancient structures, creating photogenic and atmospheric scenes. Hiring a tuk-tuk driver for the day is highly recommended to efficiently navigate the distances between these major sites within the larger archaeological park, allowing you to experience their unique characters without exhaustion.\r\n\r\nPractical tips enhance the visit. Dress respectfully (shoulders and knees covered). Stay hydrated, especially in the heat. Consider hiring a local guide for deeper insights into the history and symbolism – it truly elevates the experience. While sunrise is popular, late afternoon offers beautiful golden light and potentially thinner crowds for a different perspective. Siem Reap provides ample accommodation and food options nearby. Planning ahead ensures a smoother and more enjoyable exploration of this world wonder. Remember to pace yourself!', 'https://images.unsplash.com/photo-1653959956536-0fe87d1c0ac4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '["/uploads/vlog/barca.jpg", "/uploads/vlog/chom.png", "/uploads/vlog/hanoi.jpg", "/uploads/vlog/london.jpeg", "/uploads/vlog/paris.jpg", "/uploads/vlog/newyork.jpg"]', 'published', 3, 4.7, '2025-04-18 01:02:01', '2025-05-08 02:19:10'),
(2, 3, 'Tokyo Contrasts: Neon & Nature', 'tokyo-contrasts-neon-nature', 'Dive into the electric energy of Tokyo, a city of fascinating contrasts. Experience the iconic Shibuya Scramble, explore trendy Harajuku, and then find serenity in vast gardens or ancient temples. This guide helps navigate the vibrant chaos and discover peaceful retreats within the metropolis.', 'Shibuya Crossing is pure sensory overload – a must-see spectacle of synchronized pedestrian movement under dazzling neon lights. For the best view, grab a window seat at the overlooking Starbucks. Nearby Harajuku offers a stark contrast with Takeshita Street\'s vibrant youth culture and quirky fashion, adjacent to the tranquil oasis of Meiji Jingu Shrine. This juxtaposition encapsulates Tokyo: high-energy urban life seamlessly blending with moments of deep tradition and calm, often just steps apart. Explore both sides for a fuller picture of this dynamic city.\r\n\r\nShinjuku offers another layer of diversity. Escape the bustle in Shinjuku Gyoen National Garden, a masterpiece combining English Landscape, French Formal, and Japanese traditional garden styles. Then, ascend the Tokyo Metropolitan Government Building (free entry!) for panoramic city views, especially stunning after dark. For evening atmosphere, explore the narrow alleys of Golden Gai or Omoide Yokocho, packed with tiny, characterful bars and yakitori stalls offering a taste of old Tokyo. This district showcases the city\'s ability to house serene nature, modern skylines, and historic nightlife hubs together.\r\n\r\nNavigating Tokyo is made easy by its world-class public transport. Get a Suica or Pasmo IC card for seamless travel on subways and JR trains – it simplifies everything. While the network maps look complex initially, navigation apps provide excellent guidance. Don’t just use stations for transit; explore their underground malls (depachika) offering incredible food courts and shopping. Learning basic phrases helps, but many signs include English, and staff are generally helpful. Embrace the efficiency and cleanliness of the system for stress-free exploration.\r\n\r\nFinding pockets of peace is essential. Explore Yanaka, a district with a preserved "shitamachi" (old town) feel, wandering its temple-lined streets and traditional craft shops. Visit Senso-ji Temple in Asakusa, Tokyo\'s oldest temple, experiencing the lively Nakamise-dori market leading up to it. For art lovers, the Nezu Museum offers exquisite collections and a serene garden. These areas provide a welcome counterbalance to the high-energy districts, showcasing the city’s historical depth and cultural heritage. Allowing time for these quieter explorations adds richness to any Tokyo itinerary.', 'https://images.unsplash.com/photo-1513407030348-c983a97b98d8?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '["/uploads/vlog/london.jpeg", "/uploads/vlog/paris.jpg", "/uploads/vlog/newyork.jpg", "/uploads/vlog/barca.jpg", "/uploads/vlog/chom.png", "/uploads/vlog/hanoi.jpg"]', 'published', 3, 4.7, '2025-04-20 01:02:01', '2025-05-08 02:20:02'),
(3, 1, 'Capturing Santorini\'s Golden Hour', 'capturing-santorini-golden-hour', 'Santorini\'s sunsets are legendary. This guide focuses on capturing that magic hour from Oia\'s iconic cliffs or quieter spots like Imerovigli. Learn tips on composition, camera settings, and finding the best viewpoints to photograph the whitewashed villages bathed in golden light against the Aegean Sea.', 'Oia is the classic sunset spot, offering dramatic views over the caldera. Arrive very early, especially in summer, to claim a position near the castle ruins or along the main path. The blue-domed churches provide perfect foreground interest. While crowded, the collective experience is unique. Consider exploring slightly further along the path towards Amoudi Bay for different angles away from the main concentration of people, potentially finding a less obstructed view as the light changes and softens. Planning is key for this popular location.\r\n\r\nImerovigli and Firostefani present excellent, less chaotic alternatives. These villages sit higher on the caldera rim, offering expansive westerly views. Skaros Rock, near Imerovigli, requires a short hike but provides unique, unobstructed panoramas – perfect for photographers seeking dramatic landscapes. Look for hotels or restaurants with caldera-facing terraces in these areas; many offer stunning views without the extreme crowding found in Oia, allowing for a more relaxed experience while still capturing beautiful images of the sunset unfolding over the azure sea.\r\n\r\nTechnical aspects are crucial for great sunset photos. Use a tripod for stability. Shoot in RAW format for maximum editing flexibility. Employ Aperture Priority (f/8-f/16) or Manual mode. Keep ISO low (100-200). Experiment with underexposure to saturate sky colors. A polarizing filter can cut glare and boost blues, while a graduated neutral density (GND) filter helps balance the bright sky against the darker land or sea. Don’t pack up immediately after the sun sets; the ensuing "blue hour" twilight offers soft, beautiful, and often overlooked light.\r\n\r\nComposition elevates a good photo to a great one. Look for leading lines using pathways or staircases. Frame the sunset using iconic architectural elements like windmills, bell towers, or cave houses. Apply the rule of thirds. Vary your focal length – wide shots capture the grandeur, while telephoto shots compress the scene or isolate details like distant boats or the texture of the cliffs. Most importantly, observe how the light changes the scene, finding different compositions as the golden hour progresses towards the final dip below the horizon.', 'https://images.unsplash.com/photo-1570077188670-e3a8d69ac5ff?q=80&w=2038&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '["/uploads/vlog/chom.png", "/uploads/vlog/hanoi.jpg", "/uploads/vlog/london.jpeg", "/uploads/vlog/paris.jpg", "/uploads/vlog/newyork.jpg", "/uploads/vlog/barca.jpg"]', 'published', 2, 5.0, '2025-04-22 01:02:01', '2025-05-08 02:20:13'),
(4, 3, 'Trekking the Inca Trail: A 4-Day Guide', 'trekking-inca-trail-4-day-guide', 'Journey along the ancient paths of the Incas on the classic 4-day trek to Machu Picchu. Experience breathtaking Andean scenery, explore fascinating ruins, and challenge yourself. This guide covers preparation, daily highlights, and the unforgettable reward of reaching the Sun Gate at dawn.', 'Booking the Inca Trail requires advance planning, often 6 months or more, due to permit limits. Ensure you book with a licensed tour operator. Physical preparation is key; focus on cardiovascular fitness and hiking, especially uphill. Acclimatize in Cusco or the Sacred Valley for 2-3 days prior to starting to minimize altitude sickness risks. Pack smart: layers for variable weather, sturdy hiking boots (broken in!), rain gear, sun protection, hat, gloves, and a good daypack. Porters will carry the bulk of the gear.\r\n\r\nThe trek unfolds progressively. Day 1 is generally moderate, allowing for acclimatization as you hike along the Urubamba River valley, passing smaller Inca sites. Day 2 presents the biggest challenge: the ascent to Dead Woman’s Pass (Warmiwañusqa) at nearly 4,215m. It’s a demanding climb requiring steady pacing, but the panoramic views are spectacular. The descent afterwards also tests the knees. Listen to your body, stay hydrated, and utilize coca leaves if needed, following guide recommendations for altitude management throughout the day.\r\n\r\nDay 3 is often cited as the most scenically rewarding. You will traverse diverse landscapes, descending through cloud forests and encountering impressive Inca ruins like Runkurakay and Sayacmarca, perched dramatically on ridges. Phuyupatamarca (\"Town in the Clouds\") offers incredible views before a final descent via steep Inca staircases. This day showcases the Incas’ mastery of engineering and their deep connection with the mountainous terrain. The changing vegetation and frequent archaeological stops make it a fascinating part of the journey, blending natural beauty with history.\r\n\r\nThe final day starts very early, hiking in the pre-dawn darkness towards Inti Punku, the Sun Gate. Arriving here as the first light hits Machu Picchu spread out below is the emotional climax. It’s a truly unforgettable moment. After savoring the view, you descend into the citadel itself for a guided tour, exploring the temples, terraces, and residential areas. Arriving on foot provides a unique sense of accomplishment and connection compared to arriving by bus. The guided tour helps unravel the mysteries and significance of this incredible lost city.', 'https://images.unsplash.com/photo-1497106636505-e4fd6e16d74c?q=80&w=2009&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '["/uploads/vlog/paris.jpg", "/uploads/vlog/newyork.jpg", "/uploads/vlog/barca.jpg", "/uploads/vlog/chom.png", "/uploads/vlog/hanoi.jpg", "/uploads/vlog/london.jpeg"]', 'published', 3, 5.0, '2025-04-24 01:02:01', '2025-05-08 02:20:27'),
(5, 1, 'Thai Island Hopping: Andaman Sea Bliss', 'thai-island-hopping-andaman-sea', 'Explore the paradise islands of Thailand’s Andaman Sea. From Krabi\'s dramatic cliffs to Phi Phi\'s vibrant snorkeling spots, discover pristine beaches and turquoise waters. This vlog captures the essence of tropical island life via longtail boats and ferries, showcasing unforgettable scenery and relaxation opportunities.', 'Krabi serves as a perfect gateway. Base yourself in Ao Nang and take longtail boat tours. The Four Islands tour reveals stunning beaches and unique rock formations like Chicken Island. Don’t miss Railay Beach, accessible only by boat, renowned for its towering limestone cliffs beloved by rock climbers and its beautiful sandy stretches like Phra Nang Cave Beach. The sheer scale of the karst landscape is immediately impressive and sets the tone for adventure. It offers great photo opportunities and swimming spots accessible within a short boat ride.\r\n\r\nA ferry ride away, the Phi Phi Islands beckon. While Maya Bay access might be restricted, boat trips around the islands are essential. Snorkel in Pileh Lagoon, marvel at the Viking Cave paintings (from the boat), and encounter playful monkeys on Monkey Beach. Koh Phi Phi Don offers accommodation, restaurants, and nightlife. Hike to the viewpoints for iconic photos overlooking the isthmus connecting the two main parts of the island. The vibrant marine life and stunning scenery make Phi Phi a memorable stop, blending natural beauty with lively island energy.\r\n\r\nBeyond Phi Phi, consider Koh Lanta for a more relaxed atmosphere. Its long, sandy beaches like Long Beach (Phra Ae) are less crowded and perfect for unwinding. Rent a scooter to explore the island’s diverse coastline, discover quieter coves, visit the traditional Lanta Old Town, or explore the Mu Ko Lanta National Park. Lanta offers a slower pace, making it ideal for families or travelers seeking tranquility away from the main party hubs, while still providing beautiful scenery and delicious beachfront dining with stunning sunset views.\r\n\r\nLogistics for island hopping are manageable. Ferries and speedboats connect major hubs like Phuket, Krabi, Koh Lanta, and Koh Phi Phi, with schedules varying by season (book ahead in peak times). Longtail boats handle shorter trips. Pack light, use waterproof bags, apply ample sunscreen, and stay hydrated. Embrace the flexibility required for boat travel. The Andaman coast offers a fantastic blend of dramatic scenery, underwater adventures, and opportunities for both vibrant social scenes and peaceful relaxation, catering to diverse travel styles and preferences.', 'https://images.unsplash.com/photo-1704314315344-cd10b9779ce6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '["/uploads/vlog/newyork.jpg", "/uploads/vlog/barca.jpg", "/uploads/vlog/chom.png", "/uploads/vlog/hanoi.jpg", "/uploads/vlog/london.jpeg", "/uploads/vlog/paris.jpg"]', 'published', 3, 4.7, '2025-04-26 01:02:01', '2025-05-08 02:20:41'),
(6, 3, 'Rome: Echoes of the Ancient Empire', 'rome-echoes-ancient-empire', 'Walk through history in Rome, the Eternal City. Explore the monumental Colosseum, wander the Roman Forum\'s ruins, and marvel at the Pantheon\'s architectural genius. This vlog covers essential ancient sites, offering tips for navigating landmarks and feeling the echoes of emperors and gladiators in this captivating city.', 'The Colosseum stands as Rome’s most iconic symbol. Imagine the roar of the crowd watching gladiators! Booking tickets online is essential. Combine your visit with the adjacent Roman Forum and Palatine Hill (usually included). The Forum, once the heart of Roman public life, requires imagination to reconstruct its temples and basilicas, while Palatine Hill offers historical significance as the city\'s founding site and provides excellent views over the Forum. Allow several hours for this vast archaeological area, wear comfortable shoes, and bring water.\r\n\r\nA short walk leads to the Pantheon, one of Rome\'s best-preserved ancient buildings. Originally a temple, now a church, its massive unsupported dome with the central oculus is an engineering marvel. Entry is free, but expect crowds, especially midday. Step inside, look up – the scale and symmetry are breathtaking. It’s a powerful testament to Roman architectural prowess. Nearby, toss a coin into the Trevi Fountain (ensuring your return!) and admire its spectacular Baroque artistry, especially beautiful when lit at night. Piazza Navona also buzzes with artists and cafes.\r\n\r\nNo exploration is complete without visiting Largo di Torre Argentina. These sunken ruins contain Republican-era temples and parts of Pompey\'s Theatre complex, where Julius Caesar was supposedly assassinated. While access is restricted (it’s now a cat sanctuary!), viewing them from street level adds another layer to the city’s rich history, casually integrated into the modern urban fabric. It’s a poignant reminder of pivotal moments right in the middle of a busy square, showcasing Rome\'s layered past in everyday life.\r\n\r\nTo connect these sites, walk the Via dei Fori Imperiali past the Roman Forum and Imperial Fora (Trajan, Augustus, etc.). Look for Trajan’s Column with its detailed spiral relief. Comfortable footwear is crucial. Consider guided tours for deeper context or use audio guides. Embrace the city\'s rhythm, take breaks for espresso or gelato, and wander the side streets. Rome is a city to be savored slowly, allowing its history, art, and vibrant culture to wash over you at every turn, revealing secrets around each corner.', 'https://images.unsplash.com/photo-1529154036614-a60975f5c760?q=80&w=2076&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '["/uploads/vlog/barca.jpg", "/uploads/vlog/chom.png", "/uploads/vlog/hanoi.jpg", "/uploads/vlog/london.jpeg", "/uploads/vlog/paris.jpg", "/uploads/vlog/newyork.jpg"]', 'published', 4, 4.8, '2025-04-28 01:02:01', '2025-05-08 02:20:52'),
(7, 1, 'Costa Rica\'s Waterfalls & Wildlife', 'costa-rica-waterfalls-wildlife', 'Discover Costa Rica’s incredible biodiversity! This vlog explores the Arenal area, searching for sloths and toucans near the volcano, hiking to the impressive La Fortuna waterfall, and experiencing the vibrant blue waters of the Rio Celeste. Experience nature and the "Pura Vida" spirit.', 'Arenal Volcano provides a dramatic backdrop. Hike trails in the national park seeking sloths, toucans, monkeys, and various birds. Guided walks increase spotting chances. The Arenal Hanging Bridges offer unique canopy views. Patience is key when looking for wildlife; early mornings or late afternoons are often best. The lush greenery itself is stunning, teeming with life even if larger animals remain elusive. Remember binoculars and a zoom lens if you enjoy wildlife photography to capture distant sightings effectively.\r\n\r\nLa Fortuna Waterfall is an accessible highlight near Arenal town. Descend about 500 steps through rainforest to reach the base. The 70-meter cascade plunges into a large, cool pool suitable for swimming in designated areas (away from the main fall). It’s a popular spot, so go early to avoid crowds. The entrance fee supports local conservation. It’s a rewarding hike down and up, offering great photo opportunities and a refreshing dip in a stunning natural setting. Don\'t forget your swimwear and a quick-dry towel.\r\n\r\nThe journey to Rio Celeste Waterfall in Tenorio Volcano National Park is worthwhile. The hike through rainforest leads to the waterfall’s famous turquoise-blue water, caused by volcanic minerals. Swimming isn\'t allowed at the main fall, but the sight is unforgettable. The trail continues to other points like the blue lagoon and the "Teñideros" where rivers merge. Be prepared for potentially muddy conditions depending on recent rainfall; sturdy, waterproof footwear is recommended. The park entrance has limits, so arriving earlier is advisable.\r\n\r\nBeyond these famous spots, Costa Rica offers numerous other waterfalls. Nauyaca Waterfalls near Dominical boast impressive tiers and swimming holes. Montezuma Waterfall on the Nicoya Peninsula is popular for its easy access and refreshing pools. La Paz Waterfall Gardens offers accessible views in a park setting. Research local falls near your specific destinations. Always prioritize safety: check conditions, wear appropriate gear (footwear, rain jacket, insect repellent), stay on trails, and respect the natural environment. Chasing waterfalls is a perfect way to experience Costa Rica\'s wild beauty.', 'https://images.unsplash.com/photo-1586768019524-c6e902168263?q=80&w=2034&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '["/uploads/vlog/london.jpeg", "/uploads/vlog/paris.jpg", "/uploads/vlog/newyork.jpg", "/uploads/vlog/barca.jpg", "/uploads/vlog/chom.png", "/uploads/vlog/hanoi.jpg"]', 'published', 2, 4.5, '2025-04-30 01:02:01', '2025-05-08 02:21:03'),
(8, 3, 'Banff in Winter: Snow & Scenery', 'banff-winter-snow-scenery', 'Experience Banff National Park transformed into a winter wonderland. Discover stunning snow-draped Rockies, frozen lakes for skating, and cozy town vibes. This vlog explores the Banff Gondola views, Johnston Canyon ice walks, and the serene beauty of the Canadian Rockies in winter.', 'Banff townsite becomes a cozy hub under snow. Stroll Banff Avenue, browse shops, visit galleries, or warm up in cafes. The Whyte Museum offers local history. Relax at the Banff Upper Hot Springs for warm soaks with mountain views. Simple walks along the Bow River provide accessible winter beauty. The town offers equipment rentals for various activities and serves as a great base for exploring the surrounding park, combining convenience with charming alpine atmosphere and plenty of dining options for refueling after a day outdoors.\r\n\r\nThe Banff Gondola ride up Sulphur Mountain provides breathtaking panoramic views of the Bow Valley and surrounding peaks draped in white. An interpretive center and boardwalk at the summit enhance the experience. It’s an excellent way to appreciate the vastness of the Rockies in winter without needing to hike. Book tickets ahead, especially during peak times, and check the weather forecast for optimal visibility. The views are particularly stunning on clear, crisp days following fresh snowfall, transforming the landscape into a picture-perfect winter scene.\r\n\r\nJohnston Canyon offers a unique ice walk adventure. Rent microspikes or join a guided tour to safely navigate icy trails and catwalks beside frozen streams. Marvel at the impressive Lower and Upper Falls encased in blue ice – it feels like a different world. Dress very warmly in layers, as the canyon stays shaded and cold. This activity is popular, so consider going on a weekday or earlier/later in the day if possible to avoid the largest crowds. It’s a relatively easy walk physically but requires caution on icy surfaces.\r\n\r\nFor classic Canadian winter fun, skate on frozen Lake Louise, with the stunning Victoria Glacier as a backdrop (check conditions!). Rentals are available at the Fairmont Chateau. Alternatively, snowshoeing offers peaceful exploration on trails like the Lake Minnewanka shoreline or Johnson Lake loop. Guided tours provide gear and insights. Remember to layer clothing effectively: thermal base, insulating mid-layer, and waterproof/windproof outer shell. Warm boots, gloves/mittens, and a toque are essential. Banff in winter is cold but incredibly beautiful and rewarding.', 'https://images.unsplash.com/photo-1503614472-8c93d56e92ce?q=80&w=2011&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '["/uploads/vlog/chom.png", "/uploads/vlog/hanoi.jpg", "/uploads/vlog/london.jpeg", "/uploads/vlog/paris.jpg", "/uploads/vlog/newyork.jpg", "/uploads/vlog/barca.jpg"]', 'published', 2, 4.5, '2025-05-02 01:02:01', '2025-05-08 02:21:15');


INSERT INTO `vlog_comments` (`id`, `post_id`, `user_id`, `guest_name`, `comment`, `rating`, `is_approved`, `likes`, `created_at`) VALUES
(1, 1, 3, NULL, 'Absolutely stunning sunrise! Your description captures the magic perfectly. Must visit!', 5, 1, 18, '2025-04-20 01:02:01'),
(2, 1, NULL, 'GlobeTrotter', 'Great info on getting there early. Was the reflection pool easy to find?', NULL, 1, 6, '2025-04-21 01:02:01'),
(3, 1, 2, NULL, 'The scale looks immense. The details on the carvings are incredible too.', 4, 1, 11, '2025-04-21 01:02:01'),
(4, 1, 4, NULL, 'Good tip on hiring a guide. Definitely planning to do that now.', 5, 1, 7, '2025-04-22 01:02:01'),
(5, 2, 1, NULL, 'Tokyo seems like controlled chaos! Loved the contrast between Shibuya and Meiji Shrine.', 5, 1, 9, '2025-04-21 01:02:01'),
(6, 2, NULL, 'FoodieFan', 'Golden Gai sounds intriguing! Are the bars welcoming to foreigners?', NULL, 0, 4, '2025-04-22 01:02:01'),
(7, 2, 4, NULL, 'Shinjuku Gyoen is such a beautiful escape. A must-visit for sure.', 4, 1, 12, '2025-04-23 01:02:01'),
(8, 2, 3, NULL, 'Totally agree on the Suica card. Makes navigating Tokyo so much smoother!', 5, 1, 14, '2025-04-24 01:02:01'),
(9, 3, 2, NULL, 'Your photos are gorgeous! Santorini sunsets are unbeatable.', 5, 1, 20, '2025-04-24 01:02:01'),
(10, 3, NULL, 'Shutterbug', 'Helpful camera tips! Especially the RAW format suggestion.', NULL, 1, 8, '2025-04-25 01:02:01'),
(11, 3, 1, NULL, 'Imerovigli is my favorite too! Quieter and just as beautiful.', 5, 1, 10, '2025-04-25 01:02:01'),
(12, 3, 4, NULL, 'Did you use a wide-angle or telephoto more often for the sunsets?', NULL, 1, 5, '2025-04-26 01:02:01'),
(13, 4, 1, NULL, 'Amazing journey! Dead Woman\'s Pass looks like a serious challenge.', 5, 1, 14, '2025-04-25 01:02:01'),
(14, 4, NULL, 'AltitudeAware', 'How did you manage the altitude sickness? Any specific tips?', NULL, 1, 7, '2025-04-26 01:02:01'),
(15, 4, 3, NULL, 'The porters are the real heroes of the Inca Trail!', 5, 1, 13, '2025-04-26 01:02:01'),
(16, 4, 2, NULL, 'That first view from the Sun Gate... goosebumps just thinking about it!', 5, 1, 19, '2025-04-27 01:02:01'),
(17, 5, 3, NULL, 'Beautiful beaches! Railay looks spectacular with those cliffs.', 4, 1, 9, '2025-04-28 01:02:01'),
(18, 5, 4, NULL, 'Koh Lanta does sound lovely and relaxing. Thanks for the info!', 5, 1, 11, '2025-04-29 01:02:01'),
(19, 5, NULL, 'SnorkelSue', 'Was the snorkeling gear readily available for rent on boat tours?', NULL, 0, 3, '2025-04-30 01:02:01'),
(20, 5, 1, NULL, 'The water color in Pileh Lagoon is just incredible.', 5, 1, 10, '2025-04-30 01:02:01'),
(21, 6, 2, NULL, 'Rome is unforgettable! The history is everywhere you look.', 5, 1, 16, '2025-04-30 01:02:01'),
(22, 6, 1, NULL, 'Loved exploring Trastevere\'s little streets and finding great food.', 5, 1, 12, '2025-05-01 01:02:01'),
(23, 6, NULL, 'ArtFanatic', 'The Pantheon is truly awe-inspiring architecture.', 5, 1, 15, '2025-05-02 01:02:01'),
(24, 6, 3, NULL, 'Definitely book Vatican tickets online way ahead!', 4, 1, 8, '2025-05-03 01:02:01'),
(25, 7, 4, NULL, 'Costa Rica looks so green and lush! Want to see Rio Celeste!', 5, 1, 15, '2025-05-01 01:02:01'),
(26, 7, NULL, 'WildlifeWatcher', 'Any tips for spotting sloths? They seem hard to find!', NULL, 1, 5, '2025-05-02 01:02:01'),
(27, 7, 1, NULL, 'Swimming under La Fortuna waterfall must feel amazing.', 4, 1, 12, '2025-05-03 01:02:01'),
(28, 8, 2, NULL, 'Winter in the Rockies! So picturesque. Lake Louise skating looks iconic.', 5, 1, 16, '2025-05-04 01:02:01'),
(29, 8, NULL, 'ColdWeatherFan', 'How were the crowds for the Johnston Canyon ice walk?', NULL, 1, 9, '2025-05-05 01:02:01'),
(30, 8, 3, NULL, 'Great reminder about needing proper winter gear!', 4, 1, 7, '2025-05-06 01:02:01');


-- Insert services
INSERT INTO HOMEPAGE_SERVICES (service_title, service_description, service_image) VALUES
('First Class Experience', 'Enjoy premium comfort with spacious seating, gourmet meals, and personalized service during your journey.', '/uploads/services/services_example.jpg'),
('Business Travel Solutions', 'Dedicated corporate booking services, priority check-in, and flexible scheduling for business travelers.', '/uploads/services/services_example2.jpg'),
('Vacation Packages', 'All-inclusive vacation packages with flights, accommodations, and local experiences at the best destinations.', '/uploads/services/services_example3.jpg'),
('Airport Transfers', 'Seamless transportation services from your location to the airport and from arrival airport to your destination.', '/uploads/services/services_example4.jpg'),
('In-flight Entertainment', 'Enjoy the latest movies, TV shows, music, and games on our state-of-the-art entertainment system.', '/uploads/services/services_example5.jpg'),
('Claude Miles Program', 'Earn miles with every flight and redeem for free flights, upgrades, and exclusive partner benefits worldwide.', '/uploads/services/services_example6.jpg');

-- Insert carousel images
INSERT INTO HOMEPAGE_IMAGE_CAROUSEL (carousel_image, carousel_alt, carousel_caption) VALUES
('/uploads/carousel/carousel_example.jpg', 'Tropical beach resort', 'Escape to paradise with our special summer deals'),
('/uploads/carousel/carousel_example2.jpg', 'Business class cabin', 'Experience luxury at 30,000 feet with our new business class'),
('/uploads/carousel/carousel_example3.jpg', 'Family vacation', 'Create unforgettable memories with our family-friendly packages'),
('/uploads/carousel/carousel_example4.jpg', 'Adventure travel', 'Explore the world with our exclusive adventure travel deals'),
('/uploads/carousel/carousel_example5.jpg', 'Cultural experience', 'Immerse yourself in local cultures with our curated experiences');

-- Insert travel packages
INSERT INTO HOMEPAGE_TRAVEL_PACKAGES (package_image, package_name, package_description) VALUES
('/uploads/packages/packages_example.jpg', 'Weekend Escape', 'Quick 2-3 day packages perfect for recharging. Includes flights, hotel, and breakfast.'),
('/uploads/packages/packages_example2.jpg', 'Family Adventure', 'Kid-friendly destinations with activities for all ages. Includes flights, family accommodations, and select activities.'),
('/uploads/packages/packages_example3.jpg', 'Luxury Retreat', 'Premium accommodations at 5-star resorts with exclusive amenities. Includes business class flights and VIP transfers.'),
('/uploads/packages/packages_example4.jpg', 'Cultural Immersion', 'Deep dive into local cultures with guided tours and authentic experiences. Includes flights, hotels, and curated cultural activities.'),
('/uploads/packages/packages_example5.jpg', 'Romantic Getaway', 'Special couples packages at scenic destinations. Includes flights, boutique hotels, and romantic dinners.');

-- Insert user testimonials
INSERT INTO HOMEPAGE_USER_TESTIMONIALS (user_name, user_testimonial, user_image, user_stars, user_location) VALUES
('Sarah Johnson', 'The flight was smooth and comfortable. The cabin crew was exceptionally attentive and made our journey memorable.', '/uploads/testimonials/testimonials_example.jpg', 5, 'New York, USA'),
('Minh Tran', 'Claude Airlines made my business trip stress-free. The online check-in was quick, and the in-flight Wi-Fi kept me productive.', '/uploads/testimonials/testimonials_example2.jpg', 4, 'Ho Chi Minh City, Vietnam'),
('John Smith', 'I had a fantastic experience flying with Claude Airlines. The food was delicious, and the entertainment options were great!', '/uploads/testimonials/testimonials_example3.jpg', 5, 'Los Angeles, USA'),
('Emily Nguyen', 'The staff was friendly and helpful. I loved the in-flight entertainment selection!', '/uploads/testimonials/testimonials_example4.jpg', 4, 'Hanoi, Vietnam'),
('David Brown', 'Claude Airlines offers great value for money. I will definitely fly with them again!', '/uploads/testimonials/testimonials_example5.jpg', 5, 'Chicago, USA');


-- Insert top destinations
INSERT INTO HOMEPAGE_TOP_DESTINATIONS (destination_image, destination_name, destination_country, destination_price, destination_description, destination_begin, destination_end, destination_offer, destination_category) VALUES
('/uploads/destinations/destinations_example.jpg', 'Paris', 'France', 649.99, 'Experience the romance and charm of the City of Light with its iconic landmarks and exquisite cuisine.', '2025-06-01', '2025-06-30', '10% off for early booking', 'Europe'),
('/uploads/destinations/destinations_example2.jpg', 'Bali', 'Indonesia', 849.99, 'Discover paradise on earth with pristine beaches, lush rice terraces, and spiritual temples.', '2025-07-01', '2025-08-31', 'Free airport transfer', 'Asia'),
('/uploads/destinations/destinations_example3.jpg', 'New York', 'USA', 749.99, 'Explore the Big Apple with its towering skyscrapers, diverse neighborhoods, and vibrant culture.', '2025-09-01', '2025-10-31', 'City pass included', 'North America'),
('/uploads/destinations/destinations_example4.jpg', 'Tokyo', 'Japan', 899.99, 'Experience the blend of tradition and modernity in Japan bustling capital.', '2025-11-01', '2025-12-31', 'Free guided city tour', 'Asia'),
('/uploads/destinations/destinations_example5.jpg', 'Sydney', 'Australia', 999.99, 'Discover the stunning beaches, iconic landmarks, and vibrant culture of Sydney.', '2025-01-01', '2025-02-28', 'Discount on group bookings', 'Oceania');

-- Insert contact messages
INSERT INTO CONTACT_MESSAGES (name, email, phone, subject, message, status) VALUES
('John Smith', 'john.smith@example.com', '+1234567890', 'Booking Inquiry', 'I would like to know if there are any special discounts for group bookings of 10 people to Tokyo in August.', 'unread'),
('Maria Garcia', 'maria.g@example.com', '+3456789012', 'Baggage Question', 'What is the baggage allowance for your economy class on international flights?', 'read'),
('Ahmed Hassan', 'ahmed.h@example.com', '+2345678901', 'Flight Rescheduling', 'I need to reschedule my flight CA-3456 from June 15th to June 20th. Is this possible?', 'replied'),
('Lily Wang', 'lily.w@example.com', '+8765432109', 'Lost Item', 'I believe I left my laptop on flight CA-7890 yesterday. How can I retrieve it?', 'unread'),
('David Brown', 'david.b@example.com', '+9876543210', 'Website Feedback', 'Your new website is very user-friendly. I especially like the quick booking feature.', 'read');

-- Insert contact locations
INSERT INTO CONTACT_LOCATIONS (location_name, des_type, address_string, phone_number, working_hours, email, location_embed_code) VALUES
('Claude Airlines Headquarters', 'Main Office', '123 Aviation Blvd, Los Angeles, CA 90045, USA', '+1-800-CLAUDE-AIR', 'Mon-Fri: 8AM-6PM', 'info@claudeairlines.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193595.15830869428!2d-74.11976397304903!3d40.69766374874431!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2s!4v1619822446442!5m2!1sen!2s'),
('Claude Airlines - New York', 'Branch Office', '456 Travel Plaza, New York, NY 10001, USA', '+1-212-CLAUDE-NY', 'Mon-Fri: 9AM-5PM', 'newyork@claudeairlines.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13219.891667483433!2d-118.39967993022464!3d33.94611!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2b6ab5dc0d481%3A0x6075ef0a08ec2a7d!2sLos%20Angeles%20International%20Airport%20(LAX)!5e0!3m2!1sen!2sus!4v1650123456789!5m2!1sen!2sus'),
('Claude Airlines - Ho Chi Minh City', 'Regional Office', '789 Nguyen Hue Blvd, District 1, Ho Chi Minh City, Vietnam', '+84-28-CLAUDE-VN', 'Mon-Sat: 8AM-7PM', 'vietnam@claudeairlines.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2970.6533383913886!2d-87.62544368455809!3d41.88227087922149!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880e2ca3e2d94695%3A0x4829f3cc9ca2d0de!2sMillennium%20Park!5e0!3m2!1sen!2sus!4v1650123456789!5m2!1sen!2sus'),
('Claude Airlines - London', 'European Hub', '10 Aviation House, Heathrow Airport, London, UK', '+44-20-CLAUDE-UK', 'Mon-Sun: 7AM-9PM', 'london@claudeairlines.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3313.3736662710805!2d151.21303131571477!3d-33.856928180659004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae665e892fdd%3A0x3133f8d75a1ac251!2sSydney%20Opera%20House!5e0!3m2!1sen!2sau!4v1650123456789!5m2!1sen!2sau'),
('Claude Airlines - Tokyo', 'Asia-Pacific Office', '567 Sky Tower, Narita Airport, Tokyo, Japan', '+81-3-CLAUDE-JP', 'Mon-Fri: 8:30AM-6:30PM', 'tokyo@claudeairlines.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3239.4330971849653!2d139.8085117152003!3d35.71014153618419!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188ed6f44659b9%3A0x30e534e2114c0e71!2sTokyo%20Skytree!5e0!3m2!1sen!2sjp!4v1650123456789!5m2!1sen!2sjp');
