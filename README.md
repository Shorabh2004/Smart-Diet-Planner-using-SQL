# 🥗 Smart Diet Planner – MySQL Project

## 📌 Project Overview
The **Smart Diet Planner** is a database-driven project built in **MySQL** to manage users' dietary needs, activity levels, allergies, medical conditions, and personalized diet plans.  
It can be used by nutritionists, health trainers, or fitness apps to suggest optimized meal plans based on user preferences and health conditions.

---

## 🎯 Features
- **User Management**: Store personal details, body measurements, and fitness goals.
- **Activity Levels**: Adjust calorie requirements using activity multipliers.
- **Allergy Tracking**: Avoid food items containing allergens for specific users.
- **Medical Conditions**: Support for dietary restrictions based on health issues.
- **Food Item Database**: Nutritional values for different food items (calories, protein, carbs, fats, sugar, sodium).
- **Meal Planning**: Organize meals into breakfast, lunch, dinner, and snacks.
- **Macros Calculation**: Automatic calculation of daily nutritional intake.
- **Views for Reports**: Pre-built views for per-meal and daily nutritional summaries.

---

## 🗄 Database Schema

### **Tables**
1. **activity_levels** – Stores calorie multipliers for different activity types.  
2. **users** – Stores user personal data and dietary preferences.  
3. **allergies** – List of possible allergies (nuts, lactose, gluten, etc.).  
4. **user_allergies** – Junction table linking users with their allergies.  
5. **conditions** – Medical conditions that impact diet (diabetes, hypertension, etc.).  
6. **user_conditions** – Junction table linking users with their medical conditions.  
7. **food_items** – Database of foods with nutritional information.  
8. **diet_plans** – Stores meal plans for specific users.  
9. **meals** – Individual meal entries within a diet plan.  
10. **meal_items** – Food items included in each meal.  
11. **v_meal_macros** *(View)* – Calculates total nutrients per meal.  
12. **v_daily_totals** *(View)* – Summarizes daily nutritional intake.

---

## 🔧 Installation & Setup

### **1️⃣ Import Database**
1. Open **MySQL Command Line** or **Workbench**.
2. Run:
   ```sql
   SOURCE path_to/smart_diet.sql;
