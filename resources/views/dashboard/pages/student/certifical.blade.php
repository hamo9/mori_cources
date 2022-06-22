@extends('dashboard.layouts.maintemplate')

@section('title', 'certifical')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">certifical</h1>
        </div>
    </div>

    <div class="container">



        <div class="card card-body shadow text-right">
            @if ($result)
            <div dir="rtl" class="certifical text-right">
                <div class="row">
                    <div class="col-4 text-center">
                        <div class="cer_text_one">
                            <div>مركز التكوين</div>
                            <div>والتدريب المهني</div>
                            <div>في تجكجه</div>
                        </div>
                    </div>
                    <div class="col-4 text-center">
                        <img class="cir_img" src="hamada/logo.png" class="img-fluid" alt="">
                    </div>
                    <div class="col-4 text-center">
                        <div class="cer_text_one">
                            <div>Centre de Formation</div>
                            <div>Et de Perfectionnement</div>
                            <div>Professionnels</div>
                            <div>De Tidjikja</div>
                        </div>
                    </div>
                </div>

                <h2 class="text-center mt-3">شهاده</h2>
                <h3 class="text-center pb-4">Deplome</h3>

                <p class="lead text-center mt-4 ">
                    تسلم هذه الشهاده للسيد/
                    Ce Diplôme est remis à M
                    <b class='pr-5 pl-5'>{{ $Student->student_name }} </b>


                    <br><br>
                     بعد اكماله تكوين في مجال
                     Apres avoir suivi une formation dans le domaine de
                     <b class='pr-5 pl-5'>{{ $Student->department->department_name }} </b>

                </p>
                <p class="lead text-center mt-2">
                    بتقدير
                    Mention
                    <b class='pr-5 pl-5'>{{ $result->grade }}  </b>
                </p>

                <div class="row pt-4">
                    <div class="col-8">
                        <p class="lead">توقيع المدير /</p>
                    </div>
                    <div class="col-3">
                        <p class="lead">التاريخ /</p>
                    </div>
                    <div class="col-1">
                        <p class="lead">date</p>
                    </div>
                </div>
            </div>
            @else
            <div class="alert alert-danger text-center">
                <h3>this student dont have a grade yet</h3>
            </div>

            @endif

        </div>
    </div>



@endsection


