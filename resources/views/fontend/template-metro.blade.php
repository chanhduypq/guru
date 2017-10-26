
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
    <meta name="description" content="Kronoindex.com/SoldPrices is a price research guide & utility made for watch collectors, by watch collectors. Kronoindex.com/SoldPrices is the fastest and best search engine that determines what your watch was sold for in the past fifty years, assuming it was sold in a public online or actual auction.">
    <meta name="author" content="">
    <meta property="og:url"           content="" />
    <meta property="og:type"          content="website" />
    <meta property="og:title"         content="Kronoindex Sold Prices" />
    <meta property="og:site_name" content="Kronoindex Sold Prices"/>
    <meta property="og:description"   content="Kronoindex.com/SoldPrices is a price research guide & utility made for watch collectors, by watch collectors. Kronoindex.com/SoldPrices is the fastest and best search engine that determines what your watch was sold for in the past fifty years, assuming it was sold in a public online or actual auction." />
    <meta property="og:image" content="{{asset('images/share.png')}}" />
    <title>Kronoindex - Sold Prices</title>
    <!-- Bootstrap core CSS -->
   
    <link href="{{asset('bower_components/bootstrap/dist/css/bootstrap.css')}}" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="{{asset('css/main.css')}}" rel="stylesheet">
    <link href="{{asset('css/general.css')}}" rel="stylesheet">
    <link href="{{asset('bower_components/owlcar/owl-carousel/owl.carousel.css')}}" rel="stylesheet">
    <link href="{{asset('bower_components/owlcar/owl-carousel/owl.theme.css')}}" rel="stylesheet">
    <link rel='stylesheet'   href="{{asset('css/taptap.css')}}" type='text/css' media='all' />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

    <!--<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>-->
    <!-- script src="newhtmlsample/assets/js/hover.zoom.js"></script //-->
    <!-- script src="newhtmlsample/assets/js/hover.zoom.conf.js"></script //-->
    <script type="text/javascript">
        <!--
        function myPopup() {
          window.open("tc.html",
              "myWindow", "status = 1, height = 800, width = 600, resizable = 0")
          return false;
        }

        var Rowsep = 'ROWSEP';
        var Colsep = 'COLSEP';
        var serverpath = '';
        //-->
    </script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
         <!--[if lt IE 9]>
   <scr    ipt src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->

