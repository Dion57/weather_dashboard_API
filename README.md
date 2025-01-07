# Weather Dashboard Application

A Python-based weather dashboard that fetches real-time weather data for specified cities using the OpenWeather API and securely stores the data in AWS S3. The project is fully containerized using Docker, making it portable and scalable for future enhancements.

## Features

- Fetches weather data for cities like Philadelphia, Seattle, Lagos, and Abuja.
- Stores weather data in JSON format in an AWS S3 bucket.
- Fully containerized for seamless deployment.
- Provides a foundation for future analytics and visualization.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Setup and Installation](#setup-and-installation)
- [Project Structure](#project-structure)
- [Usage](#usage)
- [Challenges and Learnings](#challenges-and-learnings)
- [Future Enhancements](#future-enhancements)
- [License](#license)

## Prerequisites

- Python 3.9 or later
- Docker installed ([Get Docker](https://docs.docker.com/get-docker/))
- AWS CLI configured ([AWS CLI Documentation](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html))
- OpenWeather API key ([Get API Key](https://openweathermap.org/api))

## Setup and Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/your-username/weather-dashboard.git
   cd weather-dashboard
   ```

2. **Set Up Environment Variables**

   Create a `.env` file in the project root directory and add the following:

   ```env
   OPENWEATHER_API_KEY=your_api_key
   AWS_ACCESS_KEY_ID=your_aws_access_key
   AWS_SECRET_ACCESS_KEY=your_aws_secret_key
   AWS_REGION=your_aws_region
   BUCKET_NAME=your_s3_bucket_name
   ```

3. **Install Dependencies**

   Set up a virtual environment and install required packages:

   ```bash
   python -m venv venv
   source venv/bin/activate # On Windows: venv\Scripts\activate
   pip install -r requirements.txt
   ```

4. **Build the Docker Image**

   ```bash
   docker build -t weather_dashboard .
   ```

## Project Structure

```
weather-dashboard/
├── src/
│   └── weather_dashboard.py    # Main application script
├── tests/
│   └── test_weather.py         # Unit tests
├── data/                       # Temporary storage for local data
├── .env                        # Environment variables (not included in repo)
├── Dockerfile                  # Docker configuration
├── requirements.txt            # Python dependencies
├── README.md                   # Project documentation
└── .gitignore                  # Ignored files
```

## Usage

### Running the Application Locally

Activate the virtual environment and run the script:

```bash
python src/weather_dashboard.py
```

### Running the Application in Docker

1. **Build the Docker Image:**

   ```bash
   docker build -t weather_dashboard .
   ```

2. **Run the Container:**

   ```bash
   docker run --env-file .env weather_dashboard
   ```

## Challenges and Learnings

- **Dependency Management:** Used virtual environments to manage dependencies effectively.
- **AWS S3 Configuration:** Ensured proper bucket permissions and handled region-specific requirements.
- **Error Handling:** Built robust error handling for API rate limits and invalid inputs.

## Future Enhancements

- Add visualization dashboards using AWS QuickSight or Tableau.
- Automate periodic data fetching using CI/CD pipelines.
- Integrate predictive weather models for advanced analytics.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Contributions, suggestions, and feedback are welcome! Feel free to fork this repository and submit a pull request. 🚀
