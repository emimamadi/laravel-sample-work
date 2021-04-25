   @extends('admin.admin_master')

   @section('admin')

    <div class="py-12">

<div class="container">
    <div class="row">

        <h2>Contact Page  </h2>  
        <a href="{{ route('add.contact')}}" ><button class="btn btn-info">Add Contact</button></a>

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


    <div class="card-header">All Contact Data

    </div>


        <table class="table ">
            <thead>
              <tr>
                <th scope="col" width="5%">SL No</th>
                <th scope="col" width="15%">Contact Address</th>
                <th scope="col" width="25%">Contact Email</th>
                <th scope="col" width="15%">Contact Phone</th>
                <th scope="col" width="15%">Action</th>
              </tr>
            </thead>
            <tbody>
              @php ($i=1)                  
              @foreach($contacts as $conn)
              <tr>
                <th scope="row">{{ $i++ }}</th>
                <td>{{$conn->address}}</td>
                <td>{{$conn->email}}</td>
                <td>{{$conn->phone}}</td>
               


                <td>
                <a href="{{url('contact/edit/'.$conn->id)}}" class="btn btn-info">Edit</a>
                <a href="{{url('contact/delete/'.$conn->id)}}" class="btn btn-danger" onclick="return confirm('Are you Sure to delete??')">Delete</a>
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
