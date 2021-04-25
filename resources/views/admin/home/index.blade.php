   @extends('admin.admin_master')

   @section('admin')

    <div class="py-12">

<div class="container">
    <div class="row">

        <h2>About  </h2>  
        <a href="{{ route('add.about')}}" ><button class="btn btn-info">Add About</button></a>

        <div class="col-md-12">
            <div class="card">

            @if(session('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>{{ session('success') }}</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>

            @endif


    <div class="card-header">All About Data

    </div>


        <table class="table ">
            <thead>
              <tr>
                <th scope="col" width="5%">SL No</th>
                <th scope="col" width="15%">Home Title</th>
                <th scope="col" width="20%">Short Description</th>
                <th scope="col" width="10%">Long Description</th>
                <th scope="col" width="20%">Action</th>
              </tr>
            </thead>
            <tbody>
              @php ($i=1)                  
              @foreach($homeabout as $about)
              <tr>
                <th scope="row">{{ $i++ }}</th>
                <td>{{$about->title}}</td>
                <td>{{$about->short_dis}}</td>
                <td>{{$about->long_dis}}</td>
               


                <td>
                <a href="{{url('about/edit/'.$about->id)}}" class="btn btn-info">Edit</a>
                <a href="{{url('about/delete/'.$about->id)}}" class="btn btn-danger" onclick="return confirm('Are you Sure to delete??')">Delete</a>
                </td>
              </tr>
              @endforeach
            </tbody>
        </table>


        </div>

    </div>



</div>
</div>
</div>

















@endsection
