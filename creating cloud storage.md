# Creating Cloud Storage (Object) – Introduction

## Table of Contents

[Overview](overview)

[Pre-Requisites](#pre-requisites)

[Recommended Learning Assets](#recommended-learning-assets)

[practice 1: Log In to OCI Console](#practice-1-log-in-to-oci-console)

[practice 2: Create Object Storage Bucket](#practice-2-create-object-storage-bucket)

[Practice 3: Upload an Object and Provide Access to the Object](#practice-3-upload-an-object-and-Provide-access-to-the-object)

[Practice 4: Delete the Resources](#practice-4-delete-the-resources)

## Overview:

Welcome to the Cloud Storage (Object) self-paced lab from Oracle!

**How to use the lab interface:**
 
[Click here to open the video in a new tab.](https://www.youtube.com/watch?v=FJRnrNMrj3Y)

Click **Start** to get started!

## Pre-Requisites

- Oracle Cloud Infrastructure account credentials (User, Password, and Tenant)
- Region and compartment with limits for a few small instances (1.1 or 2.1 is sufficient)
- A VCN created with at least one subnet, internet gateway, default route to internet gateway and security groups allowing at least port 22/SSH in.
- Ability to SSH into compute instances

## Recommended Learning Assets

- Recommended 1
- Recommended 2
- Recommended 3
- Recommended 4


## practice 1: Log In to OCI Console

**Before you Begin:**

1- All screen shots are examples ONLY. Screen shots
can be enlarged by Clicking on them

2- Every User MUST keep below credentials handy.

User Name

Password

Compartment Name (Provided Later)

Cloud Tenant Name

3- Do NOT use compartment name and other data from 
screen shots.Only use  data(including compartment name) 
provided in the content section of the lab

**NOTE: OCI UI is being update. Please read below:**

Some screen shots might show the older layout with Services displayed Horizontally or expanded vertically.In Current UI All services can now be accessed by clicking menu.

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/1.jpg">

 
In this section we will login to the OCI console and adjust your screen size (if needed).

Step 1. Sign in to your account using the below 

**credentials (Please type in your credentials):**

**Cloud Tenant** : {{4990c081-caee-dae5-1918-2346642fe7ef.output.tenancy_name}}

**Username**: {{4990c081-caee-dae5-1918-2346642fe7ef.output.usernames_list}}

**Password**: {{4990c081-caee-dae5-1918-2346642fe7ef.output.ui_passwords_list}}

**Note**: Your password should be updated automatically for you, but sometimes you may be asked to change it after signing in the first time. If prompted, pleaseupdate the password. You can use this one to expedite things: Oracle123!!!! . It will not be saved after this lab expires.

Step 2. Reduce the browser display size  as needed(Below example is for Chrome). 

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/2.png">
 
## practice 2: Create Object Storage Bucket

In this section we will create Object storage bucket. Using Object storage does not require creating any other resource.

Step 1. From the OCI Services menu, click Object Storage

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/3.png"> 
 
Step 2. Select the  correct Compartment (Left side of the OCI console) as shown below.

**Choose Compartment:**  {{4990c081-caee-dae5-1918-2346642fe7ef.output.compartment_name}}

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/4.png"> 
 
Step 3. Click **Create Bucket,** Fill out the dialog box:

       3.1 **Bucket Name:** Provide a name (Test-Bucket in this lab)

       3.2 **Storage Tier:**  STANDARD

Step 4. Click **Create Bucket**. 

<img width="800" alt="image001" zsrc="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/5.png"> 

**You have now created Object Storage bucket though there are no Objects in it(text filemedia file, image etc). Next wewill go over the steps on how to upload an object and share it for other users to download it.**
 
## Practice 3: Upload an Object and Provide Access to the Object

In this section we will go over the steps needed to upload an object (text file, media file, image etc) and how to create a pre-authenticated request so the object is accessible from the internet.

Step 1. Click on the **Apps** icon  and select **Git-Bash** to open a terminal window. 

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/6.png"> 

Change directory to the Downloads folder Enter command:

`$ cd /c/Users/PhotonUser/Downloads`

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/7.png"> 
  

Step 2. Create a sample file, enter command:

`$ touch samplefile`

 This should create file by the name "samplefile" in the downloads folder.

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/8.png"> 
 
Step 3. Switch to  OCI console and click the Bucket Name. 

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/9.png"> 

Step 4. The Bucket detail window should be visible. Click Upload Object. 

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/10.png"> 

Step 5. Click  **Browse**. Navigate to This PC > Downloads. You should see the **samplefile** created earlier. Select it and click **Upload Object** in the dialog box. 

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/11.png"> 

Step 6. The file should be visible under **Objects**. Click **Action** icon and click **Create Pre-Authenticated Request**. This will create a web link that can be used to access the object  Without requiring any additional authentication.

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/12.png"> 
 
Step 7. Fill out the dialog box:

  7.1 **NAME:** Use an easy to remember name.

  7.2 **PRE AUTHENTICATION REQUEST TARGET:** OBJECT

  7.3 **ACCESS TYPE:** PERMIT READS ON THE OBJECT

  7.4 **EXPIRATION DATE/TIME:** Specify link expiration date

Step 8. Click **Create Pre-Authenticated Request**

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/13.png"> 

Step 9. Click **Copy** to copy the link

    NOTE: The link must be copied and saved once the window is closed the link can not be retrieved again. You can launch Notepad using App icon and copy it.

Step 10. Click **Close**.

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/14.png"> 

Step 11. Open a new browser window and paste Pre-Authenticated link.

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/15.png"> 

Step 12: An option to **download** the file will appear.

  **NOTE:** Do NOT download the file as due to space restrictions it is not allowed for the purpose of this lab. 

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/16.png"> 

You have uploaded an object to Object Storage bucket, created a pre-authenticated link and successfully accessed the object. The Pre-Authenticated link can be shared with other users to provide them access to the object.Multiple objects of any size can be uploaded to the bucket and shared across teams/users.

## Practice 4: Delete the Resources

Step 1. From the Object Storage detail window, Click **Pre-Authenticated Requests,** click **Delete,** then Click **OK** in Confirm window.

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/17.png"> 

Step 2. Click **Objects,** Click the **action icon**  , select **Delete,** click OK in the Confirm window.

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/18.png"> 

Step 3.Under Bucket Name, Click **Delete**, then click **OK** in the Confirm window.

<img width="800" alt="image001" src="https://github.com/sysgain/qloudable-tl-labs/blob/sample-md-files/imges/19.png"> 
 
### Conclusion:

Congratulations! You have successfully completed the Cloud Storage
Lab for Object Storage. In this lab, you created Object Storage bucket,
uploaded a file to the bucket, created a Pre-Authenticated link to share the file.
Feel free to continue exploring or start a new lab.
Thank you for taking this training lab!

