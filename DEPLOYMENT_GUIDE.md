# 🚀 GitHub Pages Deployment Guide for Gyanplanet Institute

This guide will walk you through the complete process of deploying the Gyanplanet Institute website to GitHub Pages.

## 📋 Prerequisites

Before you begin, make sure you have:
- A GitHub account
- Git installed on your computer
- Node.js (version 16 or higher) installed
- Basic knowledge of Git commands

## 🔧 Step-by-Step Deployment Process

### Step 1: Create GitHub Repository

1. **Log in to GitHub**
   - Go to [github.com](https://github.com) and sign in

2. **Create New Repository**
   - Click the "+" icon in the top right corner
   - Select "New repository"
   - Repository name: `gyanplanet_institute`
   - Description: "Official website for Gyanplanet Institute"
   - Make sure it's **Public**
   - **DO NOT** initialize with README, .gitignore, or license (we already have these)
   - Click "Create repository"

### Step 2: Connect Local Project to GitHub

1. **Open Terminal/Command Prompt**
   Navigate to your project directory:
   ```bash
   cd path/to/gyanplanet_institute
   ```

2. **Initialize Git Repository** (if not already done)
   ```bash
   git init
   ```

3. **Add Remote Origin**
   ```bash
   git remote add origin https://github.com/nileshunique/gyanplanet_institute.git
   ```

4. **Add All Files**
   ```bash
   git add .
   ```

5. **Commit Changes**
   ```bash
   git commit -m "Initial commit: Gyanplanet Institute website"
   ```

6. **Push to GitHub**
   ```bash
   git branch -M main
   git push -u origin main
   ```

### Step 3: Configure GitHub Pages

1. **Go to Repository Settings**
   - Navigate to your repository on GitHub
   - Click on the "Settings" tab (far right in the repository menu)

2. **Enable GitHub Pages**
   - Scroll down to find "Pages" in the left sidebar
   - Click on "Pages"
   - Under "Source", select "GitHub Actions"
   - This will enable automatic deployment using our workflow

### Step 4: Set Up Environment Variables (EmailJS Configuration)

1. **Get EmailJS Credentials**
   - Go to [EmailJS](https://www.emailjs.com/)
   - Sign up for a free account
   - Create an email service (Gmail, Outlook, etc.)
   - Create an email template
   - Note down your Service ID, Template ID, and Public Key

2. **Add Repository Secrets**
   - In your GitHub repository, go to Settings → Secrets and variables → Actions
   - Click "New repository secret"
   - Add these three secrets one by one:

   **Secret 1:**
   - Name: `REACT_APP_EMAILJS_SERVICE_ID`
   - Value: Your EmailJS Service ID (e.g., `service_abc123`)

   **Secret 2:**
   - Name: `REACT_APP_EMAILJS_TEMPLATE_ID`
   - Value: Your EmailJS Template ID (e.g., `template_xyz789`)

   **Secret 3:**
   - Name: `REACT_APP_EMAILJS_PUBLIC_KEY`
   - Value: Your EmailJS Public Key (e.g., `user_def456`)

### Step 5: Trigger Deployment

1. **Automatic Deployment**
   - The deployment will automatically start when you push to the main branch
   - Go to the "Actions" tab in your repository to see the deployment progress

2. **Manual Trigger** (if needed)
   - Go to Actions tab
   - Click on "Deploy to GitHub Pages" workflow
   - Click "Run workflow" → "Run workflow"

### Step 6: Verify Deployment

1. **Check Deployment Status**
   - In the Actions tab, wait for the green checkmark
   - If there's a red X, click on it to see error details

2. **Access Your Website**
   - Your website will be available at: `https://nileshunique.github.io/gyanplanet_institute/`
   - It may take a few minutes for the first deployment

### Step 7: Custom Domain Setup (Optional)

1. **Purchase a Domain**
   - Buy a domain like `gyanplanet_institute.com`

2. **Configure DNS**
   - In your domain registrar's DNS settings, add these records:
   ```
   Type: CNAME
   Name: www
   Value: nileshunique.github.io
   
   Type: A
   Name: @
   Value: 185.199.108.153
   Value: 185.199.109.153
   Value: 185.199.110.153
   Value: 185.199.111.153
   ```

3. **Update GitHub Pages Settings**
   - Go to repository Settings → Pages
   - In "Custom domain", enter your domain: `gyanplanet_institute.com`
   - Check "Enforce HTTPS"

## 🔄 Making Updates

### For Content Changes

1. **Edit Files Locally**
   - Update content in `src/constants/siteData.js`
   - Modify components in `src/components/` or `src/pages/`

2. **Test Locally**
   ```bash
   npm start
   ```

3. **Deploy Changes**
   ```bash
   git add .
   git commit -m "Update: describe your changes"
   git push origin main
   ```

### For Major Updates

1. **Create a Branch**
   ```bash
   git checkout -b feature/new-feature
   ```

2. **Make Changes and Test**

3. **Push Branch**
   ```bash
   git push origin feature/new-feature
   ```

4. **Create Pull Request**
   - Go to GitHub and create a pull request
   - Review and merge when ready

## 🐛 Troubleshooting

### Common Issues and Solutions

1. **Build Fails with "Module not found"**
   ```bash
   # Solution: Install missing dependencies
   npm install
   ```

2. **Deployment Fails**
   - Check the Actions tab for detailed error logs
   - Ensure all environment variables are set correctly
   - Verify the workflow file syntax

3. **Website Shows 404 Error**
   - Check if GitHub Pages is enabled
   - Verify the repository is public
   - Ensure the build completed successfully

4. **EmailJS Not Working**
   - Verify environment variables in repository secrets
   - Check EmailJS dashboard for service status
   - Ensure your domain is added to EmailJS allowed origins

5. **Images Not Loading**
   - Check image URLs in `siteData.js`
   - Ensure images are accessible publicly
   - Verify image paths are correct

### Getting Help

1. **Check GitHub Actions Logs**
   - Go to Actions tab → Click on failed workflow → View logs

2. **Validate Your Code**
   ```bash
   npm run build
   ```

3. **Test Locally**
   ```bash
   npm start
   ```

## 📊 Monitoring and Analytics

### Adding Google Analytics (Optional)

1. **Create Google Analytics Account**
   - Go to [analytics.google.com](https://analytics.google.com)
   - Create a new property for your website

2. **Add Tracking Code**
   - Add the tracking script to `public/index.html`
   - Or use a React library like `react-ga4`

### Performance Monitoring

The website includes built-in performance monitoring:
- Core Web Vitals tracking
- Page load time monitoring
- Error logging

## 🔒 Security Best Practices

1. **Environment Variables**
   - Never commit sensitive data to the repository
   - Use GitHub Secrets for all API keys

2. **Dependencies**
   - Regularly update dependencies: `npm audit fix`
   - Monitor for security vulnerabilities

3. **HTTPS**
   - Always use HTTPS for production
   - GitHub Pages provides free SSL certificates

## 📈 SEO Optimization

The website is already optimized for SEO with:
- Meta tags and Open Graph data
- Structured data (JSON-LD)
- Sitemap.xml
- Robots.txt
- Semantic HTML structure

## 🎉 Congratulations!

Your Gyanplanet Institute website is now live on GitHub Pages! 

**Website URL:** https://nileshunique.github.io/gyanplanet_institute/

Remember to:
- ✅ Test all functionality
- ✅ Verify contact forms work
- ✅ Check mobile responsiveness
- ✅ Monitor performance
- ✅ Keep content updated

For any issues or questions, refer to the main README.md file or create an issue in the GitHub repository.