</head>
<body>
  <div id="page_loading_container" class="parentDisable" style="display:none;">
    <div class="center">
      <img src="{{asset('images/ajax-loader.gif')}}">
      <div class="text-center">Refining results...</div>
    </div>
  </div>
  <!-- Static navbar -->
  <div class="navbar navbar-inverse navbar-static-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="{{action('Fontend\HomeController@index')}}"><img src="{{asset('images/logo.png')}}" style="height:95px;"></a>
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
          <!--   <li><a href="http://bookconcierge.co/~krdex1/">All</a></li>----->
          <li class="dropdown"><a class="dropdown-toggle" href="#" onclick="return false;">KronoGuru Speaks <span class="caret"></span><br>
              <span style="text-align: center; display: block; text-transform: none; font-size: 11px;">(&amp How To Use Us)</span></a></a>
            <ul class="dropdown-menu">
              <li><a href="#">Who We Are</a></li>
              <li><a href="#">What We Stand For</a></li>
              <li><a href="#">What's the "Right" Watch for You?</a></li>
              <li><a href="#">Navigating Marketing Bullshit</a></li>
              <li><a href="#">Escrow (Coming Soon)</a></li>
              <li><a href="#">Auctions (Coming Soon)</a></li>
            </ul>
          </li>
          <li><a href="http://kronoindex.com/soldprices/">SOLD PRICES<br>
              <span style="text-align: center; display: block; text-transform: none; font-size: 11px;">Actual Auction Results</span></a></li>
          <li class="dropdown">
            <a class="dropdown-toggle" href="http://kronoindex.com/retailprices/" onclick="return false;">Retail Prices <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="http://kronoindex.com/retailprices/">All</a></li>
              <li><a href="http://kronoindex.com/retailprices/region/China">China</a></li>
              <li><a href="http://kronoindex.com/retailprices/region/Europe">Europe</a></li>
              <li><a href="http://kronoindex.com/retailprices/region/Hong+Kong">Hong Kong</a></li>
              <li><a href="http://kronoindex.com/retailprices/region/India">India</a></li>
              <li><a href="http://kronoindex.com/retailprices/region/Korea">Korea</a></li>
              <li><a href="http://kronoindex.com/retailprices/region/Macau">Macau</a></li>
              <li><a href="http://kronoindex.com/retailprices/region/Philippines">Philippines</a></li>
              <li><a href="http://kronoindex.com/retailprices/region/Taiwan">Taiwan</a></li>
              <li><a href="http://kronoindex.com/retailprices/region/USA">USA</a></li>
            </ul>
          </li>
          <li class="menu-item dropdown">
            <a href="http://kronoindex.com/superwatchhunter/" onclick="return false;">Global Sales<br>Listings <span class="caret"></span><br><span style="text-align: center; display: block; text-transform: none; font-size: 11px;">SuperWatchHunter</span></a>
            <ul class="dropdown-menu">
              <li><a href="http://kronoindex.com/superwatchhunter/">Dealers around the world</a></li>
              <li><a href="http://kronoindex.com/superwatchhunter/watch_forums.php">Watch Forums' Sales Listings</a></li>
              <li><a href="#">Trusted Dealers (coming soon)</a>
              </li><li><a href="#">Premium Dealers (coming soon)</a>
              </li>
            </ul>
          </li>
          <li><a href="{{action('Fontend\HomeController@index')}}">KronoDatabase</a></li>
        </ul>
      </div><!--/.nav-collapse -->
    </div>
  </div>
  <!-- +++++ We                lcome Secti                on +++++ -->    
   @yield('subheader')
  <div class="container">
    @if (isset($successMsg)))
    <div class="alert alert-success alert-dismissable">
      <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
      <p>{{$successMsg}}</p>
            </div>
            @elseif (\Session::has('successMsg'))
            <div class="alert alert-success alert-dismissable">
              <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
      <p      >{!! \Session::get('successMsg') !!}</p>
    </div>
    @endif

    @if (isset($errorMsg))
    <div class="alert alert-danger alert-dismissable">
      <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
      <p>{{$errorMsg}}</p>
            </div>
            @elseif (\Session::has('errorMsg'))
            <div class="alert alert-danger alert-dismissable">
              <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
      <p      >{!! \Session::get('errorMsg') !!}</p>
    </div>
    @endif
    <h3>@yield('title')</h3>
    @yield('main')

  </div>


  <div id="footer">
    <div class="container">        
      <div class="row">
        <div class="col-lg-6 aboutusfoot">
          <h4>About Us</h4>
          <p class="small">Kronoindex.com is the fastest and best price research guide &amp; utility made for watch collectors, by watch collectors. Kronoindex.com allows you to see <br>
            What your watch was sold for: <a href="http://www.kronoindex.com/soldprices" target="_blank">www.kronoindex.com/soldprices</a><br>
            What the original retail price of your watch was: <a href="http://www.kronoindex.com/retailprices" target="_blank">www.kronoindex.com/retailprices</a><br>
            What the current sale price and where to buy the watch: <a href="http://www.kronoindex.com/superwatchhunter/" target="_blank">www.kronoindex.com/superwatchhunter</a></p>
        </div><!-- /col-lg-4 -->
        <div class="col-lg-4 testimonialfot">
          <h4>Contact Us</h4>
          <p class="small">Contact us at <a href="mailto:feedback@kronoindex.com">feedback@kronoindex.com</a><br><br>
            Terms and conditions of usage of this site can be viewed <a href="#" onclick="myPopup();">here</a>
            <br>
          </p>
        </div><!-- /col-lg-4 -->
        <div class="col-lg-2">
          <h4></h4>
          <p>
            <a href="https://www.facebook.com/kronoindex" target="_blank" align="center"><img src="{{asset('images/facebook.png') }}"></a>
          </p>
        </div><!-- /col-lg-4 -->



      </div>

    </div>
  </div>

  <!-- BEGIN MENU BUTTON -->
  <div class="taptap-menu-button-wrapper taptap-right">
    <div class="taptap-menu-button-three">
      <div class="taptap-menu-button-three-middle"></div>
    </div>
  </div>
  <!-- END MENU BUTTON -->

  <!-- BEGIN SEARCH BUTTON -->
  <!-- END SEARCH BUTTON -->

  <!-- BEGIN SEARCH FORM -->        
  <!-- END SEARCH FORM -->

  <!-- BEGIN MENU BACKGROUND COLOR -->
  <div class="taptap-background-color">
  </div>
  <!-- END MENU BACKGROUND COLOR -->

  <!-- BEGIN MENU BACKGROUND IMAGE -->
  <div class="taptap-background-image">
  </div>
  <!-- END MENU BACKGROUND IMAGE -->

  <!-- BEGIN MAIN WRAPPER -->
  <div class="taptap-main-wrapper">
    <div class="taptap-main-inner">
      <div class="taptap-main">
        <div class="taptap-main-inner-inner">
          <!-- BEGIN HEADING -->
          <div class="taptap-heading">
          </div>
          <!-- END HEADING -->

          <!-- BEGIN SUBHEADING -->
          <div class="taptap-subheading">
          </div>
          <!-- END SUBHEADING -->

          <!-- BEGIN IMAGE -->
          <!-- END IMAGE -->

          <!-- BEGIN MENU -->
          <div class="taptap-by-bonfire">
            <ul id="menu-mobile-menu" class="menu">
              <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children">
                  <a href="{{action('Fontend\HomeController@index')}}">KronoGuru Speaks<br><sub>(&amp; How To Use Us)</sub></a>
                  <span><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 512 512" xml:space="preserve"><polygon id="arrow-24-icon" points="206.422,462 134.559,390.477 268.395,256 134.559,121.521 206.422,50 411.441,256 "></polygon></svg></span>
                    <ul class="sub-menu">
                      <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="#">Who We Are</a></li>
                      <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="#">What We Stand For</a></li>
                      <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="#">What's the "Right" Watch for You?</a></li>
                      <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="#">Navigating Marketing Bullshit</a></li>
                      <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="#">Escrow (Coming Soon)</a></li>
                      <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="#">Auctions (Coming Soon)</a></li>
                    </ul>
              </li>
              <li class="menu-item"><a href="http://kronoindex.com/soldprices/">Sold Prices</a></li>
              <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children">
                <a href="http://kronoindex.com/retailprices/">Retail Prices</a>
                <span><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 512 512" xml:space="preserve"><polygon id="arrow-24-icon" points="206.422,462 134.559,390.477 268.395,256 134.559,121.521 206.422,50 411.441,256 "></polygon></svg></span><ul class="sub-menu">
                  <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="http://kronoindex.com/retailprices/region/China">China</a></li>
                  <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="http://kronoindex.com/retailprices/region/Europe">Europe</a></li>
                  <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="http://kronoindex.com/retailprices/region/Hong+Kong">Hong Kong</a></li>
                  <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="http://kronoindex.com/retailprices/region/India">India</a></li>
                  <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="http://kronoindex.com/retailprices/region/Korea">Korea</a></li>
                  <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="http://kronoindex.com/retailprices/region/Macau">Macau</a></li>
                  <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="http://kronoindex.com/retailprices/region/Philippines">Philippines</a></li>
                  <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="http://kronoindex.com/retailprices/region/Taiwan">Taiwan</a></li>
                  <li class="menu-item menu-item-type-custom menu-item-object-custom"><a href="http://kronoindex.com/retailprices/region/USA">USA</a></li>
                </ul>
              </li>         
              <li class="menu-item"><a href="http://kronoindex.com/superwatchhunter/">SuperWatchHunter<br><span>Beta, <span style="font-style: italic">New!</span></span></a></li>
              <li class="menu-item"><a href="{{action('Fontend\HomeController@index')}}">KronoDatabase</a></li>
            </ul>                                
          </div>
          <!-- END MENU -->
        </div>
      </div>
    </div>
  </div>
  <!-- END MAIN WRAPPER -->


<!-- Bootstrap core JavaS    cript
=================================================    = -->
<!-- Placed at the end of the document so the pages load faste    r -->
<script src="{{asset('bower_components/jquery/dist/jquery.js')}}"></script>
 <!-- Bootstrap Core JavaScript -->
<script src="{{asset('bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/taptap.js')}}"></script>
<script type="text/javascript" src="{{asset('js/taptap-accordion.js')}}"></script>
<script src="{{asset('bower_components/masonry/dist/masonry.pkgd.js')}}"></script>
 <script src="{{asset('js/general.js')}}"></script>
 <script src="{{asset('bower_components/imagesloaded/imagesloaded.pkgd.min.js')}}"></script>





   @yield('view.scripts')

</body>
    </html>