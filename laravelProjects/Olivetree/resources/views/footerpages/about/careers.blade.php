@extends('layouts.app')

@section('content')
<div class="containerCareers">
    <h1>Careers</h1>
    <p>
        Join our team and be part of an exciting and innovative company. Explore
        the available career opportunities below.
    </p>
    <div class="job-listing">
        <h2>Software Engineer</h2>
        <p><strong>Location:</strong> San Francisco, CA</p>
        <p><strong>Type:</strong> Full-time</p>
        <p>
            <strong>Description:</strong> We are seeking a talented software
            engineer to join our development team...
        </p>
    </div>
    <hr />
    <div class="job-listing">
        <h2>Marketing Specialist</h2>
        <p><strong>Location:</strong> New York, NY</p>
        <p><strong>Type:</strong> Part-time</p>
        <p>
            <strong>Description:</strong> Join our marketing team and help drive
            our brand forward...
        </p>
    </div>
</div>
@endsection

<style scoped>
    .containerCareers {
        max-width: 800px;
        margin: 20px auto;
    }

    .job-listing {
        margin-bottom: 30px;
    }

    .job-listing h2 {
        margin-bottom: 10px;
    }

    .job-listing p {
        margin-bottom: 8px;
    }
</style>