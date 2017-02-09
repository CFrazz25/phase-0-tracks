1. What are some of the key design philosophies of the Linux operating system?

Linux is an open source community for contributing software applications. Technical skill and a desire to contribute are the only qualifications for participating. Linux takes similar philosophies as the UNIX OS, only Linux is open-source for anyone to contribute code. 

Here are some tenets of Linux: 
Small is Beautiful
Each Program Does One Thing Well
Prototype as Soon as Possible
Choose Portability Over Efficiency
Store Data in Flat Text Files
Use Software Leverage
Use Shell Scripts to Increase Leverage and Portability
Avoid Captive User Interfaces
Make Every Program a Filter

Here are a few resources I used when searching this question: 
http://jingyan.baidu.com/article/4b07be3cb4254b48b380f3b2.html
http://docstore.mik.ua/orelly/linux/run/ch01_07.htm
https://opensource.com/business/15/2/how-linux-philosophy-affects-you
https://opensource.com/business/14/12/linux-philosophy


2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A VPS is a virtual machine sold as a service by an Internet hosting service. It is where you can host your own software on a server, that's not physical servers. You can install almost any software on that operating system. 

As with all types of web hosting, there are pros and cons to each and each one is suited to specific circumstances. Generally there are many advantages to hosting your site on a virtual private server. These include:

A VPS hosting account is less expensive than a full dedicated hosting plan that uses a physical server.
Many VPS plans can be customized to meet your needs so you pay for what you want but you do not need to deal with any features you will never need.
Many VPS hosting plans are easily scalable. You can start off in your virtual environment with the minimum amount of resources you need and then as you grow gradually increase your hosting plan to accommodate your needs. You do not have to pay for excessive resources you have not yet grown into.
You have a lot more control over your virtual server than you do with shared hosting. You will likely have root access and the ability to use scripts that may not be allowed in the shared hosting environment.
You have the same technical support as with shared hosting for most issues.
You can choose from semi managed hosting where the web host handles some maintenance and fully managed services.

A couple resources used: http://www.webhostinghub.com/web-hosting-guide/the-pros-and-cons-of-vps-web-hosting

https://en.wikipedia.org/wiki/Virtual_private_server


3. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

There is no security in place if you make a mistake on the command line. It won't ask you for a password to proceed with a command or ask you if you're sure about a command. As logged in as a root user, the system assumes you know what it's doing and once you executed a command, it does it right away. It's like having admin access. 

Here are a few resources I used to help search this question: 
http://askubuntu.com/questions/16178/why-is-it-bad-to-login-as-root
http://superuser.com/questions/666942/why-it-is-not-recommend-to-use-root-login-in-linux
https://www.digitalocean.com/community/questions/why-not-use-root-account-all-the-time
https://teknoteknik.wordpress.com/tag/sudo-vs-root/