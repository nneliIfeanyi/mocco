<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Model Commercial College - Suleja</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }

        .hero {
            background: url('img/showcase.jpeg') center/cover no-repeat;
            height: 65vh;
            position: relative;
            color: white;
        }

        .hero::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.55);
        }

        .hero-content {
            position: relative;
            z-index: 2;
            top: 30%;
            transform: translateY(-50%);
        }

        .feature-box {
            padding: 25px;
            border-radius: 12px;
            background: #f8f9fa;
            transition: .3s;
        }

        .feature-box:hover {
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.1);
            transform: translateY(-5px);
        }

        footer {
            background: #00303F;
            color: white;
            padding: 35px 0;
        }
    </style>
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm fixed-top">
        <div class="container">
            <a class="navbar-brand fw-bold" href="#">Model Commercial College</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navMenu">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="#programs">Programs</a></li>
                    <li class="nav-item"><a class="nav-link" href="#gallery">Gallery</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="loginDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Login
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="loginDropdown">
                            <li><a class="dropdown-item" href="admin/login.php">Admin Login</a></li>
                            <li><a class="dropdown-item" href="teacher/login.php">Staff Login</a></li>
                            <li><a class="dropdown-item" href="student/login.php">Student Login</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero -->
    <section class="hero d-flex align-items-center">
        <div class="container hero-content text-center">
            <h1 class="display-4 fw-bold">A Place of Excellence & Learning</h1>
            <p class="lead">Building the next generation of leaders through quality education.</p>
            <a href="#contact" class="btn btn-lg btn-primary">Enroll Now</a>
        </div>
    </section>

    <!-- About -->
    <section id="about" class="py-5">
        <div class="container">
            <div class="row align-items-center">
                <!-- <div class="col-md-6">
                    <img src="https://images.unsplash.com/photo-1519455953755-af066f52f1ea" class="img-fluid rounded shadow">
                </div> -->
                <div class="col-md-6">
                    <h2 class="fw-bold">About Our School</h2>
                    <p>We are committed to providing students with academic excellence, moral discipline, and essential life skills needed for success.</p>
                    <ul>
                        <li>Qualified & experienced teachers</li>
                        <li>Standard learning facilities</li>
                        <li>Modern ICT & science laboratories</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Features -->
    <section class="py-5 bg-light">
        <div class="container">
            <h2 class="text-center fw-bold mb-4">Why Choose Us?</h2>

            <div class="row g-4">
                <div class="col-md-4">
                    <div class="feature-box text-center shadow-sm">
                        <h4>Qualified Teachers</h4>
                        <p class="opacity-75">Dedicated educators ensuring the best learning experience for your child.</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="feature-box text-center shadow-sm">
                        <h4>Modern Facilities</h4>
                        <p class="opacity-75">Smart classrooms, ICT labs, sports ground, and well-equipped libraries.</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="feature-box text-center shadow-sm">
                        <h4>Academic Excellence</h4>
                        <p class="opacity-75">Our students consistently excel in external exams and competitions.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Programs -->
    <section id="programs" class="py-5">
        <div class="container">
            <h2 class="fw-bold text-center mb-4">Our Academic Programs</h2>

            <div class="row g-4">
                <div class="col-md-4">
                    <div class="feature-box">
                        <h4>Junior Secondary (JSS1 - 3)</h4>
                        <p>Strong foundation in sciences, arts, and technology.</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="feature-box">
                        <h4>Senior Secondary (SS1 - 3)</h4>
                        <p>Science, Arts, and Commercial departments with practical training.</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="feature-box">
                        <h4>Extracurriculars</h4>
                        <p>Sports, music, debate, coding, and leadership clubs.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Gallery -->
    <section id="gallery" class="py-5 bg-light">
        <div class="container">
            <h2 class="fw-bold text-center mb-4">School Gallery</h2>

            <div class="row g-3">
                <div class="col-md-4"><img src="https://images.unsplash.com/photo-1588072432836-e10032774350" class="img-fluid rounded"></div>
                <div class="col-md-4"><img src="https://images.unsplash.com/photo-1509062522246-3755977927d7" class="img-fluid rounded"></div>
                <div class="col-md-4"><img src="https://images.unsplash.com/photo-1600880292089-90a7e086ee0c" class="img-fluid rounded"></div>
            </div>
        </div>
    </section>

    <!-- Contact -->
    <section id="contact" class="py-5">
        <div class="container text-center">
            <h2 class="fw-bold">Get in Touch</h2>
            <p>Admissions are open! Contact us for inquiries or school visits.</p>
            <!-- Contact Buttons -->
            <a href="tel:+1234567890" class="btn btn-primary me-3">Call Us</a>
            <a href="" class="btn btn-success">Whatsapp</a>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <p class="mb-0">&copy; 2025 Model Commercial College, Suleja.<br> All Rights Reserved.</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>