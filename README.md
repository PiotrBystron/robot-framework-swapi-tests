# Star Wars API Tests (SWAPI) — Robot Framework

Automated API tests for the **Star Wars API (SWAPI)** using **Robot Framework** and **RequestsLibrary**.  
The SWAPI service is public, read-only, and supports only `GET` requests - perfect for practicing REST API test automation. DELETE / PUT / POST requests are not supported by the API.

---

## Features

- Tests for multiple SWAPI endpoints:
  - `/people/{id}`
  - `/planets/{id}`
  - `/starships/{id}`
- Positive and negative test scenarios  
- Validation of:
  - status codes
  - response structure
  - response data
- Parametrized test cases  
- HTML reporting using `Robot Framework`  

---

## Project structure

```
robot-framework-swapi-tests/
│── resources/
│ │── api_keywords.resource
│ │── common.resource
│ └── variables.resource
|
│── tests/
│ │── people_test.robot
│ │── planets_test.robot
│ └── starships_test.robot
│
│── README.md
└── requirements.txt
```

---

## How to run

### 1. Clone repository

```bash
git clone https://github.com/PiotrBystron/robot-framework-swapi-tests.git
```

```bash
cd robot-framework-swapi-tests
```

### 2. Create and activate a virtual environment

```bash
python -m venv .venv
```

```bash
.venv\Scripts\activate
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Run the tests

```bash
robot tests
```

A detailed report will be generated as report.html in the project folder.
