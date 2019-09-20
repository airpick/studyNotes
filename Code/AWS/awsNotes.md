AWS - Certified Solutions Architect Associate - Study Guide

Resource Groups - Services

	Compute

		EC2 (Elastic Compute Cloud)
			Virtual machines within the AWS platform. 
			You can also have physical machines as well, but these will not be used in the course. 

		EC2 Container Service
			This is where you run and manage docing containers at scale.

		Elastic Beanstalk
			For developers who do not understand AWS and just want to upload their code. 
			Elastic Beanstalk will then go through the code and provision things such as: 
				- Auto Scaling Groups
				- Load Balances
				- EC2 Instances
			Featured more heavily in the Developers Associate course and the DevOps Pro course, but not so much for this course. 

		Lambda
			Lambda is code you upload to the cloud, then you control when it executes. 
			You do not need to worry about any underlying physical or virtual machines (i.e. OS specific issues or adjustments). 

			Lambda will be used throughout the Solutions Architect Associate and Developers Associate courses in order to create a serverless website using the following:
				- Lambda
				- API gateway
				- S3
				- Poly

			Later, we will configure a website that will convert text to mp3 and use the notes we take for these courses in order to study aurally. 
			This will be implemented first as a website, which can be listened to through a smartphone, and later will also be able to be used by Alexa. 

		Lightsail
			This is Amazon's Virtual Private Server service. 
			Designed for people who simply do not want to understand anything about AWS and its underlying infrastructure. 

			How it works: 
				- issues you a server
				- you can sign into the server using a fixed IP address
				- allows RDP access for Windows; SSH access for Unix
				- server management is performed using its own management console

			Is supposed to be a watered-down version of Compute or EC2. 

		Batch
			Not covered in any of the certification courses. 
			Does Batch computing within the cloud. 


	Storage

		S3 (Simple Storage Service)
			One of the oldest storage services. 
			Object-based storage that uses "buckets", which you place data within on the cloud. 
			This will be touched on much more in-depth at a later time. 

		EFS (Elastic File System)
			Network-attached storage. 
			Files can be mounted to an EFS volume, then mount these volumes to multiple Virtual Machines. 
			This will be reviewed in the EC2 section. 

		Glacier
			Data archival system. 
			If, for instance, you only want to check your data every year or so you can use this service for a very inexpensive price. 

		Snowball
			Brings large amounts of data into the AWS system. 
			Think terabytes. 
			You can ship in a storage device to Amazon, which will upload the data manually. 
			This is used to mitigate the length of time uploading across a slow network would take. 

		Storage Gateway
			Virtual appliances you can install in your data center/head office that will replicate information back to S3. 
			There are four different types of Storage Gateways which will be covered for the Solutions Architect Associate and Developers Associate classes. 


	Databases

		RDS (Relational Database Service)
			MySQL, Microsoft SQL, Amazon's Aurora, and other relational databases will be housed within RDS.

		DynamoDB 
			This is where non-relational databases. 
			The differences between relational and non-relational databases will also be covered later in the course (probably only high-level). 

		Elasticache
			Way of caching commonly queried things from your server. 
			This can be used to cache common queries to be more easily accessible to your webserver, as opposed to when the data is housed on the database server. 
			Additionally, this will improve the functionality of the webserver.
			This will also be covered in the Database section of the course. 

		Red Shift
			Data warehousing or business intelligence queries are generally performed here. 
			Complex queries, such as profit/loss ratios within a region and range can be performed using this service in order to free up performance for your production server. 


	Migration

		AWS Migration Hub
			A tracking service which is used to track services as you migrate to AWS (sounds redundant, but makes sense).
			Also used in conjunction with other services (general, but touched on later). 

		Application Discovery Service
			Automated set of tools that detects what applications you have and what their dependencies are. 
			A for instance is that you have a SharePoint server that has a dependency on a domain controller or SQL server. If so, Application Discovery Service will help to track these dependencies. 

		Database Migration Service
			Very easy way to migrate your On Premise (Oracle) servers to AWS. 

		Server Migration Service
			Helps to migrate your physical and virtual servers to the AWS cloud. 

		Snowball (from Storage)
			Given that it is a service to upload large amounts of data, it can also be used for Server migration effeciently (depending on the server size). 


	Networking & Content Delivery

		VPC (Amazon Virtual Private Cloud)
			Think of this as a virtual data center. 
			You can configure things such as the firewall, availability zones, network sider address ranges, ACLs, root tables, etc. 
			There will be a full section for this in each course. 
			This is fundamental.

		CloudFront
			Amazon's content delivery network. 
			This will also have its own section. 
			It helps to migrate media, such as video files, image files, music files, and more in a way that allows the data to be housed closer to the users that typically access it (increased responsiveness). 
			Think of it as though it is moving from a Region to an Edge Location to better suit the end-user. 

		Route53
			DNS service. 
			This will be covered in a lot of detail for both courses. 

		API Gateway
			This will be used to create our serverless website using Poly. 
			API Gateway is a means of creating your own APIs for other services to talk to. 

		Direct Connect
			This is a big topic for the Solutions Architect Associate exam. 
			Direct Connect is a way to have a certified line between your data center directly to Amazon, and it will connect into your VPC. 
			Important exam topic. 


	Developer Tools

		CodeStar
			A method for project management with code. 
			It helps to set a continuous delivery tool chain. 

		CodeCommit
			A method to store the code (essentially a source control service).
			Store your own private GIT repositories here. 

		CodeBuild
			Once the code is ready, this will compile the code and run tests against it. 
			After it is built, it will provide software packages that are ready to deploy. 

		CodeDeploy
			Deployment service which automates deployment to your EC2 instances, On Premise instances, or even your Lambda instances. 

		CodePipeline
			A continuous delivery service which helps to model, visualize, and automate the steps to release your software. 

		X-Ray
			Used to debug and analyze your serverless applications. 
			It has request tracings which will assist with finding and analyzing the root cause of your issues and performance bottlenecks.

		Cloud9
			This is an IDE where you can develop your code within the AWS console (without desktop). 
			This means you can develop via browser! 


	Management Tools

		CloudWatch
			Monitoring service.
			Bread and butter of the SysOps Admin exam. 
			Monitors performance. 

		CloudFormation
			Used all the time by irl Solutions Architects. 
			Featured in the Solution Architect Associate and Professional exams.
			It's a way of scripting infrastructure (building your virtual server, piece by piece, without having to actually use physical parts). 
			Infrastructures can be used for templates, too! 

		CloudTrail
			Every adjustment in the AWS Management Console will trigger an API call in the environment. 
			You can then use this to view these logs. It will help to debug, etc. 
			Turned on by default, but only stores information for 1 wk.

		Config
			Monitors the configuration of your entire AWS environment. 
			You can use this to move back and forth in time and observe the changes. 

		OpsWorks
			Similar to Elastic BeanStalk, but more robust.
			Uses Chef and Puppet in order to automate the environment. 
			Covered in the SysOps course. 

		Service Catalog
			Fortune 500 company services. 
			Has a list of IT approved services, architectures, etc. 
			Used for governance requirements, etc. 

		Systems Manager
			Used for EC2 to push changes/security patches to 1000s of instances simultaneously. 
			Can group all of your departments into EC2 instances or SharePoints, making departmental management and overviewing much easier. 
			Is not featured in any of the exams.

		Trusted Advisor
			Different from Inspector. 
			It will give you advice around multiple diciplines, such as security, utilization (services that are not optimized), etc. 
			Helps to give advice. 
			Will be in the exam. 

		Managed Services
			A help team that can help with things such as auto-scaling, EC2 services, etc. 


	Media Services

		Elastic Transcoder
			Uploading video will trigger this. 
			It will help to resize videos to fit perfectly on any screen (and similar features). 

		MediaConvert
			File based video transcoding service with broadcast-grade features.
			Create video on-demand content for broadcast and multi-screen delivery at scale. 

		MediaLive
			Broadcast grade live video processing service.
			Creates high-quality streams for you to deliver to broadcast television networks or multiscreen devices such as tvs, smartphones, and set-top boxes. 

		MediaPackage
			Prepares and protects your videos for delivery over the internet. 

		MediaStore
			Storage service optimized for media. 
			Has great performance, good consistency, and low latency for use to deliver live on-demand content. 

		MediaTailor
			Allows for target advertising into video streams without sacrificing quality of service. 


	Machine Learning

		SageMaker
			Helps developers to use Deep Learning when coding for their environments. 
			Deep Learning revolves around developing and working with a neural network. 

		Comprehend
			Performs sentiment analysis around data sources. 
			Can be used to gather customer feedback relating to a product, for instance. 

		DeepLens
			Camera can learn what it is looking at on the hardward (does not need to call to server). 
			Is independently artificially aware.

		Lex
			Powers Amazon Alexa. 
			AI to help reach customers. 

		Machine Learning
			Not as dynamic as Deep Learning. 
			Can be used to predict outcomes based on datasets.

		Polly
			Takes text and converts it to speech. 
			Can choose different languages or regions. 

		Rekognition
			Video and image analytics. 
			Will tell you what is in the image/video and percentage of accuracy. 
			Could be used to observe screen accuracy for testing. 

		Amazon Translate
			Like Google Translate.

		Transcribe
			Speech recognition used to turn speech to text. 


	Analytics

		Athena
			Allows the user to run SQL queries against items in your S3 buckets. 
			An example is if you have a bunch of .xlsx files in your S3 bucket, you can use a SQL query to search all of these files and return results. 
			Serverless; no infrastructure to manage. 

		EMR (Elastic Map Reduce)
			Used to process large amounts of data. Big data solutions. 

		CloudSearch
			Search service for AWS. 

		ElasticSearch Service
			Another search service for AWS. 

		Kinesis
			Will be covered later in the exam. 
			Ingests large amounts of data into AWS, such as entire social media feeds or tweets. 
			Think of pulling all data correlated to a hashtag. 

		Kinesis Video Streams
			Same, but will check on multiple users' video usage and watching. 

		QuickSight
			BI tool. 
			Probably a cheaper version of Tableau. 

		Data Pipeline
			Way to move data between AWS services. 
			Will be covered in the course. 

		Glue
			Used for ETL (Extract, Transform, and Load). 
			Not featured in any of the exams currently. 


	Security & Identity & Compliance

		IAM
			Will be used for this course. 
			Very important.

		Cognito
			Device authentication method. 
			Example: If you want users to be able to store data in a DynamoDB, you can give them limited/temporary rights access to an AWS server. 

		GuardDuty
			Unkwnown

		Inspector
			You can run tests against your EC2 services to check for things like security vulnerabilities. 

		Macie
			Scan your S3 buckets for PII. 

		Certificate Manager
			Way to manage your SSL tickets. 

		CloudHSM
			Dedicated module to store encryption keys. 
			Very secure process. 

		Directory Service
			Integrating Microsoft Active Directory services with AWS services. 

		WAF (Web Application Firewall)
			Stop things like SQL injections.

		Shield
			Comes by default with Route53 and others. 
			Protects against DDoS.
			Advanced Shield can be paid for to provide additional protection. 

		Aritfact
			Provides compliance reports and SOC controls. 
			PCI reports can also be pulled from here. 


	Mobile Services

		Mobile Hub
			Management console to set up AWS services for you. 

		Pinpoint
			Uses targeted push notifications to drive engagement. 

		AWS AppSync
			Updates the data to web apps in real-time. 
			Updates data for offline users at reconnect. 

		Device Farm
			Testing apps on live devices. 
			Not used for any of the exams. 

		Mobile Analytics
			Not used for any of the exams. 


	AR / VR

		Sumerian
			Used for AR, VR, and 3D environment design. 
			Uses things like OpenGL. 


	Application Integration

		Step Functions
			???

		Amazon MQ
			???

		SNS
			Notification service. 
			Can set up things like a billing alarm. 

		SQS
			Decouples infrastructures. 
			Can do things like add text as an overlay to an image. 

		SWF 
			???


	Customer Engagement

		Connect
			Allows strong customer engagement. 
			Helps to route customers dynamically in order to reach users with better efficiency. 

		Simple Email Service
			Name says it all dude. 
			Highly scalable and customizable. 


	Business Productivity

		Alexa For Business
			You can use it to let IT know the printer is broken or dial into a meeting room. 

		Chime
			Video conferencing tool. 

		Work Docs
			Dropbox for AWS. 
			Secure. 
			Only one covered in the exam from this section. 

		WorkMail
			Similar to Office365 or gmail.


	Desktop & App Streaming

		Workspaces
			Lets you emulate other OS', such as Windows or Linux. 

		AppStream 2.0
			Not featured in the exam. 


	Internet of Things

		iOT
			Thousands of devices can all send info back to a server and helps perform management of this requested data. 

		iOT Device Management
			???

		Greengrass
			???


	Gaming

		GameLift
			Game development service. 
			Not in the exams. 


