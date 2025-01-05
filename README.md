# Uber Data Analysis Pipeline | [Dashboard](https://lookerstudio.google.com/s/rF96sQarYOM)

<img width="1078" alt="Uber_dashboard" src="https://github.com/user-attachments/assets/283ebbed-5110-432f-afc6-f78f6dfd0941" />


## **Objective**
The Uber Data Analysis Project aims to design and implement a scalable, efficient, and automated data pipeline to process, analyze, and visualize Uber ride data. By leveraging Google Cloud Platform (GCP) and modern data pipeline tools like Mage, the project ensures end-to-end data flow from ingestion to actionable insights through interactive dashboards.

---

## **Project Overview**
The project demonstrates expertise in cloud infrastructure, data modeling, and advanced data engineering techniques to solve real-world analytical problems.
The workflow involves:
- **Data ingestion and storage:** Raw data uploaded to GCP Cloud Storage.
- **Data transformation:** Using Mage’s modular framework to convert raw data into structured dimensions.
- **Data warehousing:** Data stored in BigQuery for querying and analysis.
- **Visualization:** Building dashboards in Looker Studio.

---

## **Step-by-Step Workflow**

![Architecture_Image](https://github.com/user-attachments/assets/395fa84d-da40-4c4a-8f9c-2352dbe9de17)

### **1. Data Ingestion**
- Uploaded raw Uber ride data (in CSV format) to GCP Cloud Storage bucket.
- Configured fine-grained access control, enabling public access to the data through a shareable URL.

### **2. Compute Environment Setup**
- Created a GCP Compute Engine instance with the following specs:
  - **Machine type:** e2-standard (4 CPUs, 16GB memory).
  - HTTP & HTTPS enabled.
- Installed required libraries and tools, including Python, pip and Mage for pipeline orchestration.

### **3. Data Pipeline Orchestration**
- Installed Mage and configured the work environment.
- Managed pipeline through Mage’s UI, with access granted via a firewall rule for port 6789.

### **4. Data Transformation**
- Converted raw data into a structured format according to the data model:
  - Parsed date-time columns to create a time dimension table.
  - Created dimensions for passenger count, trip distance, rate codes, pickup/dropoff locations, and payment types.
  - Built a consolidated fact table merging all dimensions with relevant metrics.
- Utilized Python and Mage’s transformer decorators for modular processing.

### **5. Data Export to BigQuery**
- Configured BigQuery as the data warehouse.
- Established connection credentials via GCP’s service account key in JSON format, integrated into Mage’s io_config.yaml file.
- Loaded transformed data into BigQuery tables using Mage’s exporters.

### **6. Analytical Layer & Dashboard Creation**
- Wrote SQL queries in BigQuery to aggregate data.
- Connected Looker Studio to BigQuery for visualization.
- Designed comprehensive visualizations to include:
  - **Hourly, Daily, and Monthly Trends:** Line charts displaying temporal patterns in revenue, ride counts, and tips.
  - **Geographical Insights:** Heatmaps illustrating pickup and dropoff locations, highlighting activity hotspots.
  - **Key Metrics:** Comparative charts to showcase average trip distances, fare amounts, and payment methods, enabling detailed insights.
  - **Filters and Interactivity:** Enabled dynamic exploration of metrics by providing dropdown filters for Vendor ID, Passenger Count, and Rate Code, along with adjustable trip distance sliders.

![Uber_Data_Model](https://github.com/user-attachments/assets/5f977a39-e7ea-43d2-85c0-3aa6f1e544f7)

---

## **Key Technologies & Highlights**
- **GCP Services:**
  - Cloud Storage
  - Compute Engine
  - BigQuery
  - Looker Studio
- **Pipeline Automation & Management:** Leveraged Mage for simplified data pipeline creation and management
- **Dimensional Modeling:**
    - Fact and dimension tables for scalable and efficient querying.
    - Structured the data model to support OLAP-style analytics

---

## **Achievements**
- Built a robust cloud-native pipeline for large-scale data.
- Automated transformations and ensured modular design using Mage.
- Delivered insights through interactive dashboards with real-time data refresh.

---

## **Challenges & Solutions**

1. Challenge: Setting up secure and seamless connections between GCP services.
     - Solution: Utilized service accounts and fine-grained access controls for secure data flow.
3. Challenge: Handling large datasets during transformations.
     - Solution: Optimized data processing with Pandas and BigQuery’s SQL engine.


---

## **Key Learnings**
- Hands-on experience with GCP services and Mage for data engineering.
- Practical implementation of dimensional modeling for OLAP analysis.
- Automation of workflows for seamless data processing and reporting.

