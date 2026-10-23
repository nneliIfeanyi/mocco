<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="theme-color" content="#123b35">
    <title>St Stephen School, Otuoke | Administrative Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        :root {
            --green: #164b40;
            --green-dark: #10372f;
            --gold: #d5a84c;
            --ink: #1c302d;
            --muted: #6e7f7b;
        }

        * {
            box-sizing: border-box;
        }

        body {
            min-height: 100vh;
            margin: 0;
            display: flex;
            flex-direction: column;
            color: var(--ink);
            background:
                radial-gradient(ellipse at 50% 0%, rgba(213, 168, 76, .12), transparent 42%),
                #f7f9f7;
            font-family: 'DM Sans', sans-serif;
        }

        .site-header {
            padding: 25px 0;
        }

        .school-mark {
            display: inline-flex;
            width: 48px;
            height: 48px;
            align-items: center;
            justify-content: center;
            border-radius: 15px;
            color: #fff;
            background: var(--green);
            font-family: 'Manrope', sans-serif;
            font-size: .95rem;
            font-weight: 800;
            letter-spacing: -.04em;
        }

        .header-name {
            color: var(--green-dark);
            font-family: 'Manrope', sans-serif;
            font-size: .9rem;
            font-weight: 800;
            letter-spacing: .015em;
            line-height: 1.3;
        }

        .header-location {
            color: var(--muted);
            font-size: .75rem;
        }

        main {
            flex: 1;
            display: flex;
            align-items: center;
            padding: 48px 0 72px;
        }

        .landing-content {
            max-width: 1010px;
        }

        .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 9px;
            margin-bottom: 20px;
            color: var(--green);
            font-size: .76rem;
            font-weight: 700;
            letter-spacing: .13em;
            text-transform: uppercase;
        }

        .eyebrow::before,
        .eyebrow::after {
            width: 22px;
            height: 1px;
            background: var(--gold);
            content: "";
        }

        h1,
        h2,
        h3 {
            font-family: 'Manrope', sans-serif;
        }

        .school-title {
            max-width: 850px;
            margin: 0 auto;
            color: var(--green-dark);
            font-size: clamp(2.1rem, 5.4vw, 4rem);
            font-weight: 800;
            letter-spacing: -.055em;
            line-height: 1.12;
        }

        .school-title span {
            color: #bd8b2f;
        }

        .system-title {
            margin: 20px 0 12px;
            color: var(--green);
            font-size: clamp(.78rem, 1.7vw, .95rem);
            font-weight: 700;
            letter-spacing: .19em;
        }

        .intro {
            margin: 0 auto;
            color: var(--muted);
            font-size: 1rem;
            line-height: 1.7;
        }

        .login-grid {
            margin-top: 48px;
        }

        .login-card {
            display: flex;
            min-height: 220px;
            flex-direction: column;
            align-items: flex-start;
            padding: 27px;
            border: 1px solid rgba(22, 75, 64, .08);
            border-radius: 22px;
            color: inherit;
            background: #fff;
            box-shadow: 0 12px 34px rgba(28, 48, 45, .07);
            text-decoration: none;
            transition: transform .2s ease, box-shadow .2s ease, border-color .2s ease;
        }

        .login-card:hover,
        .login-card:focus-visible {
            transform: translateY(-5px);
            border-color: rgba(22, 75, 64, .2);
            box-shadow: 0 18px 40px rgba(28, 48, 45, .13);
        }

        .login-card:focus-visible {
            outline: 3px solid rgba(213, 168, 76, .65);
            outline-offset: 3px;
        }

        .card-icon {
            display: flex;
            width: 54px;
            height: 54px;
            align-items: center;
            justify-content: center;
            border-radius: 17px;
            color: var(--green);
            background: #edf4f0;
            font-size: 1.45rem;
        }

        .login-card:nth-child(2) .card-icon {
            color: #9a7020;
            background: #fbf4e5;
        }

        .login-card:nth-child(3) .card-icon {
            color: #4b648a;
            background: #eef2f8;
        }

        .card-title {
            margin: 22px 0 5px;
            color: var(--green-dark);
            font-size: 1.12rem;
            font-weight: 800;
        }

        .card-description {
            margin: 0;
            color: var(--muted);
            font-size: .88rem;
        }

        .card-arrow {
            margin-top: auto;
            padding-top: 19px;
            color: var(--green);
            font-size: 1.1rem;
        }

        footer {
            padding: 22px 0;
            border-top: 1px solid rgba(22, 75, 64, .09);
            color: var(--muted);
            font-size: .8rem;
        }

        .footer-brand {
            color: var(--green);
            font-family: 'Manrope', sans-serif;
            font-weight: 800;
            letter-spacing: .05em;
        }

        @media (max-width: 575.98px) {
            .site-header {
                padding: 18px 0;
            }

            main {
                padding: 48px 0;
            }

            .login-grid {
                margin-top: 34px;
            }

            .login-card {
                min-height: 185px;
            }
        }

        @media (prefers-reduced-motion: reduce) {
            *,
            *::before,
            *::after {
                scroll-behavior: auto !important;
                transition-duration: .01ms !important;
            }
        }
    </style>
</head>

<body>
    <header class="site-header">
        <div class="container d-flex align-items-center gap-3">
            <div class="school-mark" aria-hidden="true">SS</div>
            <div>
                <div class="header-name">ST STEPHEN SCHOOL</div>
                <div class="header-location"><i class="bi bi-geo-alt me-1" aria-hidden="true"></i>Otuoke</div>
            </div>
        </div>
    </header>

    <main>
        <div class="container landing-content text-center">
            <div class="eyebrow">Welcome to our school portal</div>
            <h1 class="school-title">ST STEPHEN NURSERY, PRIMARY AND SECONDARY SCHOOL <span>OTUOKE</span></h1>
            <h2 class="system-title">ADMINISTRATIVE MANAGEMENT SYSTEM</h2>
            <p class="intro">Please select your account type to continue.</p>

            <div class="row g-4 login-grid text-start">
                <div class="col-md-4">
                    <a class="login-card" href="student/login.php">
                        <span class="card-icon"><i class="bi bi-mortarboard" aria-hidden="true"></i></span>
                        <span class="card-title">Student Login</span>
                        <span class="card-description">Access your student account and school information.</span>
                        <span class="card-arrow" aria-hidden="true"><i class="bi bi-arrow-right"></i></span>
                    </a>
                </div>
                <div class="col-md-4">
                    <a class="login-card" href="teacher/login.php">
                        <span class="card-icon"><i class="bi bi-person-workspace" aria-hidden="true"></i></span>
                        <span class="card-title">Teacher Login</span>
                        <span class="card-description">Open your teaching and classroom management tools.</span>
                        <span class="card-arrow" aria-hidden="true"><i class="bi bi-arrow-right"></i></span>
                    </a>
                </div>
                <div class="col-md-4">
                    <a class="login-card" href="admin/login.php">
                        <span class="card-icon"><i class="bi bi-shield-lock" aria-hidden="true"></i></span>
                        <span class="card-title">Admin Login</span>
                        <span class="card-description">Manage school records and administrative services.</span>
                        <span class="card-arrow" aria-hidden="true"><i class="bi bi-arrow-right"></i></span>
                    </a>
                </div>
            </div>
        </div>
    </main>

    <footer>
        <div class="container d-flex flex-column flex-sm-row justify-content-between align-items-center gap-2">
            <span class="footer-brand">SSNPS · OTUOKE</span>
            <span>&copy; <?php echo date('Y'); ?> St Stephen School. All rights reserved.</span>
        </div>
    </footer>
</body>

</html>
