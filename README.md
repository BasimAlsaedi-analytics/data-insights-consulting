# Data Insights Consulting Website

A professional consulting website built with Hugo and the Apéro theme, featuring multilingual support (English/Arabic) and modern design.

## 🌟 Overview

This website serves as the digital presence for Data Insights Consulting, offering:
- Statistical analysis and data storytelling
- Interactive dashboards and business intelligence
- Machine learning and AI solutions
- Professional training and workshops
- Academic paper review services

## 🛠️ Technology Stack

- **Static Site Generator**: [Hugo](https://gohugo.io/) (v0.92.0+)
- **Theme**: [Hugo Apéro](https://github.com/hugo-apero/hugo-apero) (as git submodule)
- **CSS Framework**: Tachyons CSS (built into theme)
- **Deployment**: Static hosting
- **Form Handling**: Formspree
- **Languages**: English (primary), Arabic (RTL support)

## 📁 Project Structure

```
ConsultingServicesWebsite/
├── archetypes/               # Content templates
│   └── default.md
├── config.toml              # Main configuration file
├── content/                 # All website content
│   ├── _index.md           # Homepage content
│   ├── about/              # About section
│   │   ├── _index.md
│   │   ├── main/
│   │   └── team/
│   ├── ar/                 # Arabic content
│   │   ├── _index.md
│   │   ├── blog/           # Arabic blog posts
│   │   └── services/       # Arabic services
│   ├── blog/               # English blog posts
│   │   ├── _index.md
│   │   └── [blog-posts]/
│   ├── contact/            # Contact form page
│   │   └── index.md
│   └── services/           # English services
│       ├── _index.md
│       ├── dashboards-business-intelligence/
│       ├── machine-learning/
│       ├── paper-review/
│       ├── statistical-analysis-storytelling/
│       └── training/
├── layouts/                # Custom layouts
│   ├── index.html         # Custom homepage layout
│   └── partials/
│       └── head.html      # Custom head partial
├── static/                # Static assets
│   ├── css/
│   │   └── custom.css     # Custom CSS overrides
│   └── img/               # Images
├── themes/
│   └── hugo-apero/        # Theme (git submodule)
└── README.md              # This file
```

## 🚀 Installation & Setup

### Prerequisites
- Hugo Extended (v0.92.0 or later)
- Git
- Node.js (optional, for development)

### Local Development

1. **Navigate to project directory**
   ```bash
   cd ConsultingServicesWebsite
   ```

2. **Initialize theme submodule**
   ```bash
   git submodule update --init --recursive
   ```

3. **Run Hugo development server**
   ```bash
   hugo server -D
   ```
   Visit `http://localhost:1313` to see the site

### Building for Production

```bash
hugo --minify
```

The static site will be generated in the `public/` directory.

## 🌐 Multilingual Setup

The site supports English (default) and Arabic with full RTL support.

### Language Structure:
- **English content**: `/content/[section]/`
- **Arabic content**: `/content/ar/[section]/`

### Adding Content in Arabic:
1. Create the same directory structure under `/content/ar/`
2. Use Arabic front matter and content
3. The theme automatically handles RTL layout

### Language Switcher:
A language switcher is available on all pages, positioned top-right (top-left for Arabic).

## 📝 Content Management

### Creating a New Blog Post

**English:**
```bash
hugo new blog/my-new-post/index.md
```

**Arabic:**
```bash
hugo new ar/blog/my-new-post/index.md
```

### Blog Post Front Matter
```yaml
---
title: "Your Post Title"
subtitle: "Optional subtitle"
excerpt: "Brief description for listings"
date: 2024-01-15
author: "Author Name"
draft: false
tags:
  - data-analysis
  - dashboard
categories:
  - insights
layout: single
---
```

### Creating a New Service Page

Services follow the same pattern but in the `services` directory:
```bash
hugo new services/new-service/index.md
```

## 🎨 Customization

### Custom CSS
All custom styles are in `/static/css/custom.css`. Key customizations include:
- Override of theme's CSS Grid system for homepage
- Custom color scheme (primary: #2C3E50, accent: #E67E22)
- RTL support for Arabic
- Mobile responsive adjustments

### Homepage Layout
The custom homepage (`/layouts/index.html`) features:
1. **Hero Section**: Main value proposition
2. **Services + Blog Split**: 50/50 layout showing services and latest blog posts
3. **Booking Strip**: Call-to-action for free consultations
4. **Stats Section**: Key achievements (15+ talks, 500+ attendees, 3 dashboards)

### Navigation Menu
Configure in `config.toml`:
```toml
[[menu.header]]
  name = "Services"
  title = "Our Services"
  url = "/services/"
  weight = 3
```

## 📧 Contact Form

The contact form uses Formspree for processing. Configuration:

1. Set up a Formspree account
2. Update form ID in `/content/contact/index.md`:
   ```yaml
   formspree_form_id: "mblkankw"
   ```

## 🚀 Deployment

The site can be deployed to any static hosting service.

### Manual Deployment:
1. Build the site: `hugo --minify`
2. Deploy the `public/` directory to your hosting service

## 🔧 Configuration

Key configuration options in `config.toml`:

```toml
baseURL = "/"
title = "Data Insights Consulting"
theme = "hugo-apero"
languageCode = "en"
defaultContentLanguage = "en"

[languages.ar]
  languageName = "العربية"
  title = "استشارات رؤى البيانات"
  weight = 2

[params]
  orgName = "Data Insights Consulting"
  description = "Transforming Data into Strategic Insights"
  mainSections = ["blog", "services"]
```

## 📊 Features

- ✅ Multilingual (English/Arabic)
- ✅ RTL support
- ✅ Mobile responsive
- ✅ Contact form integration
- ✅ Blog with categories and tags
- ✅ SEO optimized
- ✅ Fast loading (static site)
- ✅ Ready for static hosting

## 🤝 Contributing

1. Create your feature branch (`git checkout -b feature/AmazingFeature`)
2. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
3. Push to the branch
4. Submit your changes

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Troubleshooting

### Theme not loading:
```bash
git submodule update --init --recursive
```

### Arabic text not displaying correctly:
- Ensure your browser supports Arabic fonts
- Check that the language code is set correctly in front matter

### Build errors:
- Verify Hugo Extended is installed (not basic Hugo)
- Check Hugo version: `hugo version`
- Clear Hugo cache: `hugo --cleanDestinationDir`

### Layout issues:
- The theme uses CSS Grid (6 columns) + Tachyons CSS
- Custom overrides in `/static/css/custom.css` disable grid for homepage
- Check browser console for JavaScript errors

## 📞 Support

For issues or questions:
- Contact: basimalsaedi@outlook.com

---

Built with ❤️ using Hugo and the Apéro theme