# Objective-C Memory Leak: NSString in Repeated Method Calls

This repository demonstrates a common Objective-C memory leak scenario involving `NSString` objects and repeated method calls. The `bug.m` file contains the problematic code, while `bugSolution.m` shows the corrected version.  The issue stems from improper memory management; each call to `someMethod` allocates a new string without releasing the previous one. This is solved by using ARC (Automatic Reference Counting), or, in the case of manual reference counting, by properly handling the `release` of the string. 

## How to Reproduce

1. Clone the repository.
2. Open the project in Xcode.
3. Run the project.  (Observe potential memory increase with repeated calls.)

## Solution

The solution utilizes ARC. However the Manual memory management solution is provided in comments in the `bug.m` file.

## Note

This example highlights the importance of careful memory management in Objective-C. Using ARC helps to prevent many of these types of errors.  Always be mindful of object lifecycles and their ownership.