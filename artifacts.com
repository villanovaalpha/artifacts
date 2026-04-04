<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <title>Artifacts | Timeless Furniture Craftsmanship</title>
    <!-- Meta Keywords & Description for SEO / Front Page Ranking -->
    <meta name="description" content="Artifacts: Premium handcrafted furniture blending modern design with heritage woodworking. Sustainable, timeless pieces for living, dining, and bedroom.">
    <meta name="keywords" content="Artifacts furniture, modern furniture, handcrafted wood, sustainable design, living room furniture, dining tables, bedroom sets, artisan furniture, heritage craftsmanship, timeless decor">
    <meta name="author" content="Artifacts Studio">
    <meta name="robots" content="index, follow">
    <!-- Google Fonts: Elegant serif + modern sans for perfect furniture brand feel -->
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@300;400;500;600;700&family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
    <!-- Font Awesome 6 (Free icons) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: #FEFCF5;
            color: #2A2418;
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        /* Typography - Artifacts brand uses elegant serif for headings */
        h1, h2, h3, h4, .logo, .nav-links a, .hero-title, .section-title, .btn, .card-title {
            font-family: 'Cormorant Garamond', serif;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 2rem;
        }

        /* Header & Navigation */
        header {
            background: #FFFFFFE6;
            backdrop-filter: blur(8px);
            position: sticky;
            top: 0;
            z-index: 100;
            box-shadow: 0 2px 20px rgba(0,0,0,0.02);
            border-bottom: 1px solid #E9E2D4;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1.2rem 0;
            flex-wrap: wrap;
        }

        .logo a {
            font-size: 2rem;
            font-weight: 600;
            letter-spacing: 1px;
            text-decoration: none;
            color: #2A2418;
            transition: color 0.2s;
        }
        .logo span {
            font-weight: 300;
            font-size: 1.8rem;
            color: #A77B4D;
        }
        .nav-links {
            display: flex;
            gap: 2.5rem;
            list-style: none;
        }
        .nav-links a {
            text-decoration: none;
            font-size: 1.1rem;
            font-weight: 500;
            letter-spacing: 0.5px;
            color: #2A2418;
            transition: color 0.2s, border-bottom 0.2s;
            padding-bottom: 4px;
            border-bottom: 1px solid transparent;
        }
        .nav-links a:hover, .nav-links a.active {
            color: #A77B4D;
            border-bottom-color: #A77B4D;
        }
        .cart-icon {
            font-size: 1.4rem;
            cursor: pointer;
            position: relative;
            color: #2A2418;
        }
        .mobile-menu {
            display: none;
            font-size: 1.8rem;
            cursor: pointer;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(120deg, #F6F2E8 0%, #FEFCF5 100%);
            padding: 4rem 0 5rem 0;
        }
        .hero-grid {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 3rem;
        }
        .hero-content {
            flex: 1.2;
        }
        .hero-title {
            font-size: 4rem;
            font-weight: 600;
            line-height: 1.2;
            color: #2A2418;
            margin-bottom: 1rem;
        }
        .hero-title em {
            font-style: italic;
            color: #A77B4D;
            font-weight: 500;
        }
        .hero-desc {
            font-size: 1.1rem;
            color: #4A3F2F;
            margin: 1.5rem 0 2rem;
            max-width: 90%;
            font-weight: 400;
        }
        .btn {
            display: inline-block;
            background: #2A2418;
            color: white;
            padding: 0.9rem 2.2rem;
            text-decoration: none;
            font-weight: 600;
            font-size: 1rem;
            letter-spacing: 0.5px;
            border-radius: 40px;
            transition: all 0.3s ease;
            border: 1px solid transparent;
            font-family: 'Inter', sans-serif;
        }
        .btn-primary {
            background: #A77B4D;
            box-shadow: 0 4px 10px rgba(167,123,77,0.2);
        }
        .btn-primary:hover {
            background: #8B5E3A;
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        }
        .btn-outline {
            background: transparent;
            border: 1px solid #2A2418;
            color: #2A2418;
            margin-left: 1rem;
        }
        .btn-outline:hover {
            background: #2A2418;
            color: white;
        }
        .hero-image {
            flex: 1;
            border-radius: 32px;
            overflow: hidden;
            box-shadow: 0 25px 35px -12px rgba(0,0,0,0.15);
        }
        .hero-image img {
            width: 100%;
            height: auto;
            display: block;
            transition: transform 0.4s;
        }
        .hero-image:hover img {
            transform: scale(1.02);
        }

        /* Featured Section */
        .section-padding {
            padding: 5rem 0;
        }
        .section-title {
            font-size: 2.8rem;
            font-weight: 600;
            text-align: center;
            margin-bottom: 2rem;
            color: #2A2418;
        }
        .section-sub {
            text-align: center;
            max-width: 700px;
            margin: 0 auto 3rem auto;
            color: #5E5240;
            font-size: 1.05rem;
        }
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2.5rem;
        }
        .product-card {
            background: white;
            border-radius: 24px;
            overflow: hidden;
            transition: all 0.3s ease;
            box-shadow: 0 5px 15px rgba(0,0,0,0.02);
            border: 1px solid #F0EBE1;
        }
        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 20px 30px -12px rgba(0,0,0,0.12);
            border-color: #E1D7CB;
        }
        .product-img {
            height: 280px;
            overflow: hidden;
            background: #F1EDE4;
        }
        .product-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }
        .product-card:hover .product-img img {
            transform: scale(1.04);
        }
        .product-info {
            padding: 1.5rem;
        }
        .card-title {
            font-size: 1.6rem;
            font-weight: 600;
            margin-bottom: 0.4rem;
        }
        .product-desc {
            font-size: 0.9rem;
            color: #6B5E4A;
            margin: 0.5rem 0;
        }
        .price {
            font-weight: 700;
            font-size: 1.3rem;
            color: #A77B4D;
            margin: 0.8rem 0;
            font-family: 'Inter', sans-serif;
        }
        .add-to-cart {
            background: none;
            border: 1px solid #D9CFC0;
            padding: 0.6rem 1rem;
            border-radius: 40px;
            font-weight: 500;
            cursor: pointer;
            transition: 0.2s;
            width: 100%;
            font-family: 'Inter', sans-serif;
            background: #F9F6EF;
        }
        .add-to-cart:hover {
            background: #A77B4D;
            color: white;
            border-color: #A77B4D;
        }

        /* Craftsmanship Banner */
        .craft-banner {
            background: #E7DFD1;
            margin: 3rem 0;
            border-radius: 48px;
            overflow: hidden;
        }
        .craft-inner {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
        }
        .craft-text {
            flex: 1;
            padding: 3rem;
        }
        .craft-text h3 {
            font-size: 2.2rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }
        .craft-text p {
            font-size: 1rem;
            margin-bottom: 1.5rem;
            color: #3F3526;
        }
        .craft-img {
            flex: 1;
            min-height: 280px;
            background: url('https://placehold.co/900x600/E2D9CD/FFFFFF?text=Artifacts+Workshop') center/cover no-repeat;
        }
        /* high quality unsplash style furniture image fallback - but we will use modern demo img */
        .craft-img {
            background-image: linear-gradient(115deg, #CBB99E, #B29776), url('https://images.pexels.com/photos/1571460/chair-wood-craftsmanship-furniture-1571460.jpeg?auto=compress&cs=tinysrgb&w=800');
            background-blend-mode: overlay;
            background-size: cover;
        }

        /* Testimonials */
        .testimonial-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 2rem;
            justify-content: center;
        }
        .testimonial {
            background: white;
            padding: 2rem;
            border-radius: 28px;
            flex: 1;
            min-width: 260px;
            box-shadow: 0 6px 14px rgba(0,0,0,0.02);
            border: 1px solid #EFE8DF;
        }
        .testimonial i {
            color: #A77B4D;
            font-size: 2rem;
            margin-bottom: 1rem;
            opacity: 0.6;
        }
        .testimonial p {
            font-style: italic;
            margin-bottom: 1rem;
        }
        .testimonial h4 {
            font-weight: 600;
            margin-top: 0.5rem;
        }

        /* Footer */
        footer {
            background: #1E1912;
            color: #D6CDBF;
            padding: 3rem 0 2rem;
            margin-top: 2rem;
        }
        .footer-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 2rem;
        }
        .footer-col h3 {
            font-family: 'Cormorant Garamond', serif;
            font-size: 1.6rem;
            margin-bottom: 1rem;
            color: #F2E8DA;
        }
        .footer-col p, .footer-col a {
            color: #C8BCA8;
            text-decoration: none;
            line-height: 1.8;
        }
        .social i {
            font-size: 1.4rem;
            margin-right: 1rem;
            transition: color 0.2s;
        }
        .social i:hover {
            color: #A77B4D;
        }
        .copyright {
            text-align: center;
            margin-top: 2rem;
            padding-top: 1rem;
            border-top: 1px solid #332C20;
            font-size: 0.8rem;
        }

        /* Cart notification */
        .cart-toast {
            position: fixed;
            bottom: 2rem;
            right: 2rem;
            background: #2A2418;
            color: #FEFCF5;
            padding: 0.8rem 1.6rem;
            border-radius: 50px;
            font-weight: 500;
            z-index: 1000;
            opacity: 0;
            transition: opacity 0.3s;
            pointer-events: none;
            font-family: 'Inter', sans-serif;
            box-shadow: 0 4px 12px rgba(0,0,0,0.2);
        }
        .cart-toast.show {
            opacity: 1;
        }

        @media (max-width: 850px) {
            .nav-links {
                display: none;
            }
            .mobile-menu {
                display: block;
            }
            .hero-title {
                font-size: 2.6rem;
            }
            .container {
                padding: 0 1.5rem;
            }
            .btn-outline {
                margin-left: 0;
                margin-top: 1rem;
            }
            .hero-desc {
                max-width: 100%;
            }
        }
        /* Mobile nav active simple */
        .nav-links.active {
            display: flex;
            flex-direction: column;
            width: 100%;
            background: white;
            padding: 1.5rem;
            gap: 1rem;
            border-radius: 20px;
            margin-top: 1rem;
            box-shadow: 0 10px 20px rgba(0,0,0,0.05);
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div class="navbar">
                <div class="logo">
                    <a href="#">ARTIFACTS<span> studio</span></a>
                </div>
                <ul class="nav-links" id="navLinks">
                    <li><a href="#home" class="active">Home</a></li>
                    <li><a href="#featured">Collection</a></li>
                    <li><a href="#craft">Craftsmanship</a></li>
                    <li><a href="#testimonials">Stories</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
                <div class="cart-icon" id="cartIcon">
                    <i class="fas fa-shopping-bag"></i> <span id="cartCount">0</span>
                </div>
                <div class="mobile-menu" id="mobileMenuBtn">
                    <i class="fas fa-bars"></i>
                </div>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero Section -->
        <section id="home" class="hero">
            <div class="container hero-grid">
                <div class="hero-content">
                    <h1 class="hero-title">Where heritage meets<br><em>modern artifacts</em></h1>
                    <p class="hero-desc">Solid wood furniture carved by master artisans. Each piece tells a story — sustainable, timeless, and built for generations. Explore the new 'Eternal Collection'.</p>
                    <div>
                        <a href="#featured" class="btn btn-primary">Shop Artifacts</a>
                        <a href="#craft" class="btn btn-outline">Our Legacy</a>
                    </div>
                </div>
                <div class="hero-image">
                    <img src="https://images.pexels.com/photos/1571459/pexels-photo-1571459.jpeg?auto=compress&cs=tinysrgb&w=800" alt="Artifacts handcrafted oak table and chairs in minimal interior" loading="eager">
                </div>
            </div>
        </section>

        <!-- Featured Products -->
        <section id="featured" class="section-padding">
            <div class="container">
                <h2 class="section-title">Timeless artifacts</h2>
                <p class="section-sub">Discover our signature collection, where each furniture artifact is a statement of elegance and durability.</p>
                <div class="product-grid" id="productsGrid">
                    <!-- Products will be dynamically loaded with JS but also static fallback -->
                </div>
            </div>
        </section>

        <!-- Craftsmanship Banner -->
        <div class="container" id="craft">
            <div class="craft-banner">
                <div class="craft-inner">
                    <div class="craft-text">
                        <h3>Artifacts Heritage</h3>
                        <p>Every furniture piece starts with a single tree — sustainably sourced. Our artisans spend weeks shaping, carving, and perfecting each artifact. No mass production, only soulful creations.</p>
                        <a href="#" class="btn btn-primary" style="background:#2A2418;">Discover workshop →</a>
                    </div>
                    <div class="craft-img"></div>
                </div>
            </div>
        </div>

        <!-- Testimonials -->
        <section id="testimonials" class="section-padding">
            <div class="container">
                <h2 class="section-title">Loved by design lovers</h2>
                <div class="testimonial-grid">
                    <div class="testimonial">
                        <i class="fas fa-quote-left"></i>
                        <p>"The attention to detail on my Artifacts dining table is breathtaking. It's become the centerpiece of our home."</p>
                        <h4>— Elena M.</h4>
                    </div>
                    <div class="testimonial">
                        <i class="fas fa-quote-left"></i>
                        <p>"Sustainable luxury exists. Artifacts combines ethical craftsmanship with stunning modern forms. Worth every penny."</p>
                        <h4>— David K., Architect</h4>
                    </div>
                    <div class="testimonial">
                        <i class="fas fa-quote-left"></i>
                        <p>"From the walnut bookshelf to the lounge chair — each artifact feels like a functional sculpture. Exceptional."</p>
                        <h4>— Sofia R.</h4>
                    </div>
                </div>
            </div>
        </section>

        <!-- Contact & Newsletter (SEO friendly) -->
        <section id="contact" class="section-padding" style="background: #F9F6EF; border-radius: 40px; margin: 0 1rem 2rem 1rem;">
            <div class="container" style="text-align: center;">
                <h2 class="section-title">Join the artifacts circle</h2>
                <p style="max-width: 600px; margin: 0 auto 2rem;">Be the first to explore new collections, receive design stories, and get exclusive offers.</p>
                <div style="display: flex; flex-wrap: wrap; justify-content: center; gap: 0.8rem;">
                    <input type="email" placeholder="Your email address" id="newsEmail" style="padding: 0.9rem 1.5rem; border-radius: 60px; border: 1px solid #E1D7CB; min-width: 260px; font-family: inherit;">
                    <button id="subscribeBtn" class="btn btn-primary">Subscribe</button>
                </div>
                <p style="margin-top: 1rem; font-size: 0.8rem;">Artifacts respects your privacy. Unsubscribe anytime.</p>
            </div>
        </section>
    </main>

    <footer>
        <div class="container footer-grid">
            <div class="footer-col">
                <h3>Artifacts</h3>
                <p>Handcrafted furniture for modern living. Designed to last generations.</p>
                <div class="social">
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-pinterest"></i>
                    <i class="fab fa-facebook-f"></i>
                </div>
            </div>
            <div class="footer-col">
                <h3>Explore</h3>
                <p><a href="#featured">Living Room</a></p>
                <p><a href="#featured">Dining Tables</a></p>
                <p><a href="#featured">Bedroom</a></p>
                <p><a href="#craft">Sustainability</a></p>
            </div>
            <div class="footer-col">
                <h3>Contact</h3>
                <p>hello@artifacts.com</p>
                <p>+1 (212) 555 0978</p>
                <p>Brooklyn Navy Yard, NYC</p>
            </div>
        </div>
        <div class="copyright container">
            <p>© 2025 Artifacts — Heritage furniture studio. All rights reserved.</p>
        </div>
    </footer>

    <div id="cartToast" class="cart-toast">Added to your Artifacts collection</div>

    <script>
        // Product Data (artifacts collection)
        const products = [
            { id: 1, name: "Eternal Oak Table", desc: "Solid oak, hand-carved base. Seats 8.", price: 2890, img: "https://images.pexels.com/photos/3757055/pexels-photo-3757055.jpeg?auto=compress&cs=tinysrgb&w=600", tag: "centerpiece" },
            { id: 2, name: "Scandinavian Armchair", desc: "Walnut frame & woven papercord.", price: 890, img: "https://images.pexels.com/photos/1571458/armchair-furniture-chair-interior-design-1571458.jpeg?auto=compress&cs=tinysrgb&w=600" },
            { id: 3, name: "Artifacts Sideboard", desc: "Hand-rubbed finish, brass inlays.", price: 2150, img: "https://images.pexels.com/photos/5705090/pexels-photo-5705090.jpeg?auto=compress&cs=tinysrgb&w=600" },
            { id: 4, name: "Ridge Bookshelf", desc: "Modular ash wood, timeless geometry.", price: 1240, img: "https://images.pexels.com/photos/2092378/pexels-photo-2092378.jpeg?auto=compress&cs=tinysrgb&w=600" }
        ];

        let cart = JSON.parse(localStorage.getItem('artifacts_cart')) || [];
        function updateCartUI() {
            const countEl = document.getElementById('cartCount');
            const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);
            if(countEl) countEl.innerText = totalItems;
            localStorage.setItem('artifacts_cart', JSON.stringify(cart));
        }
        function addToCart(productId) {
            const existing = cart.find(item => item.id === productId);
            if(existing) {
                existing.quantity += 1;
            } else {
                const product = products.find(p => p.id === productId);
                if(product) cart.push({ ...product, quantity: 1 });
            }
            updateCartUI();
            const toast = document.getElementById('cartToast');
            toast.classList.add('show');
            setTimeout(() => toast.classList.remove('show'), 2000);
        }

        function renderProducts() {
            const grid = document.getElementById('productsGrid');
            if(!grid) return;
            grid.innerHTML = '';
            products.forEach(product => {
                const card = document.createElement('div');
                card.className = 'product-card';
                card.innerHTML = `
                    <div class="product-img">
                        <img src="${product.img}" alt="${product.name} - Artifacts furniture" loading="lazy">
                    </div>
                    <div class="product-info">
                        <h3 class="card-title">${product.name}</h3>
                        <p class="product-desc">${product.desc}</p>
                        <div class="price">$${product.price.toLocaleString()}</div>
                        <button class="add-to-cart" data-id="${product.id}">Add to Bag</button>
                    </div>
                `;
                grid.appendChild(card);
            });
            document.querySelectorAll('.add-to-cart').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = parseInt(btn.getAttribute('data-id'));
                    addToCart(id);
                });
            });
        }

        // Newsletter subscription (local demo)
        const subscribeBtn = document.getElementById('subscribeBtn');
        if(subscribeBtn) {
            subscribeBtn.addEventListener('click', () => {
                const emailInput = document.getElementById('newsEmail');
                const email = emailInput.value.trim();
                if(email && email.includes('@')) {
                    alert(`Thank you ${email} ! You're now part of the Artifacts circle.`);
                    emailInput.value = '';
                } else {
                    alert('Please enter a valid email address to receive design inspiration.');
                }
            });
        }

        // Mobile menu toggle
        const mobileBtn = document.getElementById('mobileMenuBtn');
        const navLinks = document.getElementById('navLinks');
        if(mobileBtn && navLinks) {
            mobileBtn.addEventListener('click', () => {
                navLinks.classList.toggle('active');
            });
            // close on link click
            navLinks.querySelectorAll('a').forEach(link => {
                link.addEventListener('click', () => {
                    navLinks.classList.remove('active');
                });
            });
        }

        // Smooth scroll for anchor links & active highlight
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                const targetId = this.getAttribute('href');
                if(targetId === "#" || targetId === "") return;
                const targetElem = document.querySelector(targetId);
                if(targetElem) {
                    e.preventDefault();
                    targetElem.scrollIntoView({ behavior: 'smooth', block: 'start' });
                    // update active class on nav
                    document.querySelectorAll('.nav-links a').forEach(link => link.classList.remove('active'));
                    this.classList.add('active');
                }
            });
        });

        // On load render products & cart
        document.addEventListener('DOMContentLoaded', () => {
            renderProducts();
            updateCartUI();
            // Set active home on scroll simple effect
            const sections = document.querySelectorAll('section');
            window.addEventListener('scroll', () => {
                let current = '';
                sections.forEach(section => {
                    const sectionTop = section.offsetTop - 120;
                    if(pageYOffset >= sectionTop) current = section.getAttribute('id');
                });
                document.querySelectorAll('.nav-links a').forEach(link => {
                    link.classList.remove('active');
                    if(link.getAttribute('href') === `#${current}`) link.classList.add('active');
                });
                if(!current && window.scrollY < 100) document.querySelector('.nav-links a[href="#home"]')?.classList.add('active');
            });
        });
    </script>
</body>
</html>
