# SourdoughBuddy

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description
An app that is simple yet indispensable tool for sourdough bread enthusiasts. It enables users to effortlessly calculate the precise amounts of starter, flour, and water required based on the desired number of loaves to bake. By eliminating guesswork, it ensures consistent and accurate measurements, leading to delicious and reliable sourdough bread every time.

### App Evaluation
- **Category**: Food & Drink
- **Mobile**: Mobile functionality is crucial for instant access to sourdough recipes and ingredient calculations while in the kitchen. Users can conveniently generate ingredient quantities on the go, making it easy to plan and execute their baking sessions anywhere, anytime.
- **Story**: This app revolves around the narrative of home bakers on their journey to mastering the art of sourdough bread making. It appeals to both novice bakers seeking guidance and experienced enthusiasts striving for precision. By providing a reliable tool for ingredient calculations, it empowers users to explore and experiment with sourdough baking with confidence.
-    **Market**: The market for baking and recipe apps is substantial, with a growing interest in homemade bread making, particularly sourdough. The app caters to a niche yet passionate audience of home bakers who value precision and consistency in their bread baking endeavors. As interest in artisanal bread making continues to rise, it offers a valuable solution for enthusiasts looking to elevate their baking skills.
- **Habit**: The app aims to become an essential part of users' baking routines, fostering a habit of precise ingredient measurement and consistent bread baking. Users are encouraged to utilize the app for every baking session, reinforcing the habit of relying on this app for accurate calculations and reliable results. Regular engagement with the app leads to increased confidence and satisfaction in sourdough bread making.
- **Scope**: The core features of the app include calculating ingredient quantities based on the desired number of loaves and providing simple, intuitive user interface for easy navigation. The app's scope can be expanded in the future to include additional functionalities such as recipe storage, baking reminders, and community forums for sharing tips and experiences. However, the initial focus is on delivering a streamlined and user-friendly experience for calculating sourdough ingredient ratios.

<img src="https://github.com/ybanez330/iOS_Capstone/blob/main/photos/SourdoughBuddyLogo.png" width=300>

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

- Users can input the number of loaves they want to bake.
- Users can view the calculated grams of starter, flour, and water needed for the specified number of loaves.
- Users can adjust the quantity of ingredients based on desired loaf size or recipe variations.
- Users can easily navigate between inputting the number of loaves and viewing the ingredient quantities.

**Optional Nice-to-have Stories**

- Users can save favorite recipes with custom names for future reference.
- Users can share recipes or ingredient calculations with friends via social media or messaging apps.
- Users can access a database of sourdough recipes for inspiration and reference.
- Users can set reminders for feeding their sourdough starter or starting the baking process.

### 2. Screen Archetypes

- [X] **Input Screen**
- Allows users to input the number of loaves they want to bake.
- Provides options for adjusting loaf size or recipe variations.
- Includes a button to generate ingredient quantities.

- [X] **Output Screen**
- Displays the calculated grams of starter, flour, and water needed for the specified number of loaves.
- Allows users to easily copy ingredient quantities for reference or sharing.
- Provides a button to return to the input screen for adjustments.

### 3. Navigation

**Tab Navigation (Tab to Screen)**

- Input: Allows users to input the number of loaves and adjust recipe variations.
- Output: Displays the calculated ingredient quantities.
- Help: Provides guidance and assistance for using the app effectively.

**Flow Navigation (Screen to Screen)**

- Input Screen
    - Leads to the Output Screen upon pressing the generate button.
    - Offers access to the Help Screen for additional assistance.

- Output Screen
    - Offers the option to return to the Input Screen for adjustments.
    - Provides access to the Help Screen for guidance on interpreting ingredient quantities.


## Wireframes

<img src="https://github.com/ybanez330/iOS_Capstone/blob/main/photos/IMG_0043.jpg" width=600>

## Sprint Planning

### Main Features
1. Ingredient Calculation
2. Customizable Bread Recipe
3. Recipe Storage
4. Local Data Persistence

### Sprint 1: Unit 8 (April 16-19)
- Set up GitHub
- Initialize XCode Project
- Create WireFrame

### Sprint 2: Unit 9 (April 20-23)
- Create Input Screen (Home screen) with the ability to log the number of loaves
- Create Output Screen to display calculated ingredient quantities
- Implement basic tab navigation between Input and Output screens

<div>
    <a href="https://www.loom.com/share/7bdd525ce6b84ec6b3c772298ce23b98">
      <p>Unit 9 - Walkthrough Video</p>
  </div>
  
**Week 9 Challenges:** I initially had issues displaying the necessary ingredient quantities to the output page, but managed to display them with corrrect calculations. Additionally, while attempting to work ahead of schedule to implement an API to provide users with tips on sourdough baking posed a significant challenge. Navigating the documentation, understanding authentication requirements, and handling data retrieval were most challenging. Although the implementation of the API remains a work in progress, this experience has been a valuable learning opportunity, showcasing the importance of adaptability, problem-solving, and persistence in the development process. 

### Sprint 3: Unit 10 (April 24-29)
- Include SourdoughBuddyLogo within the app
- Ensure all features are fully implemented and functional
- Finalize UI design, including app icon and color theme/branding
- Conduct thorough testing and bug fixing

<div>
    <a href="https://www.loom.com/share/adab62ad41e94ed9827fd5a65ef9318a">
      <p>Unit 10: Final Project</p>
    </a>
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/adab62ad41e94ed9827fd5a65ef9318a-with-play.gif">
    </a>
  </div>

**Week 10 Challenges:** This week, I encountered several challenges while working on SourdoughBuddy. One major hurdle was integrating the Spoonacular API into the app to provide users with helpful tips on sourdough baking. Despite numerous attempts and troubleshooting sessions, I faced difficulties getting the API to function properly within the app environment. 

On a more positive note, this course was filled with valuable learning experiences in my journey through Intro to iOS development. I definitely gained a deeper understanding delving into the intricacies of app development, learning more about Swift programming along the way. Moreover, I solidified my vision for SourdoughBuddy as not just a tool for individual bakers but also as a community-based platform where enthusiasts can share tips, recipes, and experiences. Moving forward, I am excited to further develop the app to fulfill its potential as a collaborative space for sourdough enthusiasts.


