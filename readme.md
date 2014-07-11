Fauteuil (Chair-Review Website)
============
[![Build Status](https://travis-ci.org/LaunchAcademy/fauteuil.svg?branch=master)](https://travis-ci.org/LaunchAcademy/fauteuil) [![Code Climate](https://codeclimate.com/github/LaunchAcademy/fauteuil.png)](https://codeclimate.com/github/LaunchAcademy/fauteuil) [![Coverage Status](https://coveralls.io/repos/LaunchAcademy/fauteuil/badge.png)](https://coveralls.io/r/LaunchAcademy/fauteuil)

_**Rachael Serur ~ Patrick Arthur ~ David Pointeau**_

Visit the website at:  http://fauteuil.herokuapp.com/

### Overview of Project

---

**Fauteuil is a unique website designed for people who want to review all types of chairs! The idea behind this group project was to explore group collaboration using github with the end goal of creating a fully functional review website. The 'chair' idea is not what's most important (even though its a great idea). Our endgoal was to explore the various possiblities offered by Ruby on Rails in creating a web app.**

**Note: The following demo is a bit laggy because its a gif. Visit the website!**
![Demo](/fauteuil_var/fauteuil.gif)

### Interesting features

---


- Creating a profile, signing in, editing profile, signing out (using Devise)
- Users can add a profile picture optionally
- Navigating smoothly through pages (navbar was useful)
- Users can search for a specific chair
- Users can add their own chair, with a picture optionally
- Users can add a review associated to a specific chair
      - One of the interesting features of this part was the implementation of the star rating system. 
         The user can associate a rating between 1 and 5 (0.5 increments) using a slider, and according to that value
         we display the equivalent number of stars (using javascript and jquery). Implementing this part was a thinker          but lots of fun!
      - Another interesting feature of our review system is that every user can upvote or downvote a reviews 
         (just like stackoverflow)
- Mailer: Users who create a chair recieve a mail everytime somebody reviews their chair
- Pagination is implemented
- Admin Spacing: We created two types of users: admins and non-admins. Admins have extra functionality displayed for
  them in order to delete posts and verify malicious user input. 
- Security: implemented basic security to avoid malicious user input
- STYLING: We spent alot of time on styling:
      - Landing page's background is a looping video
      => Dynamic elements are present
      => parallax scrolling for the main page

---

### Contact Info:

---

David Pointeau : david.pointeau@tufts.edu || https://github.com/dpoint01

Rachael Serur : rachaelse@gmail.com || https://github.com/rserur

Patrick Arthur : pa@arthurfamily.ws || https://github.com/PatrickArthur

---
