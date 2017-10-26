@extends('fontend.template')


@section('main')
{!! Breadcrumbs::render('product', $product) !!}
<div class="box-content">
  <div class="top-detail">
    <h2>{{!empty($product->brand) ? $product->brand->name:''}}</h2>
    <div class="row">
      <div class="col-sm-6">
        <div class="img-detail">
          <img src="{{$product->getImage(true)}}">

        </div>
        <div class="img-brand-detial"><a  href="{{action('Fontend\ProductController@brand',['brandSlug'=>$product->brand->slug])}}"><img src="{{$product->brand->getLogo()}}"></a></div>
      </div>
      <div class="col-sm-6">
        <div class="text-detial">
          <div class="box-info-detail">
            <h4>{{$product->name}}</h4>
            <table class="info-table">
              <tbody><tr><th width="120px">Brand:</th>
                  <td><a class="link-color" href="{{action('Fontend\ProductController@brand',['brandSlug'=>$product->brand->slug])}}">{{!empty($product->brand) ? $product->brand->name:''}}</a></td></tr>
                <tr><th>Family:</th> <td><a class="link-color" href="{{action('Fontend\ProductController@family',['brandSlug'=>$product->brand->slug,'familySlug'=>$product->family->slug])}}">{{!empty($product->family) ? $product->family->name:''}}</a></td></tr>
                <tr><th>Reference:</th><td><a href="#" class="link-color">{{$product->reference}}</a></td></tr>
                <tr><th>Name:</th> <td>{{$product->name}}</td></tr>
<!--                <tr><th>Produced:</th> <td>2017</td></tr>
                <tr><th>Limited:</th> <td>No</td></tr>-->
              </tbody></table>
          </div>

          <div class="box-info-detail">
            <div class="row">
              <div class="col-sm-6">
                <h4>Case</h4>
                <table class="info-table">
                  <tbody><tr><th width="120px">Material:</th> <td>{{$product->material}}</td></tr>
<!--                    <tr><th>Glass:</th> <td>Sapphire</td></tr>
                    <tr><th>Back:</th> <td>Open</td></tr>
                    <tr><th>Shape:</th> <td>Round</td></tr>
                    <tr><th>Diameter:</th> <td>36.10 mm</td></tr>
                    <tr><th>Height:</th> <td>9.80 mm</td></tr>-->
                  </tbody></table>
              </div>
<!--              <div class="col-sm-6">
                <h4>Dial</h4>
                <table class="info-table">
                  <tbody><tr><th width="120px">Color:</th> <td>Silver</td></tr>
                    <tr><th>Indexes:</th> <td>Mixed</td></tr>
                    <tr><th>Hands:</th> <td>Alpha</td></tr>
                  </tbody></table>
              </div>-->
            </div>
          </div>

          <div class="box-info-detail">
            <h4>Movement</h4>
            <div class="row">
              <div class="col-sm-6 col-md-7">
                <table class="info-table">
                  <tbody><tr><th width="120px">Type:</th><td>{{$product->movementType}}</td></tr><tr><th>Diameter:</th><td>{{$product->diameter}}</td></tr>
<!--                    <tr><th>Brand:</th><td><a class="link-color" href="#">A. Lange &amp; Söhne</a></td></tr>
                    <tr><th>Caliber:</th><td><a class="link-color" href="#">L121.2</a></td></tr>
                    <tr><th>Display:</th><td>Analog</td></tr>
                    <tr><th>Diameter:</th><td>30.60 mm</td></tr>
                    <tr><th>Jewels:</th><td>44</td></tr>
                    <tr><th>Reserve:</th><td>72 h</td></tr>
                    <tr><th>Frequency:</th><td>21600 bph</td></tr> 
                    <tr><th>Time:</th><td>Hours, Minutes, Small Seconds</td></tr>
                    <tr><th>Date:</th><td>Big Date</td></tr>
                    <tr><th>Astronomical:</th><td>Moonphase</td></tr>
                    <tr><th>Additionals:</th><td>Power Reserve Indicator</td></tr>-->
                  </tbody></table>
              </div>
<!--              <div class="col-sm-6 col-md-5">
                <a class="hover-thumbnail caliber-thumbnail" href="#">
                  <div class="bounding-box">
                    <img class="thumb" src="http://cdn.watchbase.com/caliber/medium/a-lange-sohne/l121-2-1b.jpg" alt="A. Lange &amp; Söhne caliber L121.2" title="A. Lange &amp; Söhne caliber L121.2">
                  </div>
                </a>
              </div>-->
              <div class="clearfix"></div>
<!--              <div class="col-md-12">
                <u><a class="link-color"  href="{{action('Fontend\ProductController@brand',['brandSlug'=>$product->brand->slug])}}">More watches using {{!empty($product->brand) ? $product->brand->name:''}} caliber</a></u>
              </div>-->
            </div>
          </div>

<!--          <div class="box-info-detail">
            <div class="row">
              <div class="col-sm-6 col-md-7">
                <h4>Description</h4>
                The Kleine Lange 1 Moonphase was introduced at SIHH 2017. The inaugural model, reference 182.030, has a pink gold case and a guilloched, argenté-coloured dial. At 36.8mm the case is 1.7mm smaller than that of the 'regular' Lange 1 Moonphase. It is powered by the hand-wound caliber L121.2.
              </div>
              <div class="col-sm-6 col-md-5">
                <img src="{{asset('images/product.jpg')}}" width="100%">
              </div>
            </div>

          </div>-->

        </div>
      </div>
    </div>
  </div>


</div>
@stop