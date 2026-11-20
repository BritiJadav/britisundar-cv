# Briti Sundar Ghatak - Interactive CV & Presentation

A modern, responsive, and interactive presentation page of the curriculum vitae for **Briti Sundar Ghatak** (M.Tech in Industrial Mathematics & Scientific Computing at IIT Madras, GATE 2024 AIR 1280).

Containerized with Nginx and deployed on **Google Cloud Run** in `asia-south1`, automated with a continuous integration & deployment (**CI/CD**) pipeline via **GitHub Actions**.

---

## 🌟 Features

- **Interactive Presentation:**
  - Modern glassmorphic visual hierarchy with subtle animations and gradients.
  - Dark / Light mode toggle with persistent state.
  - Interactive filterable project cards (GenAI & RAG, Computer Vision & Deep Learning, NLP, Predictive ML).
  - Embedded PDF viewer modal for `new_cv.pdf`.
  - Academic milestone timeline covering IIT Madras, IIT Guwahati, and Jadavpur University.
  - One-click email copy utility with feedback toast.
- **Production Containerization:**
  - Ultra-lightweight `nginx:alpine` image configured to listen on Cloud Run's dynamic port 8080.
- **CI/CD Pipeline with GitHub Actions:**
  - Automatically triggers on every push to `main` branch.
  - Authenticates to GCP using service account secrets (`GCP_SA_KEY`).
  - Builds and deploys directly to Google Cloud Run in `asia-south1`.

---

## 🏗️ Architecture & Deployment

| Component | Technology | Configuration |
| :--- | :--- | :--- |
| **Frontend** | HTML5, CSS3, JavaScript (Vanilla ES6+) | Responsive, Theme Toggle, Modal |
| **Container** | Nginx Alpine | Custom `default.conf` listening on 8080 |
| **Cloud Host** | Google Cloud Run (Compute) | Region: `asia-south1` |
| **CI/CD** | GitHub Actions | `.github/workflows/deploy.yml` |
| **Source Control** | GitHub | [BritiJadav/britisundar-cv](https://github.com/BritiJadav/britisundar-cv) |

---

## 🚀 Local Preview

Open `index.html` directly in your browser or run a local static server:
```bash
python -m http.server 8080
```
Then navigate to `http://localhost:8080`.
