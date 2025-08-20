# LeatherHoard E-commerce Website - Complete Documentation

## 📋 Project Overview

LeatherHoard is a responsive e-commerce website built with HTML, CSS, JavaScript, and Bootstrap, designed for selling leather products. The website features a modern design with dark/light theme support, product showcase, customer reviews, and contact functionality.

## 🏗️ Project Structure

```
LeatherHoard/
├── index.html              # Main homepage
├── login.html              # Login page
├── PrivacyPolicy.html      # Privacy policy page
├── css/                    # Stylesheets
│   ├── style.css          # Main styles
│   ├── theme.css          # Theme variables
│   ├── products.css       # Product page styles
│   ├── responsive.css     # Responsive design
│   └── utils.css          # Utility classes
├── js/                     # JavaScript files
│   ├── index.js           # Homepage functionality
│   ├── products.js        # Product page functionality
│   ├── searchSuggestions.js # Search suggestions data
│   ├── custom.js          # Custom utilities
│   └── theme.js           # Theme switching
├── html/                   # Additional pages
│   ├── products.html      # Products catalog page
│   └── about.html         # About us page
├── images/                 # Image assets
│   ├── logo3.png          # Company logo
│   ├── banner*.png        # Banner images
│   ├── Leather-*.png      # Product images
│   └── arrival_*.jpg      # New arrival images
└── fonts/                  # Font files
```

## 🎯 Key Features

### 1. **Homepage (index.html)**
- **Hero Banner**: Carousel with 5 slides showcasing leather collections
- **Quality Services**: 3-card section highlighting company USPs
- **Product Categories**: 8 product categories with hover effects
- **About Section**: Company information with call-to-action
- **Special Offer**: Featured leather jacket promotion
- **New Arrivals**: Latest products with pricing
- **Customer Reviews**: Testimonial carousel
- **Contact Form**: Multi-field contact form with validation
- **Footer**: Newsletter signup, social links, company info

### 2. **Products Page (html/products.html)**
- **Product Grid**: 8 leather products displayed in cards
- **Product Modal**: Click-to-view product details with buy option
- **Quantity Selection**: Dropdown for product quantity
- **Address Input**: Delivery address field
- **Loading Animation**: Smooth loading states

### 3. **Search Functionality**
- **Auto-suggestions**: Real-time search suggestions
- **Local Storage**: Saves recent searches
- **Navigation**: Direct links to relevant pages/sections

### 4. **Theme System**
- **Dark/Light Mode**: Toggle between themes
- **CSS Variables**: Consistent color scheme
- **Persistent**: Theme preference saved locally

## 🛠️ Technical Implementation

### **Frontend Technologies**
- **HTML5**: Semantic markup structure
- **CSS3**: Modern styling with Flexbox/Grid
- **JavaScript ES6**: Interactive functionality
- **Bootstrap 4.6.2**: Responsive framework
- **Font Awesome**: Icon library

### **Key JavaScript Functions**

#### Search System (`js/index.js`, `js/products.js`)
```javascript
// Search suggestions filtering
searchInput.onkeyup = (e) => {
  let searchKey = e.target.value;
  if (searchKey.length) {
    let arr = suggestions.filter((data) => {
      return data.toLowerCase().startsWith(searchKey.toLowerCase());
    });
    showSuggestions(arr);
  }
};
```

#### Product Modal System (`js/products.js`)
```javascript
// Product card click handler
const buttonPressed = (e) => {
  let productImg = e.target.src;
  let productDescription = e.target.ownerDocument.activeElement.childNodes[3].innerHTML;
  buyModal.classList.add("active-modal");
  // Display product details in modal
};
```

#### Theme Toggle (`js/theme.js`)
```javascript
// Theme switching functionality
document.addEventListener('DOMContentLoaded', function() {
  const themeToggle = document.querySelector('.toggle-theme-btn');
  // Toggle between light and dark themes
});
```

### **CSS Architecture**

#### Theme Variables (`css/theme.css`)
```css
:root {
  --primary-background-color: #ffffff;
  --secondary-background-color: #f8f9fa;
  --color-pink: #fe7696;
  --color-dark-1: #2d2b3a;
  --text-color: #666666;
}
```

#### Responsive Design
- **Mobile-first approach**
- **Breakpoints**: 576px, 768px, 992px, 1200px
- **Flexible grid system**
- **Scalable typography**

## 📊 Current Product Data Structure

### **Homepage Products (index.html)**
```html
<div class="categories">
  <figure class="headimg">
    <img src="./images/Leather-purse.png" alt="Leather purse">
  </figure>
  <h5>Brown-wallet-full-with-cards</h5>
  <p>Product description...</p>
</div>
```

### **Products Page (html/products.html)**
```html
<button class="products_card_l">
  <div class="product_img">
    <img src="../images/Leather-bagpacks.png">
  </div>
  <div class="product_details">
    <div class="text">
      <p>Leather bag | best Quality pure Leather</p>
    </div>
    <div class="price">
      <p>Rs 2783/-</p>
    </div>
  </div>
</button>
```

## 🔄 How to Update Products with Excel Data

### **Required Excel Format**
Create an Excel file with these columns:
- **Product_Name**: Product title
- **Product_Description**: Product description
- **Price**: Product price (format: Rs XXXX/-)
- **Image_Path**: Image file name (e.g., "Leather-bag.png")
- **Brand_Name**: Brand/manufacturer name
- **Category**: Product category

### **Update Process**
1. **Prepare Images**: Place new product images in `/images/` folder
2. **Update Homepage**: Modify product cards in `index.html`
3. **Update Products Page**: Modify product cards in `html/products.html`
4. **Update Search**: Add new products to `js/searchSuggestions.js`
5. **Update Branding**: Replace logo and brand references

## 🎨 Customization Guide

### **Brand Identity Updates**
1. **Logo**: Replace `images/logo3.png` with new logo
2. **Company Name**: Update "INDIYANO" throughout files
3. **Contact Info**: Update address, phone, email in footer
4. **Colors**: Modify CSS variables in `css/theme.css`

### **Product Management**
1. **Add Products**: Copy existing product card structure
2. **Update Images**: Maintain consistent image dimensions
3. **Pricing**: Follow "Rs XXXX/-" format
4. **Categories**: Update navigation and search suggestions

### **Content Updates**
1. **About Section**: Modify company description
2. **Services**: Update quality service cards
3. **Testimonials**: Replace customer reviews
4. **Contact**: Update contact form and information

## 🚀 Deployment Instructions

### **Local Development**
1. Clone the repository
2. Open `index.html` in a web browser
3. Use Live Server extension for development

### **Production Deployment**
1. Upload all files to web server
2. Ensure proper file permissions
3. Test all functionality
4. Configure domain and SSL

## 📱 Browser Compatibility
- **Chrome**: 60+
- **Firefox**: 55+
- **Safari**: 12+
- **Edge**: 79+
- **Mobile**: iOS Safari 12+, Chrome Mobile 60+

## 🔧 Maintenance Tasks

### **Regular Updates**
- Update product inventory
- Refresh customer testimonials
- Update contact information
- Monitor and fix broken links

### **Performance Optimization**
- Compress images
- Minify CSS/JS files
- Enable browser caching
- Optimize loading times

## 📞 Support & Contact

For technical support or customization requests:
- **Email**: aykizcreation@gmail.com
- **Phone**: +91 8420620158
- **Address**: Md Ejaz, 26, Topsia road, Kolkata, West Bengal, 700039, India

---

**Note**: This documentation provides a complete overview of the LeatherHoard project. When you provide the Excel file with product data, I'll help you update all the relevant files accordingly.