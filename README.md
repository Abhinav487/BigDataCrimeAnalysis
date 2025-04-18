# BigDataCrimeAnalysis

# CIS 5200 Term Project: Analyzing Crime Data with HiveQL

**Authors:** Jesus Perez, Abhinav Singh, Tien Cheng  
**Instructor:** Dr. Jongwook Woo  
**Course:** CIS 5200  
**Lab Tutorial:** Crime Data Analysis using Hadoop HDFS and HiveQL

---

## 🧠 Objectives

This tutorial guides you through downloading, uploading, processing, and analyzing crime datasets from **Los Angeles (2010–Present)** and **Chicago (2001–Present)** using Hadoop's **HDFS** and **HiveQL**.

You'll:
- Create external Hive tables
- Run aggregate queries on crime data
- Export query results as CSVs
- Visualize crime patterns using external tools like **Tableau**, **Excel 3D Maps**, or **Power BI**

---

## 🛠️ Prerequisites

- Access to a Hadoop cluster with HDFS and Hive installed
- SSH client (e.g., Git Bash, PuTTY)
- SCP tool for file transfers
- Basic knowledge of SQL and CLI tools

---

## 📥 Step 1: Download Datasets

Download the datasets and place them in your local machine (e.g., `Downloads/`):

- [LA Crime Data (2020–Present)](URL)
- [LA Crime Data (2010–2019)](URL)
- [Chicago Crime Data (2001–Present)](URL)

---

## 🔼 Step 2: Upload to HDFS

### 2.1 Transfer Files to Cluster

```bash
scp "Crime_Data_from_2010_to_2019.csv" your_username@144.24.13.0:/tmp/
scp "Crime_Data_from_2020_to_Present.csv" your_username@144.24.13.0:/tmp/
scp "Crimes_-_2001_to_Present.csv" your_username@144.24.13.0:/tmp/

### 2.2 Verify Upload

```bash
ssh your_username@144.24.13.0
cd /tmp
ls