Relevant to the Solutions Architect Assoiciates Exam

	AWS Global Infrasturcture
	Compute
	Storage
	Databases
	Networking & Content Delivery
	Managements Tools
	Analytics
	Security & Identity & Compliance
	Application Integrations


Identity Access Management 101

	IAM (Identity Access Management)

		* Centralised control of your AWS account
		* Shared Access to your AWS account
		* more stuff

	Critical Terms: 

		* Users - End Users (think people)
		* Groups - A collectin of users under one set of permissions
		* Roles - You create roles and can then assign them to AWS resources
		* Policies - A document that defines one or more permissions

	IAM users, roles, and groups are global (not tied to a region).


S3 Information

	S3 is a safe place to store your files. 
	It is Object based storage.
	The data is spread across multiple devices and facilities.
	Cloudberry is a Windows Explorer styled program used to search S3. 

	* S3 is Object based i.e. allows you to upload files. 
	* Files can be from 0 Bytes to 5 TB.
	* There is unlimited storage.
	* Files are stored in Buckets. 
	* S3 is a universal namespace, that is, names ust be unique globally. 
	* https://s3-eu-west-1.amazonaws.com/bucketname

	Data Consistency Model For S3

		* Read after Write consistency for PUTS of new Objects.
		* Eventual Consistency for overwrite PUTS and DELETES (can take some time to propogate).
		* Updates to S3 are automic (you will either get the old data or the new data, never a corrupted file or mix). 

	S3 is a Simple Key, Value Store

		* S3 is Object based. Objects consist of the following; 
			* Key (This is simply the name of the object). 
				It is used by name because S3 is lexigraphical, as opposed to other organizational structures such as chronological.
			* Value (This is simply the data and is made up of a sequence of bytes). 
			* Version ID (Important for versioning).
			* Metadata (Data about the data you are storing). 
			* Subresources:
				* Access Control Lists.
				* Torrent.

	S3 - The Basics

		* Built for 99.99% availability for the S3 platform. 
		* Amazon Guarantee 99.9% availability. 
		* Amazon guarantees 99.999999999% durability for S3 information (Remember 11 x 9s). 
		* Tiered Storage Available. 
		* Lifecycle...

	S3 - Storage Tiers/Classes

		* S3 - 99.99% availability, 99.999999999% durability, stored redundantly across multiple devices in multiple facilities and is designed to sustain the loss of 2 facilities concurrently. 
		* S3 - IA (Infrequently Accessed) - For data that is accessed less frequently, but requires rapid access when needed. Lower fee than S3, but you are charged a retrieval fee. 
		* ...

	|| XXX || Standard || Standard - IA || Reduced Redundancy Storage ||
	| ...

	Glacier

		Summary: 
			Glacier is an extremely low-cost storage...

		|| XX || Standard || Standard - IA || Amazon Glacier ||
		| ...

	S3 - Charges

		Charged for: 
			* Storage
			* Requests
			* Storage Management Pricing
			* Data Transfer Pricing 
			* Transfer Acceleration

	What is S3 Transfer Acceleration? 

		Amazon S3 Transfer Acceleration enables fast, easy, and secure transfers of files over long distances...

	You can google Amazon Transfer Acceleration and actually see what percentage of a speed increase you will receive per region using Transfer Acceleration, if you would like a more visual representation of the improvements. 

	Overview:

		* SERESFADSFA

	The smallest size an object can be in an S3 Bucket is 0 bytes.


