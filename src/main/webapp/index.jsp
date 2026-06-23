<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NexusShop — Dark Edition</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz@14..32&family=Space+Grotesk:wght@400;600;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        /* ----- reset & base ----- */
        *,
        *::before,
        *::after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        :root {
            --bg-primary: #0b0d17;
            --bg-surface: #13162b;
            --bg-card: rgba(255, 255, 255, 0.04);
            --border-glow: rgba(0, 230, 255, 0.15);
            --text-primary: #f0f4ff;
            --text-secondary: #8b92b0;
            --accent-cyan: #00e5ff;
            --accent-purple: #a855f7;
            --gradient-1: linear-gradient(135deg, #00e5ff, #a855f7);
            --radius-lg: 28px;
            --radius-md: 16px;
            --radius-sm: 10px;
            --shadow-glow: 0 8px 40px rgba(0, 229, 255, 0.08);
            --transition: all 0.25s cubic-bezier(0.2, 0.9, 0.3, 1.2);
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg-primary);
            color: var(--text-primary);
            line-height: 1.5;
            min-height: 100vh;
            padding: 0 24px;
        }

        a {
            color: inherit;
            text-decoration: none;
        }
        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* ----- glassmorphism card ----- */
        .glass {
            background: var(--bg-card);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
            border: 1px solid rgba(255, 255, 255, 0.03);
            box-shadow: var(--shadow-glow);
            border-radius: var(--radius-md);
        }

        /* ----- header ----- */
        header {
            padding: 18px 0;
            border-bottom: 1px solid rgba(255, 255, 255, 0.03);
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(11, 13, 23, 0.7);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 16px;
        }

        .brand {
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 700;
            font-size: 1.6rem;
            background: var(--gradient-1);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            letter-spacing: -0.02em;
        }

        .brand i {
            -webkit-text-fill-color: initial;
            color: var(--accent-cyan);
            margin-right: 6px;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 8px;
            list-style: none;
        }

        .nav-links a {
            padding: 8px 16px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 0.9rem;
            color: var(--text-secondary);
            transition: var(--transition);
        }

        .nav-links a:hover {
            background: rgba(255, 255, 255, 0.04);
            color: #fff;
        }
        .nav-links a.active {
            background: rgba(0, 229, 255, 0.06);
            color: var(--accent-cyan);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .icon-btn {
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.02);
            border: 1px solid rgba(255, 255, 255, 0.03);
            color: var(--text-secondary);
            transition: var(--transition);
            cursor: pointer;
        }

        .icon-btn:hover {
            background: rgba(0, 229, 255, 0.06);
            border-color: var(--accent-cyan);
            color: #fff;
        }

        .cart-badge {
            position: relative;
        }
        .cart-badge .badge {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--accent-cyan);
            color: #000;
            font-size: 0.6rem;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
        }

        /* ----- hero ----- */
        .hero {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            align-items: center;
            padding: 60px 0 80px;
        }

        .hero-content h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 3.4rem;
            font-weight: 700;
            line-height: 1.1;
            letter-spacing: -0.02em;
        }

        .hero-content h1 span {
            background: var(--gradient-1);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero-content p {
            color: var(--text-secondary);
            font-size: 1.1rem;
            max-width: 440px;
            margin: 20px 0 30px;
        }

        .btn-group {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: var(--transition);
            font-size: 0.95rem;
        }

        .btn-primary {
            background: var(--gradient-1);
            color: #0b0d17;
        }
        .btn-primary:hover {
            transform: scale(1.02);
            box-shadow: 0 0 30px rgba(0, 229, 255, 0.2);
        }

        .btn-outline {
            background: transparent;
            border: 1px solid rgba(255, 255, 255, 0.08);
            color: #fff;
        }
        .btn-outline:hover {
            background: rgba(255, 255, 255, 0.04);
            border-color: var(--accent-cyan);
        }

        .hero-visual {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 16px;
        }
        .hero-visual .card {
            background: var(--bg-card);
            border-radius: var(--radius-md);
            padding: 24px;
            border: 1px solid rgba(255, 255, 255, 0.03);
            transition: var(--transition);
        }
        .hero-visual .card:hover {
            border-color: rgba(0, 229, 255, 0.15);
            transform: translateY(-4px);
        }
        .hero-visual .card i {
            font-size: 2.2rem;
            color: var(--accent-cyan);
            margin-bottom: 10px;
        }
        .hero-visual .card h4 {
            font-size: 1rem;
            font-weight: 600;
        }
        .hero-visual .card p {
            font-size: 0.85rem;
            color: var(--text-secondary);
        }

        /* ----- section title ----- */
        .section-head {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 28px;
        }
        .section-head h2 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 1.8rem;
            font-weight: 600;
            letter-spacing: -0.01em;
        }
        .section-head .muted {
            color: var(--text-secondary);
            font-size: 0.9rem;
        }

        /* ----- categories ----- */
        .category-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .category-card {
            background: var(--bg-card);
            border-radius: var(--radius-sm);
            padding: 20px 12px;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.02);
            transition: var(--transition);
            cursor: pointer;
        }
        .category-card:hover {
            background: rgba(0, 229, 255, 0.04);
            border-color: var(--accent-cyan);
            transform: translateY(-6px);
        }
        .category-card i {
            font-size: 2rem;
            color: var(--accent-cyan);
            margin-bottom: 8px;
            display: block;
        }
        .category-card h4 {
            font-weight: 600;
            font-size: 0.9rem;
        }
        .category-card span {
            font-size: 0.7rem;
            color: var(--text-secondary);
        }

        /* ----- products ----- */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius-md);
            overflow: hidden;
            border: 1px solid rgba(255, 255, 255, 0.02);
            transition: var(--transition);
            position: relative;
        }
        .product-card:hover {
            transform: translateY(-8px);
            border-color: rgba(0, 229, 255, 0.15);
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.4);
        }

        .product-card .img-wrap {
            height: 200px;
            background: #1a1e33;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 0.8rem;
            color: var(--text-secondary);
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .product-body {
            padding: 16px 18px 18px;
        }
        .product-body h5 {
            font-weight: 600;
            font-size: 1rem;
        }
        .product-body .meta {
            color: var(--text-secondary);
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 0.04em;
            margin: 4px 0 10px;
        }
        .product-body .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .product-body .price {
            font-weight: 700;
            font-size: 1.2rem;
        }
        .product-body .old-price {
            color: var(--text-secondary);
            text-decoration: line-through;
            font-size: 0.85rem;
            margin-left: 8px;
        }
        .product-body .rating {
            color: #fbbf24;
            font-size: 0.85rem;
        }

        .product-actions {
            display: flex;
            gap: 10px;
            padding: 0 18px 18px;
        }
        .product-actions .add-btn {
            flex: 1;
            padding: 10px;
            border-radius: 60px;
            background: var(--gradient-1);
            border: none;
            font-weight: 600;
            color: #0b0d17;
            cursor: pointer;
            transition: var(--transition);
        }
        .product-actions .add-btn:hover {
            transform: scale(1.02);
            box-shadow: 0 0 30px rgba(0, 229, 255, 0.15);
        }

        .product-actions .wish-btn {
            width: 44px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.02);
            border: 1px solid rgba(255, 255, 255, 0.04);
            color: var(--text-secondary);
            cursor: pointer;
            transition: var(--transition);
        }
        .product-actions .wish-btn:hover {
            border-color: var(--accent-cyan);
            color: #fff;
        }

        /* ----- deal banner ----- */
        .deal-banner {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 32px;
            background: var(--bg-surface);
            border-radius: var(--radius-lg);
            padding: 40px;
            border: 1px solid rgba(255, 255, 255, 0.02);
            margin: 40px 0;
            align-items: center;
        }
        .deal-banner h2 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 2.2rem;
        }
        .deal-banner .highlight {
            color: var(--accent-cyan);
        }

        .timer-grid {
            display: flex;
            gap: 16px;
            margin: 20px 0;
        }
        .timer-box {
            background: rgba(255, 255, 255, 0.02);
            padding: 12px 22px;
            border-radius: var(--radius-sm);
            text-align: center;
            min-width: 70px;
            border: 1px solid rgba(255, 255, 255, 0.03);
        }
        .timer-box .num {
            font-size: 2rem;
            font-weight: 700;
            font-family: 'Space Grotesk', sans-serif;
        }
        .timer-box .label {
            font-size: 0.7rem;
            color: var(--text-secondary);
            text-transform: uppercase;
            letter-spacing: 0.06em;
        }

        /* ----- testimonials ----- */
        .testimonial-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 8px 4px 20px;
        }
        .testimonial-card {
            min-width: 280px;
            background: var(--bg-card);
            border-radius: var(--radius-md);
            padding: 24px;
            border: 1px solid rgba(255, 255, 255, 0.02);
        }
        .testimonial-card .stars {
            color: #fbbf24;
            margin-bottom: 8px;
        }
        .testimonial-card p {
            font-size: 0.95rem;
            color: var(--text-secondary);
            line-height: 1.6;
        }
        .testimonial-card .author {
            margin-top: 14px;
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .testimonial-card .author .avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: #1a1e33;
            display: grid;
            place-items: center;
            color: var(--accent-cyan);
        }

        /* ----- newsletter ----- */
        .newsletter-box {
            background: var(--bg-surface);
            border-radius: var(--radius-lg);
            padding: 40px 48px;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.02);
            margin: 40px 0;
        }
        .newsletter-box h3 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 1.6rem;
        }
        .newsletter-box p {
            color: var(--text-secondary);
            margin: 8px 0 20px;
        }
        .newsletter-box form {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
        }
        .newsletter-box input {
            padding: 14px 22px;
            border-radius: 60px;
            border: 1px solid rgba(255, 255, 255, 0.04);
            background: rgba(255, 255, 255, 0.02);
            color: #fff;
            min-width: 280px;
            outline: none;
            transition: var(--transition);
        }
        .newsletter-box input:focus {
            border-color: var(--accent-cyan);
        }

        /* ----- footer ----- */
        footer {
            padding: 40px 0 24px;
            border-top: 1px solid rgba(255, 255, 255, 0.02);
            margin-top: 40px;
            color: var(--text-secondary);
        }
        .footer-grid {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 30px;
        }
        .footer-grid .col h4 {
            color: #fff;
            font-weight: 600;
            margin-bottom: 12px;
        }
        .footer-grid .col p,
        .footer-grid .col a {
            display: block;
            font-size: 0.9rem;
            margin-bottom: 6px;
            transition: var(--transition);
        }
        .footer-grid .col a:hover {
            color: #fff;
        }

        .footer-bottom {
            text-align: center;
            font-size: 0.8rem;
            border-top: 1px solid rgba(255, 255, 255, 0.02);
            padding-top: 20px;
            margin-top: 30px;
        }

        /* ----- responsive ----- */
        @media (max-width: 1024px) {
            .category-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .product-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .hero {
                grid-template-columns: 1fr;
            }
            .hero-visual {
                grid-template-columns: 1fr 1fr;
            }
            .deal-banner {
                grid-template-columns: 1fr;
            }
        }

        @media (max-width: 640px) {
            body {
                padding: 0 12px;
            }
            .product-grid {
                grid-template-columns: 1fr;
            }
            .category-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .hero-content h1 {
                font-size: 2.4rem;
            }
            .hero-visual {
                grid-template-columns: 1fr;
            }
            .deal-banner {
                padding: 24px;
            }
            .newsletter-box {
                padding: 24px;
            }
            .newsletter-box input {
                min-width: 100%;
            }
            .header-inner {
                flex-direction: column;
                align-items: stretch;
                gap: 12px;
            }
            .nav-links {
                flex-wrap: wrap;
                justify-content: center;
            }
            .header-actions {
                justify-content: center;
            }
        }
    </style>
