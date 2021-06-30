@extends('admin.admin_master')

@section('admin')

<div class="py-12">

<div class="container">
    <div class="row">

    <div class="col-md-8">
        <div class="card">
            <div class="card-header">Edit Slider </div>
            <div class="card-body">

@if(session('success'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
<strong>{{ session('success') }}</strong>
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>

@endif


            <form action="{{ url('slider/update/'.$sliders->id) }}" method="POST" enctype="multipart/form-data">

                @csrf

            <input type="hidden" name="old_image" value="{{$sliders->image}}">

                <div class="form-group">
                  <label for="exampleInputEmail1">Update Slider Name</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="title"
                  value="{{$sliders->title}}">

                  @error('title')
                  <span class="text-danger">{{$message}}</span>
                  @enderror

                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Update Slider Description</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="description"
                  value="{{$sliders->description}}">

                  @error('description')
                  <span class="text-danger">{{$message}}</span>
                  @enderror

                </div>


                <div class="form-group">
                  <label for="exampleInputEmail1">Update Slider Image</label>
                  <input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="image"
                  value="{{$sliders->image}}">

                  @error('image')
                  <span class="text-danger">{{$message}}</span>
                  @enderror

                </div>

                 <div class="form-group">
                 <img src="{{asset($sliders->image)}}" style="width:400px ; height=200px">
                 </div>

                <button type="submit" class="btn btn-primary">Update Slider</button>
              </form>
            </div>

    </div>

</div>

    </div>

</div>


        {{-- <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <x-jet-welcome />
            </div>
        </div> --}}
    </div>

@endsection