Create an S3 Bucket - Exam Tips

	* Bueckets are universal name space.
	* Upload an object to S3 to receive a HTTP 200 Code
	* S3, S3 - IA, S3 Reduced Redundancy Storage
	* Encryption
		* Client Side Encryption
		* Server Side Encryption
			* Server side encryption with Amazon S3 Managed Keys (SSE-S3)
			* Server side encryption with KMS (SSE-KMS)
			* Server side encryption with Customer Provided Keys (SSE-C)
	* Control access to buckets using either a buckeet ACL or using Bucket Policies
	* BY DEFAULT BUCKETS ARE PRIVATE AND ALL OBJECTS STORED INSIDE THEM ARE PRIVATE. 


Version Control

	* Stores all versions of an object (including all writes and even if you delete an object)
	* Great backup tool
	* Once enabled, Versioning cannot be disabled, only suspended
	* Integrates with Lifecycle rules
	* Versioning's MFA Delete capability, which uses multi-factor ...


Cross Region Replication - Lab

	* Requires versioning
	* Only new objects will be replicated over (existing objects will need to be migrated to a replicated bucket via the command line)
	* Permissions do not copy w/ Objects by default when moved from command line; they will for newly uploaded Objects
	* Deleting objects will replicate; deleting delete markers will not
	* Reverting a version to a previous 

	Summary: 

		* Versioning must be enabled on both the source and destination buckets. 
		* Regions must be unique. 
		* Files in an existing bucket are not replicated automatically. All subsequent updated files will be replicated automatically. 
		* You cannot replicate to multiple buckets or use daisy chaining ( at this time.).
		* Delete markers are replicated. 
		* Deleting individual versions ...


