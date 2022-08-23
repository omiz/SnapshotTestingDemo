# SnapshotTesting

The use of the package is to demonstrate how to implement snapshot.

## Short intro:
The tests consist of helpers to create an image from a UIViewController using the configuration of the provided phone details. The Idea is to have a visual representation of the views and being able to compare the differences when needed

## How to use:
 - **Step 1:** 
Record a screenshot of the view that needs to be compared

 - **Step 2:**
If needed add the generated files into the project. This step can be skipped in the package because the files are automatically added to the package.

- **Step 3**
change `record` to `assert` After recording the screenshot and being satisfied with the result.

- **Step 4:**
On change re-record this can simply done by changing the `assert` to `record` and then change back to `assert`

For an easy navigation the test target has the steps simplified into folders.

*Note: This will insure that on the running the test again a new screenshot will be generated and compared to the one already stored. If a mismatch is detected the assert function will throw an error.*
