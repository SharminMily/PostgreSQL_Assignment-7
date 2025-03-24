# PostgreSQL প্রশ্ন ও উত্তর (Q&A)

---

## 1. PostgreSQL কী?
PostgreSQL একটি ওপেন সোর্স রিলেশনাল ডাটাবেস ম্যানেজমেন্ট সিস্টেম (RDBMS) যা ডেটা সঞ্চয় ও পরিচালনা করতে ব্যবহৃত হয়। এটি জটিল কোয়েরি পরিচালনা, ডেটা অখণ্ডতা এবং স্কেলেবল পরিবেশের জন্য উন্নত বৈশিষ্ট্য সরবরাহ করে।

---

## 2. PostgreSQL-এ ডাটাবেস স্কিমার উদ্দেশ্য কী?
ডাটাবেস স্কিমা হলো একটি কাঠামো যা ডাটাবেসের টেবিল, ভিউ, ইনডেক্স এবং অন্যান্য অবজেক্টের সংগঠিত বিন্যাস নির্ধারণ করে। এটি বিভিন্ন টেবিলের মধ্যে সম্পর্ক তৈরি করতে এবং ডেটা সুরক্ষিত ও পরিচালিত করতে সাহায্য করে।

---

## 3. PostgreSQL-এ প্রাইমারি কি এবং ফরেন কি কী?

- **প্রাইমারি কি (Primary Key):**  
  এটি একটি ইউনিক কলাম বা কলামের সমন্বয় যা প্রতিটি সারিকে (row) অনন্যভাবে শনাক্ত করে। টেবিলের কোনো প্রাইমারি কি কলামের মান কখনোই পুনরাবৃত্ত হতে পারে না বা NULL হতে পারে না।  

- **ফরেন কি (Foreign Key):**  
  এটি একটি কলাম যা অন্য টেবিলের প্রাইমারি কি কলামের সাথে সম্পর্ক স্থাপন করে। এটি ডেটার অখণ্ডতা নিশ্চিত করতে এবং টেবিলের মধ্যে সম্পর্ক বজায় রাখতে সাহায্য করে।

---

## 4. VARCHAR এবং CHAR ডাটা টাইপের মধ্যে পার্থক্য কী?
- **VARCHAR:**  
  VARCHAR একটি পরিবর্তনশীল দৈর্ঘ্যের স্ট্রিং ডাটা টাইপ যেখানে আপনি সর্বোচ্চ দৈর্ঘ্য নির্ধারণ করতে পারেন। এটি সংরক্ষণের জন্য প্রয়োজনীয় স্থান ব্যবহার করে।

- **CHAR:**  
  CHAR একটি স্থির দৈর্ঘ্যের স্ট্রিং ডাটা টাইপ যেখানে আপনি একটি নির্দিষ্ট দৈর্ঘ্য নির্ধারণ করেন। সংক্ষিপ্ত মান থাকলেও এটি নির্দিষ্ট দৈর্ঘ্যের জন্য জায়গা দখল করে।

---

## 5. SELECT স্টেটমেন্টে WHERE ক্লজের উদ্দেশ্য কী?

WHERE ক্লজ ডাটাবেস থেকে নির্দিষ্ট শর্ত অনুযায়ী তথ্য ফিল্টার করতে ব্যবহৃত হয়। এটি এমন সারিগুলি নির্বাচন করতে দেয় যা নির্দিষ্ট মানদণ্ড পূরণ করে।

**উদাহরণ:**  
```sql
SELECT * FROM users WHERE age > 25;

---

## 6. LIMIT এবং OFFSET ক্লজের ব্যবহার কী?

LIMIT: এটি ডাটাবেস থেকে কতগুলি সারি ফেরত দিতে হবে তা নির্ধারণ করে।

OFFSET: এটি কতগুলি সারি এড়িয়ে যেতে হবে তা নির্ধারণ করে।

**উদাহরণ:**  
SELECT * FROM orders LIMIT 10 OFFSET 5;
(এখানে প্রথম ৫টি সারি বাদ দিয়ে পরবর্তী ১০টি সারি ফেরত দেবে)

---

## 7. UPDATE স্টেটমেন্ট ব্যবহার করে কীভাবে ডেটা পরিবর্তন করবেন?
UPDATE স্টেটমেন্ট একটি টেবিলের বিদ্যমান ডেটা পরিবর্তন করতে ব্যবহৃত হয়।

**উদাহরণ:** 
UPDATE users
SET name = 'Sharmin', age = 80
WHERE id = 1;
(এখানে id 1 এর ব্যবহারকারীর নাম এবং বয়স আপডেট করা হবে)


---

## 8. JOIN অপারেশনের গুরুত্ব এবং এটি কীভাবে কাজ করে?
JOIN অপারেশন দুটি বা ততোধিক টেবিলের তথ্য একত্রে যোগ করতে ব্যবহৃত হয়। এটি সাধারণত টেবিলের মধ্যে সম্পর্কিত ডেটা বের করতে সাহায্য করে।

INNER JOIN: কেবলমাত্র মিল থাকা সারিগুলি ফেরত দেয়।

LEFT JOIN: বাম টেবিলের সমস্ত সারি ফেরত দেয়, এমনকি ডান টেবিলে মিল না থাকলেও।

RIGHT JOIN: ডান টেবিলের সমস্ত সারি ফেরত দেয়, এমনকি বাম টেবিলে মিল না থাকলেও।

**উদাহরণ:** 
SELECT users.name, orders.total_price
FROM users
JOIN orders ON users.id = orders.user_id;

---

## 9. GROUP BY ক্লজ এবং এটি অ্যাগ্রিগেশন অপারেশনে কী ভূমিকা পালন করে?
GROUP BY ক্লজ একই মান থাকা সারিগুলিকে গ্রুপ করতে ব্যবহৃত হয়। এটি সাধারণত অ্যাগ্রিগেট ফাংশন (COUNT, SUM, AVG) এর সাথে ব্যবহৃত হয়।

**উদাহরণ:** 
SELECT category, SUM(price)
FROM products
GROUP BY category;
(এখানে প্রতিটি ক্যাটাগরির মোট মূল্য ফেরত দেবে)

---

## 10. PostgreSQL-এ COUNT(), SUM() এবং AVG() ফাংশন কীভাবে ব্যবহার করবেন?
COUNT(): সারির সংখ্যা গণনা করে।

SUM(): নির্দিষ্ট কলামের মোট যোগফল দেয়।

AVG(): নির্দিষ্ট কলামের গড় মান প্রদান করে।

**উদাহরণ:** 
SELECT COUNT(*) AS total_orders FROM orders;  
SELECT SUM(total_price) AS total_revenue FROM orders;  
SELECT AVG(total_price) AS average_order FROM orders; 