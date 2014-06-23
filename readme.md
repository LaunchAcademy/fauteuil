Chair-Review
============

_**Group Project  ~ Kevin Jain ~ Rachel Serur ~ Patrick Arthur ~ David Pointeau ~**_


### USER STORIES

---

**Sign Up**

As a user
I want to be able to sign up
so I can have access to the website

__**Acceptance Criteria**__

- To sign up, I have to provide a username (check if available),
- an email (check if available),
- upload a picture(optional, if no picture use default),
- create a password and confirm it.
- After I am signed up, I am redirected to index of chairs.
- I should be noticed if info is wrong and if sign up has succeeded.

---

---

**Sign In**

As a user
I want to be able to Sign in
so I can have access to the website and navigate through it with my credentials

**Acceptance Criteria**

- To sign in, I have to provide my email and password combination.
- After I sign in, I am redirected to index of chairs.
- If sign in fails, user is prompted

---

---

**Sign Out**

As a user
I want to be able to sign out
so I can close my session

**Acceptance Criteria**

- To sign out, I should be able to click the sign out button on any page of the website
- I should be notified if I sign out succesfully
- I should be notified if sign out fails
- If I sign out succesfully, I am redirected to the homepage (gif page)

---

---

**Edit Profile** _(non-core)_

As a user
I want to be able to edit my profile
so I can update my information if I am not satisfied

**Acceptance Criteria**

- The edit profile option is ONLY AVAIBALE WHEN A USER IS SIGNED IN
- To Edit profile, I should be able to click on the "edit profile" button and be redirected to a page where
I can see my current information and a form to edit that information
- All fields (inclduing picture) should be editable.
- If I succesfully edit my information, the page is re-rendered with updated info
- I shoudl be able to go back to homepage


---

---

**View all Chairs**

As a user
I want to be able to see all the previous posts
so that I can know what chairs are outhere

**Acceptance Criteria**

- CHECK IF SIGNED IN
- I want to be able to see the picture (if there is one), the name, and the rating of each chair
- All ratings on that page are the average of all the ratings from the reviews
- All posts should be ranked according to their rating
- Each picture/or name should take me to the show page of that chair so that I can see its details
- I should be able to search for a specfic chair.
- I should be able to navigate through the different pages.

---

---

**Search for a Chair**

As a user
I want to be able search for a chair

**Acceptance Criteria**

- CHECK IF SIGNED IN
- I should be able to look for a chair according to its name, category (e.g. study chair).
- If no results are found, user should be noticed with an alert message on that same page
- If some results are found, the user should be prompted that results wer found and the page is re-rendered (in
the same format as index.html) with only the results

---

---

**Pagination**

As a user
I want to have all the posts to be paginated

**Acceptance Criteria**

- Each page should show 10 chairs at a time.
- Visiting chairs?query=2 should show the next 10 chairs, and so on.

---

---

**Add a Chair**

As a user
I want to be able to add a chair to the website so that I can see it in the index page

**Acceptance Criteria**

- I should be signed in!
- I can add a chair with: a new picture, a name, a breif desciption(optional), rating (1-5 stars) and its characteristics (some will be tick form, other fill-ins)
- I should be alerted if any field is filled-in in the wrong fashion
- If the chair is succesfully saved, I should be alerted so and redirected to the newly chair show page.
- I should be notified by email everytime a user reviews my post.

---

---

**See specific info of chair**

As a user
I want to be able to see the specifics of a chair so that I can see its info and add a review

**Acceptance Criteria**

- I should be able to see ALL the info of that chair
- I should be able to who created that post
- I should be able to see all its associated reviews ranked according to their votes
- I should be able to add my own review with a rating and a body
- I shoudle be able to see the "upvote" and "downvote" buttons on all the reviews I DIDN'T vote on yet
- I shouldn't be able to vote on the reviews I already voted on

---

---

**Add a review to a chair**

As a user
I want to be able to add a review so i can give my opinion on that chair

**Acceptance Criteria**

- Check if user has already added a review!
- On the show page of  a chair I have access to a form where I can submit my review
- Everytime a review is added to a chair, the creator of that page is notified by email
- I should be able to rank the chair between 1 to 5. That integer will be converted to a star value
- When my review is succesfully added I am redirected to the show page of the chair I just reviewed

---

---

**Upvote/downvote**

As a user
I should be able to vote on each review so that the best reviews are ranked and displayed at the top

**Acceptance Criteria**

- For every review check if user has already voted or not
- ONLY display upbote and downvote buttons for the reviews the signed-in user hasn't voted on yet
- 2 counts -> count of upvotes and count of downvotes
- Once you vote, redirect on same page with updated ranking. Ranked according to upvotes only not downvotes


---

FOR ROOT => either gif continously running, sample reviews flowing on and off the page, and both signup and signin buttons

---

different chair categories:

- Stool
- Barber Chair
- Broken Chair
- Desk Chair
- Office chair
- folding chair
- Outdoor Chair
- Coder's Chair
- Lounge Chair
- Long Chair
- Fauteuil
- High Chair
- Designer Chair
- Rocking Chair
- Quirky Chair
- Low Chair
- Beanbag
- Floor
- Big chairs
- Small Chairs
- Bench
- Antique Chair
- Modern Chair
- Captain's chair
- Kitchen Chair
- Special Chair
- Living Room Chair
- Mobile Chair
