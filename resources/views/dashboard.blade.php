<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
          
          Hi... <b>{{Auth::user()->name}} </b> 
        
          <b style="float: right">Total Users <span class="badge badge-danger">{{count($users)}}</span></b>       
          
          {{-- {{ __('Dashboard') }} --}}
        </h2>
    </x-slot>

    <div class="py-12">

<div class="container">
    <div class="row">

        <table class="table ">
            <thead>
              <tr>
                <th scope="col">SL No</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Date</th>
              </tr>
            </thead>
            <tbody>

              @foreach($users as $user)
              <tr>
                <th scope="row">{{$user->id }}</th>
                <td>{{$user->name }}</td>
                <td>{{$user->email }}</td>
                <td>{{$user->created_at->diffForHumans() }}</td>
              </tr>
              @endforeach
            </tbody>
          </table>

    </div>

</div>


        {{-- <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <x-jet-welcome />
            </div>
        </div> --}}
    </div>
</x-app-layout>