</head>
<body>

    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:20px;">
                <span class="brand"><i class="fas fa-cube"></i>Nexus<span style="background:var(--gradient-1);-webkit-background-clip:text;-webkit-text-fill-color:transparent;">Shop</span></span>
            </div>
            <ul class="nav-links">
                <li><a href="#" class="active">Home</a></li>
                <li><a href="#">Categories</a></li>
                <li><a href="#">Trending</a></li>
                <li><a href="#deals">Deals</a></li>
                <li><a href="#">About</a></li>
            </ul>
            <div class="header-actions">
                <button class="icon-btn"><i class="fas fa-search"></i></button>
                <button class="icon-btn"><i class="far fa-heart"></i></button>
                <div class="cart-badge">
                    <button class="icon-btn"><i class="fas fa-shopping-bag"></i></button>
                    <span class="badge" id="cartCount">0</span>
                </div>
                <button class="icon-btn" style="background:var(--gradient-1);color:#0b0d17;border:none;"><i class="fas fa-user"></i></button>
            </div>
        </div>
    </header>

    <main class="container">

        <!-- HERO -->
        <section class="hero">
            <div class="hero-content">
                <h1>Where <span>style</span> meets <span>innovation</span></h1>
                <p>Discover curated collections that define modern living. Premium quality, sustainable design, and timeless elegance.</p>
                <div class="btn-group">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
                    <button class="btn btn-outline">Explore</button>
                </div>
            </div>
            <div class="hero-visual">
                <div class="card">
                    <i class="fas fa-box-open"></i>
                    <h4>Smart Delivery</h4>
                    <p>Track your order in real-time</p>
                </div>
                <div class="card">
                    <i class="fas fa-shield-alt"></i>
                    <h4>Secure Payment</h4>
                    <p>128‑bit encrypted checkout</p>
                </div>
                <div class="card">
                    <i class="fas fa-undo-alt"></i>
                    <h4>30‑day returns</h4>
                    <p>Hassle‑free exchange policy</p>
                </div>
                <div class="card">
                    <i class="fas fa-headset"></i>
                    <h4>24/7 Support</h4>
                    <p>Chat with our concierge</p>
                </div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section>
            <div class="section-head">
                <h2>Explore Categories</h2>
                <span class="muted">View all <i class="fas fa-arrow-right" style="font-size:0.7rem;margin-left:6px;"></i></span>
            </div>
            <div class="category-grid" id="categoriesGrid"></div>
        </section>

        <!-- PRODUCTS -->
        <section style="margin-top:56px;">
            <div class="section-head">
                <h2>Bestsellers</h2>
                <span class="muted">Curated for you</span>
            </div>
            <div class="product-grid" id="productsGrid"></div>
        </section>

        <!-- DEAL BANNER -->
        <section id="deals" class="deal-banner">
            <div>
                <h2>Flash Sale <span class="highlight">– up to 40% off</span></h2>
                <p style="color:var(--text-secondary);margin:12px 0 8px;">Don't wait — these prices vanish soon.</p>
                <div class="timer-grid" id="timerGrid">
                    <div class="timer-box"><span class="num" id="dealDays">0</span><div class="label">days</div></div>
                    <div class="timer-box"><span class="num" id="dealHours">00</span><div class="label">hrs</div></div>
                    <div class="timer-box"><span class="num" id="dealMinutes">00</span><div class="label">min</div></div>
                    <div class="timer-box"><span class="num" id="dealSeconds">00</span><div class="label">sec</div></div>
                </div>
                <button class="btn btn-primary" style="margin-top:8px;"><i class="fas fa-bolt"></i> Claim Deal</button>
            </div>
            <div style="background:rgba(255,255,255,0.02);border-radius:var(--radius-md);padding:20px;text-align:center;">
                <i class="fas fa-tag" style="font-size:3rem;color:var(--accent-cyan);"></i>
                <p style="margin-top:10px;font-size:1.1rem;">Use code <strong style="color:#fff;">FLASH40</strong></p>
                <p style="color:var(--text-secondary);font-size:0.8rem;">Limited stock — first come, first served.</p>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section>
            <div class="section-head">
                <h2>What our community says</h2>
                <span class="muted">Real stories from real people</span>
            </div>
            <div class="testimonial-scroll" id="testimonialScroll"></div>
        </section>

        <!-- NEWSLETTER -->
        <section class="newsletter-box">
            <h3>Join the inner circle</h3>
            <p>Be the first to receive exclusive drops, early access, and members‑only offers.</p>
            <form id="newsletterForm">
                <input type="email" id="newsletterEmail" placeholder="Enter your email" required />
                <button class="btn btn-primary" style="border-radius:60px;"><i class="fas fa-paper-plane"></i> Subscribe</button>
            </form>
            <div id="newsletterMsg" style="margin-top:16px;font-size:0.9rem;display:none;"></div>
        </section>
    </main>

    <footer>
        <div class="container footer-grid">
            <div class="col">
                <h4 style="font-family:'Space Grotesk';">NexusShop</h4>
                <p style="max-width:240px;">Premium e‑commerce reimagined. Built with love and dark mode.</p>
                <div style="display:flex;gap:12px;margin-top:12px;">
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
            <div class="col"><h4>Company</h4><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
            <div class="col"><h4>Support</h4><a href="#">Help Center</a><a href="#">Returns</a><a href="#">Contact</a></div>
            <div class="col"><h4>Legal</h4><a href="#">Privacy</a><a href="#">Terms</a><a href="#">Cookies</a></div>
        </div>
        <div class="footer-bottom">&copy; 2025 NexusShop — All rights reserved.</div>
    </footer>

    <script>
        // --- DATA ---
        const categories = [
            { name: 'Phones', icon: 'fa-mobile-alt' },
            { name: 'Laptops', icon: 'fa-laptop' },
            { name: 'Clothing', icon: 'fa-tshirt' },
            { name: 'Gadgets', icon: 'fa-headphones' },
            { name: 'Footwear', icon: 'fa-shoe-prints' },
            { name: 'Accessories', icon: 'fa-watch' },
        ];

        const products = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, rating: 5, img: '' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, img: '' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, img: '' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, img: '' },
            { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, img: '' },
            { id: 6, title: 'Chanel No.5', price: 120, rating: 5, img: '' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, img: '' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, img: '' },
        ];

        const testimonials = [
            { name: 'Ava Chen', text: 'Absolutely stunning quality. The packaging alone was a work of art.', rating: 5 },
            { name: 'Marcus Reid', text: 'Fastest shipping I’ve ever experienced. Will order again.', rating: 4 },
            { name: 'Lena Dupont', text: 'The customer support team went above and beyond. 10/10.', rating: 5 },
        ];

        // --- RENDER ---
        function renderCategories() {
            const grid = document.getElementById('categoriesGrid');
            grid.innerHTML = categories.map(c => `
                <div class="category-card">
                    <i class="fas ${c.icon}"></i>
                    <h4>${c.name}</h4>
                    <span>Explore</span>
                </div>
            `).join('');
        }

        function renderProducts() {
            const grid = document.getElementById('productsGrid');
            grid.innerHTML = products.map(p => `
                <div class="product-card">
                    <div class="img-wrap">
                        <i class="fas fa-image" style="font-size:2rem;color:var(--text-secondary);"></i>
                    </div>
                    <div class="product-body">
                        <h5>${p.title}</h5>
                        <div class="meta">Popular</div>
                        <div class="price-row">
                            <div>
                                <span class="price">$${p.price}</span>
                                ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}
                            </div>
                            <div class="rating">${'★'.repeat(Math.round(p.rating))}</div>
                        </div>
                    </div>
                    <div class="product-actions">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
                        <button class="wish-btn"><i class="far fa-heart"></i></button>
                    </div>
                </div>
            `).join('');

            document.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', () => {
                    let count = parseInt(document.getElementById('cartCount').innerText);
                    document.getElementById('cartCount').innerText = count + 1;
                    btn.innerHTML = '<i class="fas fa-check"></i> Added';
                    setTimeout(() => btn.innerHTML = '<i class="fas fa-plus"></i> Add', 1200);
                });
            });
        }

        function renderTestimonials() {
            const container = document.getElementById('testimonialScroll');
            container.innerHTML = testimonials.map(t => `
                <div class="testimonial-card">
                    <div class="stars">${'★'.repeat(t.rating)}</div>
                    <p>“${t.text}”</p>
                    <div class="author">
                        <div class="avatar"><i class="fas fa-user"></i></div>
                        <div><strong>${t.name}</strong></div>
                    </div>
                </div>
            `).join('');
        }

        // --- TIMER ---
        function initTimer() {
            let target = new Date();
            target.setHours(target.getHours() + 36);
            const el = (id) => document.getElementById(id);
            setInterval(() => {
                const diff = target - new Date();
                if (diff <= 0) return;
                const d = Math.floor(diff / 86400000);
                const h = Math.floor((diff % 86400000) / 3600000);
                const m = Math.floor((diff % 3600000) / 60000);
                const s = Math.floor((diff % 60000) / 1000);
                el('dealDays').innerText = d;
                el('dealHours').innerText = String(h).padStart(2, '0');
                el('dealMinutes').innerText = String(m).padStart(2, '0');
                el('dealSeconds').innerText = String(s).padStart(2, '0');
            }, 1000);
        }

        // --- NEWSLETTER ---
        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');
            if (!email.includes('@')) {
                msg.style.display = 'block';
                msg.style.color = '#f87171';
                msg.innerText = 'Please enter a valid email.';
                return;
            }
            msg.style.display = 'block';
            msg.style.color = '#34d399';
            msg.innerText = '✅ You\'re in! Welcome to the club.';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.style.display = 'none', 3000);
        });

        // --- SCROLL ---
        document.getElementById('shopNow').addEventListener('click', () => {
            document.querySelector('.product-grid').scrollIntoView({ behavior: 'smooth' });
        });

        // --- INIT ---
        renderCategories();
        renderProducts();
        renderTestimonials();
        initTimer();
    </script>
</body>
</html>