Life Cycle Management, IA S3, & Glacier Lab

	Lecture Notes: 

		* Users can switch back and forth between old and new UIs in the AWS console. 
		* Lifecycle Rules will help manage your storage costs by managing the lifecycle of your Objects/Buckets. 
		* Lifecycle Rules can be applied to entire buckets, current versions of Objects, and previous versions of Objects (so useful!). 
		* Glacier will charge you for 90 days worth of storage at minimum (deleting earlier will still incure the minimum 90 day charge). 
		* Storage Management will change between new and old management consoles (display versions / UIs) \.

	Summary:

		* Can be used in conjunction with versioning. 
		* Can be applied to current versions and previous versions.
		* The following actions can now be done:
			* Transition to the Standared - Infrequent Access Storage Class (128 Kb and 30 days after the creation date).
			* ... 





_____



EC2 Section

	What is EC2? 

		Amazon Elastic Compute Cloud (Amazon EC2) is a web service that provides resizable compute capacity in the cloud. 
		Amazon EC2 reduces the time required to obtain and boot new server instances to minutes, allowing you to quickly scale capacity, both up and down, as your computing requirements change. 
		Amazon EC2 changes the economics of ...

	EC2 Options

		* On Demand
			Allows you to pay a fixewd rate by the hour (or by the second) with no commitment.
		* Reserved
			Provide you with a capacity reservation, and offer a significant discount on the hourly charge for an instance. 
			1 year or 3 year terms
		* Spot
			Enable you to bid whatever price you want for an instance capacity, providing for even greater savings if your applications have flexible start and end times. 
			If the spot price rises above your set price, the services will either be terminated or the payment amount will need to be increased. 
		* Dedicated Hosts
			...

	On Demand
		* Users that want the low cost and flexibility...

	Reserved
		* Applications with steady state or predictable usage
		* Applications that require reserved capacity
		* Users able to make upfront payments to reduce their total computing costs even further
			* Standard RI's (Up to 75% off on demand)
			* Convertible RI's (Up to 54% off on demand) capability to change the attributes of the RI...

	Spot
		* Applications that have flexible start and end times. 
		* Applications that are only feasible at very low compute prices. 
		* Users with urgent ...

	Dedicated Hosts
		* Useful for regulatory requirements that may not support multi-tenant virtualization. 
		* Great for licensing...

	EC Instance Types 
		This is a table. Will need to copy over once I convert to Word...

		|| Family || Specialty || Use case ||
		| D2 | Dense Storage | Fileservers/Data Warehousing/Hadoop |
		| R4 | Memory Optimized | Memory Intensive Apps/DBs |
		| M4 | General Purpose | Application Servers |
		| C4 | Compute Optimized | CPU Intensive Apps/DBs |
		| G2 | Graphics Intensive | Video Encoding/3D Application streaming | 
		| I2 | ...

		DIRTMCGFPX - DR. MC GIFT PX (the easy way to memorize this)

		D for Density
		R for RAM
		M - main choice for general purpose apps
		C for compute
		G - Graphics
		I for IOPS
		F for FPGA
		T cheap general purpose (think T2 Micro)
		P - Graphics (think Pics)
		X - Extreme Memory

	What is EBS? 

		Amazon EBS allows you to create storage volumes and attach them to Amazon EC2 instances. 
		Once attached, you can create a file system on top of these volumes, run a database, or use them in any other way you would use a block device. 
		Amazon EBS volumes are placed in a specific Availability Zone...

	EBS Volume Types

		* General Purpose SSD (GP2)
			* General purpose, balances both price and performance. 
			* Ratio of 3 IOPS per GB with up to 10,000 IOPS and the ability to burst to 3,000 IOPS for extended periods of time for volumes at 334 ...

		*Throughput Optimized HDD (ST1)
			* Big data
			* Data warehouses
			* Log processing
			* Cannot be a boot volume
		* Cold HDD (SC1)
			* Lowest Cost Storage for infrequently accessed workloads
			* File Server
			* Cannot be a boot volume
		* Magnetic (Standard)
			* Lowest cost per gigabyte of all EBS volume types that is bootable. ...

	What We'll Cover

		* Launch an EC2 Instance
		* Security Group Basics
		* Volumes and Snapshots

		...

		* AWS Command Line
		* IAM Roles with EC2
		* Bootstrap Scripts
		* Launch Configuration Groups
		* Autoscaling 101
		* Elastic File System (EFS)
		* Lambda Concepts (big topic)
		* Build a serverless webpage with Lambda & API Gateway
		* Build a serverlesss website with Polly
		* Build an Alexa skill to help you study
		* HPC (High Performance Compute) & placement groups

	Exam Tips EC2

		* Know the differences between: 
			* On Demand
			* Spot
			* Reserved
			* Dedicated Hosts
		* Remember with spot instances: 
			* If you terminate the instance, ...

		* EBS Consists of: 
			* SSD, General Purpose - GP2 - (Up to 10,000 IOPS)
			* SSD, Provisioned IOPS - IO1 - (More than 10,000 IOPS)
			* HDD, Throughput Optimized - ST1 - frequently acessed workloads
			* HDD, Cold - SC1 - less fequently accessed data
			* HDD, Magnetic - ...

		* EC2 Instance Types
			* Dr. McGift Px   