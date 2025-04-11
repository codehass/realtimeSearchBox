<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Realtime Search Box](#-realtime-search-box-)
  - [🛠 Built With](#-built-with-)
    - [Tech Stack](#tech-stack-)
    - [Key Features](#key-features-)
  - [💻 Getting Started](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Usage](#usage)
    - [Run tests](#run-tests)
  - [👥 Authors](#-authors-)
  - [🔭 Future Features](#-future-features-)
  - [🤝 Contributing](#-contributing-)
  - [⭐️ Show Your Support](#️-show-your-support-)
  - [🙏 Acknowledgments](#-acknowledgments-)
  - [📝 License](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Realtime Search Box <a name="about-project"></a>

**Realtime Search Box** is an application designed to provide analytics on user search behavior, specifically focusing on the most popular articles and search queries.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>
  - **Ruby on Rails**: Primarily a backend framework, but it also handles front-end views with Embedded Ruby (ERB) templates..
  - **Postgresql**: The database used to store user data and search queries.

### Key Features <a name="key-features"></a>
- **Search for articles**: Users can search for articles, and the system keeps track of those searches.
- **Get statistics about searched queries**: The system provides analytics on popular search queries and trends.

## Home 
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites

To run this app locally, you need to have the following installed on your system:

- **A code editor** (e.g., VS Code, Sublime Text)
- **A browser** (e.g., Chrome, Firefox)
- **Node.js**: For managing JavaScript dependencies.
- **Ruby**: Ensure you have Ruby installed (version 3.4.2).
- **Rails**: Install Rails to run the application (version Rails 8.0.2).

### Setup

To get a local copy up and running, follow these steps:

1. **Clone the repository**:
    ```bash
    git clone git@github.com:codehass/realtimeSearchBox.git
    ```

2. **Install dependencies**:
    ```bash
    bundle install
    ```

3. **Set up the database**:
    ```bash
    rails db:create db:migrate
    ```

4. **Seed the database** (optional, if you want some sample data):
    ```bash
    rails db:seed
    ```

5. **Start the Rails server**:
    ```bash
    rails s
    ```

    This will run the server locally. You can access the application at `http://localhost:3000`.

### Usage

Once the server is running, you can:
- Visit `http://localhost:3000/articles` to see the list of articles.
- Use the search functionality to search for articles and view search statistics.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="authors"></a>

👤 **Hassan EL OUARDY**

- GitHub: [@codehass](https://github.com/codehass)
- Twitter: [@hassanelourdy](https://twitter.com/hassanelourdy)
- LinkedIn: [Hassan El OUARDY](https://www.linkedin.com/in/hassan-el-ouardy-360b99169/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>
- **User authentication**: Allow users to sign up, log in, and track their search history.
- **Advanced search filtering**: Provide filters to refine article search results.
- **Admin panel**: Implement an admin interface to manage articles and view more detailed analytics.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions are always welcome! Please feel free to fork the repository, make improvements, and create a pull request. 

To contribute:
1. Fork the repo.
2. Create a branch (`git checkout -b feature-name`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add some feature'`).
5. Push to the branch (`git push origin feature-name`).
6. Open a pull request.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show Your Support <a name="support"></a>

If you like this project, kindly leave a ⭐ star on the repository!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgments"></a>

I would like to thank **Microverse** for the great resources shared throughout the course.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is licensed under the [MIT License](./LICENSE).

<p align="right">(<a href="#readme-top">back to top</a>)</p>
