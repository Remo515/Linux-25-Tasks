<!--Let's Start--->

# Read Carefully Before Start

#### Ahmed is a system administrator at a tech company. One day, he receives a list of requests from the HR and security teams that he must complete using Linux commands.

##### Problems Ahmed Faced:

###### 1. Adding a new user:
The company requested to add a new employee named **"mohamed"** to the system so he can log in and start working.


###### 2. Changing a user’s password:
The user **"sara"** forgot her password and cannot log in. Ahmed needs to reset it for her.


###### 3. Creating a new group:
A new team called **"developers"** was formed, and Ahmed needs to create a group with this name to manage their permissions.


###### 4. Adding a user to a group:
The manager wants **"mohamed"** to be added to the **"developers"** group so he can access shared files.


###### 5. Removing a user from the system:
An employee named **"ali"** left the company, and Ahmed needs to delete his account completely, ensuring that no orphaned files remain.


###### 6. Viewing user details:
After adding "mohamed," Ahmed wants to check his UID, GID, and the groups he belongs to.


###### 7. Granting administrative privileges to a user:
The company needs **"sara"** to have administrative privileges, so Ahmed must add her to the **"sudo"** group.


###### 8. Switching to another user account:
Ahmed wants to check **"mohamed’s"** environment by logging into his account without restarting the system.


###### 9. Creating a system user without login access:
Ahmed needs to create a user called **"service_user"** for running background services but should prevent it from logging in directly.


###### 10. Listing all users and groups:
Finally, Ahmed wants to check all the users and groups currently registered on the system to ensure everything is properly configured.




---

##### Questions and Answers:

1. ###### What command should Ahmed use to create the user "mohamed"?
*Command:*

sudo useradd mohamed


2. ###### How can he reset the password for "sara"?
*Command:*

sudo passwd sara


3. ###### What command is used to create the group "developers"?
*Command:*

sudo groupadd developers


4. ###### How can he add "mohamed" to the "developers" group without removing him from other groups?
*Command:*

sudo usermod -aG developers mohamed


5. ###### What command should Ahmed use to delete "ali" along with his files?
*Command:*

sudo userdel -r ali


6. How can he check "mohamed's" UID, GID, and group memberships?
*Command:*

id mohamed


7. ###### What command allows him to grant "sara" sudo privileges?
*Command:*

sudo usermod -aG sudo sara


8. ###### How can he switch to "mohamed’s" account without restarting the system?
*Command:*

su - mohamed


9. ###### What command allows him to create a system user "service_user" without login access?
*Command:*

sudo useradd -r -s /usr/sbin/nologin service_user


10. ###### What commands can he use to list all users and groups in the system?
Commands:


**To list all users:**

cat /etc/passwd

**To list all groups:**g

cat /etc/group



---