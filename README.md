# NYCSchoolsList

1.The Project is written in MVMV architecture.

2.UI is designed using Storyboards and stackView.

3.**There is no API available to fetch SAT score specific to particular school. So SAT score is fetched once and stored in class variable to make the call efficient. To Do so, using functional programming with the help of high level function "filter" provided by Swift. 3. More focused on design pattern, clean code, modern style than UI.

4. Unfortunately all the school doesn’t have matching SAT data using API “https://data.cityofnewyork.us/resource/734v-jeq5.json” those cases the first set of data is displayed , The First school “"Clinton School Writers & Artists, M.S. 260"” falls in this exception.[Line 99 in NYCSchoolModelView].

5.School list data is parsed completely but using only "school_name" and "overview_paragraph" to demonstrate the dynamic cell height using auto layout rest of the data can be consumed via view model object if needed . 
