@extends('dashboard.layouts.maintemplate')

@section('title', 'all Students')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">all Students</h1>
        </div>
    </div>

    <div class="container">
        <a class="btn btn-success m-3" href="{{ route('file-export') }}">Export data</a>
        <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">#</th>
                <th scope="col">name</th>
                <th scope="col">email</th>
                <th scope="col">contact no</th>
                <th scope="col">address</th>
                <th scope="col">year</th>
                <th scope="col">department</th>
                <th scope="col">certifical</th>

              </tr>
            </thead>
            <tbody>

                @foreach ($Student as $item )
                <tr>
                    <th scope="row">{{ $item->id }}</th>
                    <td>{{ $item->student_name }}</td>
                    <td>{{ $item->email }}</td>
                    <td>{{ $item->contact_no }}</td>
                    <td>{{ $item->address }}</td>
                    <td>{{ $item->year }}</td>
                    <td>{{ $item->department->department_name }}</td>
                    <td> <a href="{{ url('student/certifical', $item->id) }}" class="btn btn-success">get certifical</a> </td>

                  </tr>
                @endforeach


            </tbody>
          </table>



    </div>



@endsection

