<a name="readme-top"></a>
<div align="center">
  <!-- You are encouraged to replace this logo with your own! Otherwise you can also remove it. -->
  <br/>

  <h3><b>PiquePosts Blog App</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [PiquePosts Blog App] <a name="about-project"></a>

PiquePosts is your creative sanctuary for writing, sharing, and discovering captivating stories. With a user-friendly interface, intuitive tools, and a vibrant community, PiquePosts empowers bloggers of all levels to express their thoughts, connect with like-minded individuals, and explore a world of captivating narratives. Whether you're a seasoned writer or just starting your blogging journey, PiquePosts is the wind beneath your wings, helping you craft, publish, and inspire in a breeze.
**[PiquePosts]** is a Ruby on Rails project.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

This app is developed using Ruby on Rails, a web application framework. It leverages the power of Ruby programming to create dynamic and feature-rich web applications.

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://www.tutorialspoint.com/mvc_framework/mvc_framework_introduction.htm">MVC App</a></li>
  </ul>
</details>

<details>
  <summary>Technology</summary>
  <ul>
    <li><a href="https://www.tutorialspoint.com/ruby-on-rails/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[Rapid Development]**
- **[Active Record]**
- **[Modularity]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Setup

Clone this repository to your desired folder:

Example commands:

```sh
  git clone https://github.com/kanyorok/PiquePosts.git
  cd PiquePosts
```
### Install

Install this project with:

```sh
  cd PiquePosts
  bundle install
```

### Usage

To run the project, execute the following command:

```
  rails serve
```

### Run tests

To run tests, run the following command:

```sh
  rspec --format documentation
```
And to run the api test you can follow the command:

- Run this url in your browser to see all comments for a post
```sh
http://localhost:3000/api/v1/users/:user_id/posts/:post_id/comments
```
- Run this url in your browser to see all posts for a user
```sh
http://localhost:3000/api/v1/users/:user_id/posts
```
- Run this code in your browser console to add new comment 
```sh
1st run the server and visit the localhost in you browser
2nd open the console and run the following code in your browser console
------------------------------------------------------------------------
const user_id = 1; // Replace with the actual user ID
const post_id = 1; // Replace with the actual post ID
const commentText = "Your comment text"; // Replace with the actual comment text

fetch(`http://localhost:3000/api/v1/users/${user_id}/posts/${post_id}/comments`, {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify({
    comment: {
      text: commentText,
      user_id: user_id,
      post_id: post_id,
    },
  }),
})
  .then(response => response.json())
  .then(data => console.log(data))
  .catch(error => console.error('Error:', error));

```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Robert Kanyoro**

- GitHub: [@Kanyorok](https://github.com/Kanyorok)
- Twitter: [@CarlosMbugua](https://twitter.com/CarlosMbugua)
- LinkedIn: [Robert Mbugua](https://www.linkedin.com/in/robert-mbugua-kanyoro/)

👤 **Al Amin Khan Shakil**

- GitHub: [Al Amin Khan Shakil](https://github.com/Al-Amin-Khan-Shakil)
- Twitter: [Al Amin Khan Shakil](https://twitter.com/AlAminKhan85004)
- LinkedIn: [Al Amin Khan Shakil](https://www.linkedin.com/in/al-amin-khan-shakil/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Make program associative with website**
- [ ] **Add custom user views**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Kanyorok/PiquePosts/issues).


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

Microverse materials and Ruby tutorial at <a href="https://www.tutorialspoint.com/ruby-on-rails/rails-installation.htm"> 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>