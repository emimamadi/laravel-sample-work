@extends('admin.admin_master')

@section('admin')

<div class="py-12">

<div class="container">
    <div class="row">

    <div class="col-md-8">
        <div class="card">
            <div class="card-header">Edit Contact </div>
            <div class="card-body">

@if(session('success'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
<strong>{{ session('success') }}</strong>
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>

@endif


<form action="{{ url('contact/update/'.$contacts->id) }}" method="POST" enctype="multipart/form-data">

@csrf


<div class="form-group">
    <label for="exampleInputEmail1">Update Address Contact</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="address"
    value="{{$contacts->address}}">

    @error('address')
    <span class="text-danger">{{$message}}</span>
    @enderror

</div>

<div class="form-group">
    <label for="exampleInputEmail1">Update Email Contact</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email"
    value="{{$contacts->email}}">

    @error('email')
    <span class="text-danger">{{$message}}</span>
    @enderror

</div>

<div class="form-group">
    <label for="exampleInputEmail1">Update Phone Contact</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="phone"
    value="{{$contacts->phone}}">

    @error('phone')
    <span class="text-danger">{{$message}}</span>
    @enderror

</div>


<button type="submit" class="btn btn-primary">Update Contact</button>
</form>
</div>

</div>

</div>

    </div>

</div>


    
</div>

@endsection

