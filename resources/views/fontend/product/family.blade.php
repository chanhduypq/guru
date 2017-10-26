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
      <h2>{{$brand->name}} {{$family->name}}</h2>
    </div>
    <div class="col-sm-6 text-right">
      <img src="{{$brand->getLogo()}}">
    </div>
  </div>
  @endif


  <div class="row short-brand">
    <div class="col-sm-6">
      @if(isset($brand))
      <h4>{{$products->toArray()['total']}} <span>{{$brand->name}} {{$family->name}}</span> watches in database</h4>
      @else 
      <h4>{{$products->toArray()['total']}}  watches in database</h4>
      @endif
    </div>
    <div class="col-sm-6">
      {{ Form::open(['method'=>'get'])}}
      
        <div class="input-group">
          <!--nput type="text" placeholder="Search"  class="form-control" name="search">
          <span class="input-group-btn">
             <a href="products.html" class="btn btn-default search_btn">Search</a>
          </span-->
          {{Form::text('searchKey', isset($input['searchKey']) ? $input['searchKey']:'',['placeholder'=>'Search in '.$brand->name.' - '.$family->name,'id'=>'searchKey','class'=>'form-control '])}}


          <span class="input-group-btn">
            <button type="submit" class="btn btn-success" onclick="">Search KronoDatabase</button>
          </span>   
        </div>

          {{ Form::close() }}
    </div>
  </div>

  <ul class="list-product row">
     @foreach($products as $product)
    <li>
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
    </li>
      @endforeach

  </ul>
  <div class='text-right'>
@if (!empty($input['searchKey']))
  {{ $products->appends(['searchKey'=>$input['searchKey']])->links() }}
@else
  {{ $products->links() }}
@endif
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