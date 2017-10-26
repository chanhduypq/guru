@extends('fontend.template')
@section('main')
@if(isset($family))
{!! Breadcrumbs::render('family',$brand, $family) !!}
@elseif(isset($brand))
{!! Breadcrumbs::render('brand', $brand) !!}
@endif
<div class="box-content">
  @if(isset($brand))
  <div class="row top-brand">
    <div class="col-sm-6">
      <h2>{{$brand->name}}</h2>
    </div>
    <div class="col-sm-6 text-right">
      <img src="{{$brand->getLogo()}}">
    </div>
  </div>
  @endif


  <div class="row short-brand">
    <div class="col-sm-6">
    @if(isset($brand))
      <h4>{{$brand->countProduct->count()}} <span>{{$brand->name}}</span> watches in database</h4>
      @endif
    </div>
    <div class="col-sm-6">
      {{ Form::open(['method'=>'get','url'=>action('Fontend\ProductController@search',['brandSlug'=>$brand->slug])])}}

      <div class="input-group">
        <!--nput type="text" placeholder="Search"  class="form-control" name="search">
        <span class="input-group-btn">
           <a href="products.html" class="btn btn-default search_btn">Search</a>
        </span-->
        {{Form::text('searchKey', isset($input['searchKey']) ? $input['searchKey']:'',['placeholder'=>'Search in '.$brand->name,'id'=>'searchKey','class'=>'form-control '])}}


        <span class="input-group-btn">
          <button type="submit" class="btn btn-success" onclick="">Search KronoDatabase</button>
        </span>   
      </div>

      {{ Form::close() }}
    </div>
  </div>
  <div class="family-box row">
    @foreach($families as $iteration => $family)                    
        @if ($iteration && !($iteration%2))
    </div>
    <div class="family-box row">
        @endif
    <div class="col-md-6">
      <div class="background">
        <div class="row">
          <div class="col-sm-8 col-s-8">
            <div class="title">
              <a href="{{action('Fontend\ProductController@family',['brandSlug'=>$brand->slug,'familySlug'=>$family->slug])}}">{{$family->name}}</a>
            </div>
          </div>
          <div class="col-sm-4 col-s-4 listed-container text-right">

            <span class="listed"><a class="link-color" href="{{action('Fontend\ProductController@family',['brandSlug'=>$brand->slug,'familySlug'=>$family->slug])}}"> all {{$family->countProduct->count()}} </a></span>
          </div>

        </div>
        <div class="oneline-block-container row">
          <div class="list-product main row">
            @foreach($family->threeProducts as $product)
                <div class="col-sm-4">
                  <div class="box-product">
                    <a href="{{action('Fontend\ProductController@detail',['productSlug'=>$product->slug,'brandSlug'=>$product->brand->slug,'familySlug'=>$product->family->slug])}}"><img src="{{$product->getImage(true)}}"></a>
                    <div class="text-box-product" style="    text-overflow: ellipsis;
                         white-space: nowrap;
                         overflow: hidden;">
                      <a href="{{action('Fontend\ProductController@detail',['productSlug'=>$product->slug,'brandSlug'=>$product->brand->slug,'familySlug'=>$product->family->slug])}}">
                        <h4>{{$product->reference}}</h4>
                        {{$product->name}}
                      </a>
                    </div>
                  </div>
                </div>
            @endforeach

          </div>
          <div class='text-right'>

          </div>
        </div>
      </div>
    </div>
    @endforeach
  </div>
</div>
@stop
@section('view.scripts')
<script>
    $(document).ready(function () {
      setTimeout(function () {
        $('.grid').masonry({

          itemSelector: '.grid-item',

          columnWidth: '.grid-sizer',
          percentPosition: true
        });
      }, 300);
    });
</script>
@stop