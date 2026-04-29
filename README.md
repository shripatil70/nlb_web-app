# ⚡ Scalable Web Application using Network Load Balancer & Auto Scaling (AWS)

## 🚀 Project Overview

This project demonstrates how to deploy a **high-performance, low-latency scalable web application** on AWS using a **Network Load Balancer (NLB)** and **Auto Scaling Group (ASG)**.

It ensures that the application can handle **high traffic loads efficiently** by dynamically scaling EC2 instances and distributing traffic at the network level.

---

## 🎯 Objective

* Build a highly scalable web application
* Distribute traffic efficiently using NLB
* Automatically scale EC2 instances based on demand
* Ensure high availability and fault tolerance

---

## 🧰 AWS Services Used

* **Amazon EC2** – Compute instances to host the application
* **Network Load Balancer (NLB)** – High-performance traffic distribution
* **Auto Scaling Group (ASG)** – Automatic scaling of instances
* **Launch Template** – Standardized EC2 configuration
* **Security Groups** – Network-level access control

---

## 🏗️ Architecture

1. User sends request to the application
2. **Network Load Balancer** receives traffic
3. Traffic is forwarded to EC2 instances
4. Auto Scaling Group:

   * Launches new instances during high traffic
   * Terminates instances during low traffic
5. Application remains highly available and responsive

---

## ⚙️ Workflow

* Client Request → NLB
* NLB → EC2 Instances
* Auto Scaling adjusts capacity dynamically

---

## 📂 Project Structure

```
scalable-nlb-app/
│── app/
│   └── index.html
│── scripts/
│   └── user-data.sh
│── README.md
```

---

## 🧪 Sample User Data Script (EC2 Setup)

```bash
#!/bin/bash
yum update -y
yum install nginx -y
systemctl start nginx
systemctl enable nginx

echo "<h1>Deployed via NLB + Auto Scaling</h1>" > /usr/share/nginx/html/index.html
```

---

## 🔐 Security Configuration

* Allowed inbound traffic:

  * Port 80 (HTTP)
* Restricted SSH access (Port 22) to specific IP
* Instances placed in private/public subnets

---

## 📌 Key Features

* High-performance traffic handling using NLB
* Automatic scaling with ASG
* Fault tolerance across multiple instances
* Low latency and high throughput

---

## ⚠️ Challenges Faced

* Configuring health checks correctly in NLB
* Ensuring proper scaling policies
* Managing security group rules

---

## 💡 Future Enhancements

* Add HTTPS support with SSL/TLS
* Integrate CloudWatch alarms for smarter scaling
* Deploy application using Docker & ECS
* Add CI/CD pipeline using AWS CodePipeline

---

## 🧠 Learnings

* Hands-on experience with AWS Auto Scaling
* Understanding of Layer 4 load balancing (NLB)
* High availability system design
* Infrastructure scaling strategies

---

## 📌 Conclusion

This project demonstrates how to design and deploy a **highly scalable and low-latency web application** using AWS services, making it suitable for real-world production environments.

---

## 🔗 Author

**Dhanashri Patil**

