<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OnTop - Stwórz swój styl</title>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="css/style2.css"/>
</head>
<body>
    <!-- HEADER -->
    <header>
        <!-- TOP HEADER -->
        <div id="top-header">
            <div class="container">
                <ul class="header-links pull-left">
                    <li><a href="#"><i class="fa fa-phone"></i> +48 111 111 111</a></li>
                    <li><a href="#"><i class="fa fa-envelope-o"></i> email@email.com</a></li>
                    <li><a href="#"><i class="fa fa-map-marker"></i> Os. Podwawelskie 34</a></li>
                </ul>
                <ul class="header-links pull-right">
                    <li><a href="#"><i class="fa fa-user-o"></i> Moje konto</a></li>
                </ul>
            </div>
        </div>
        <!-- /TOP HEADER -->
        
        <!-- MAIN HEADER -->
        <div id="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="header-logo">
                            <a href="#" class="logo">
                                <img src="" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="header-search">
                            <form>
                                <select class="input-select">
                                    <option value="0">Kategorie</option>
                                    <option value="1">Mężczyźni</option>
                                    <option value="1">Kobiety</option>
                                </select>
                                <input class="input" placeholder="Wyszukaj tutaj">
                                <button class="search-btn">Wyszukaj</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-3 clearfix">
                        <div class="header-ctn">    
                            <!-- Cart -->
                            <div class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span>Koszyk</span>
                                    <div class="qty" id="cart-quantity">0</div>
                                </a>
                                <div class="cart-dropdown" id="cart-dropdown">
                                    <div class="cart-list" id="cart-items"></div>
                                    <div class="cart-summary">
                                        <small></small>
                                        <h5 id="cart-total">0.00 zł</h5>
                                    </div>
                                    <div class="cart-btns">
                                        <a href="#">Checkout<i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- /Cart -->
                            <div class="menu-toggle">
                                <a href="#">
                                    <i class="fa fa-bars"></i>
                                    <span>Menu</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /MAIN HEADER -->
    </header>
    <!-- /HEADER -->

    <!-- NAVIGATION -->
    <nav id="navigation">
        <div class="container">
            <div id="responsive-nav">
                <ul class="main-nav nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#">Promocje</a></li>
                    <li><a href="#">Kategorie</a></li>
                    <li><a href="#">Koszulki</a></li>
                    <li><a href="#">Bluzy</a></li>
                    <li><a href="#">Spodnie</a></li>
                    <li><a href="#">Buty</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- /NAVIGATION -->
    
    <!-- SECTION -->
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title">
                        <h3 class="title">Nowe produkty</h3>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="products-slick" data-nav="#slick-nav-1">
                        <!-- product -->
                        <div class="product" data-id="1" data-price="980.00">
                            <div class="product-img">
                                <img src="./photos/2.png" alt="">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Kategorie</p>
                                <h3 class="product-name"><a href="#">Bluza</a></h3>
                                <h4 class="product-price">980.00 zł <del class="product-old-price">2990.00 zł</del></h4>
                                <button class="add-to-cart-btn" onclick="addToCart(this)">Dodaj do koszyka</button>
                            </div>
                        </div>
                        <!-- /product -->
                        <div class="product" data-id="2" data-price="980.00">
                            <div class="product-img">
                                <img src="./photos/1.png" alt="">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Kategorie</p>
                                <h3 class="product-name"><a href="#">Buty</a></h3>
                                <h4 class="product-price">980.00 zł <del class="product-old-price">1990.00 zł</del></h4>
                                <button class="add-to-cart-btn" onclick="addToCart(this)">Dodaj do koszyka</button>
                            </div>
                        </div>
                        <!-- /product -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /SECTION -->

    <!-- FOOTER -->
    <footer id="footer">
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-title">O nas</h3>
                            <p>Oferujemy spory wybór ubrań dla naszych klientów</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-title">Informacje</h3>
                            <ul class="footer-links">
                                <li><a href="#">O nas</a></li>
                                <li><a href="#">Kontakt do nas</a></li>
                                <li><a href="#">Polityka prywatności</a></li>
                                <li><a href="#">Zamówienia i zwroty</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="bottom-footer" class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <span class="copyright">Copyright &copy;<script>document.write(new Date().getFullYear());</script> Igor Sikora</span>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- /FOOTER -->

    <!-- jQuery Plugins -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/nouislider.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/main.js"></script>

    <script>
        let cart = [];
        let total = 0;

        function addToCart(button) {
            const product = $(button).closest('.product');
            const id = product.data('id');
            const price = parseFloat(product.data('price'));
            const name = product.find('.product-name a').text();

            const existingProduct = cart.find(item => item.id === id);

            if (existingProduct) {
                existingProduct.quantity++;
            } else {
                cart.push({ id, name, price, quantity: 1 });
            }

            total += price;
            updateCartUI();
        }

        function removeFromCart(id) {
            const productIndex = cart.findIndex(item => item.id === id);
            if (productIndex > -1) {
                total -= cart[productIndex].price * cart[productIndex].quantity;
                cart.splice(productIndex, 1);
                updateCartUI();
            }
        }

        function updateCartUI() {
            const cartItems = $('#cart-items');
            const cartCount = $('#cart-quantity');
            const cartTotal = $('#cart-total');
            cartItems.empty();

            cart.forEach(item => {
                cartItems.append(`
                    <div class="product-widget">
                        <h3 class="product-name">${item.name} (x${item.quantity})</h3>
                        <h4 class="product-price">${(item.price * item.quantity).toFixed(2)} zł <button onclick="removeFromCart(${item.id})">Usuń</button></h4>
                    </div>
                `);
            });

            cartCount.text(cart.length);
            cartTotal.text(`${total.toFixed(2)} zł`);
        }
    </script>
</body>
</html>
