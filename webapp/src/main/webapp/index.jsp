
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | Virtual TechBox</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            min-height: 100vh;
            font-family: 'Segoe UI', Arial, sans-serif;
            color: #f8fafc;
            background:
                radial-gradient(circle at 15% 20%, #243b75 0, transparent 35%),
                radial-gradient(circle at 85% 80%, #512b81 0, transparent 35%),
                #080d1b;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 35px 18px;
        }

        .page {
            width: 100%;
            max-width: 1000px;
        }

        .brand {
            text-align: center;
            margin-bottom: 28px;
        }

        .brand-icon {
            display: inline-flex;
            width: 58px;
            height: 58px;
            align-items: center;
            justify-content: center;
            border-radius: 18px;
            font-size: 28px;
            background: linear-gradient(135deg, #6366f1, #a855f7);
            box-shadow: 0 8px 35px #6366f155;
            margin-bottom: 12px;
        }

        .brand h1 {
            font-size: clamp(26px, 4vw, 38px);
            letter-spacing: -1px;
        }

        .brand h1 span {
            color: #a5b4fc;
        }

        .brand p {
            color: #a8b3cc;
            margin-top: 9px;
            font-size: 15px;
        }

        .layout {
            display: grid;
            grid-template-columns: 0.9fr 1.1fr;
            background: rgba(17, 25, 48, 0.85);
            border: 1px solid rgba(148, 163, 184, 0.2);
            border-radius: 25px;
            overflow: hidden;
            box-shadow: 0 25px 80px #0006;
            backdrop-filter: blur(18px);
        }

        .welcome {
            padding: 45px 32px;
            background: linear-gradient(155deg, #3730a3, #312e81 55%, #581c87);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            gap: 35px;
        }

        .tag {
            display: inline-block;
            width: fit-content;
            padding: 8px 12px;
            border-radius: 30px;
            background: #ffffff18;
            border: 1px solid #ffffff2c;
            font-size: 12px;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        .welcome h2 {
            font-size: 31px;
            line-height: 1.25;
            margin: 20px 0 14px;
        }

        .welcome p {
            color: #e0e7ff;
            line-height: 1.8;
            font-size: 14px;
        }

        .features {
            display: grid;
            gap: 17px;
        }

        .feature {
            display: flex;
            gap: 12px;
            align-items: center;
            font-size: 14px;
            color: #f1f5f9;
        }

        .feature-icon {
            width: 35px;
            height: 35px;
            display: grid;
            place-items: center;
            border-radius: 10px;
            background: #ffffff18;
            flex-shrink: 0;
        }

        .welcome-footer {
            font-size: 12px;
            color: #c7d2fe;
        }

        .form-panel {
            padding: 42px 36px;
        }

        .form-panel h2 {
            font-size: 25px;
            margin-bottom: 8px;
        }

        .subtitle {
            color: #9caac5;
            font-size: 14px;
            line-height: 1.6;
            margin-bottom: 28px;
        }

        .field {
            margin-bottom: 18px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #e2e8f0;
            font-size: 13px;
            font-weight: 600;
        }

        input {
            width: 100%;
            padding: 13px 14px;
            background: #0b1224;
            color: #ffffff;
            border: 1px solid #33415e;
            border-radius: 10px;
            outline: none;
            font-size: 14px;
            transition: border-color 0.2s, box-shadow 0.2s;
        }

        input::placeholder {
            color: #71809d;
        }

        input:focus {
            border-color: #818cf8;
            box-shadow: 0 0 0 3px #6366f126;
        }

        .terms {
            display: flex;
            gap: 9px;
            align-items: flex-start;
            color: #9caac5;
            font-size: 12px;
            line-height: 1.6;
            margin: 8px 0 22px;
        }

        .terms input {
            width: auto;
            margin-top: 3px;
            accent-color: #818cf8;
        }

        .terms a,
        .signin a {
            color: #a5b4fc;
            text-decoration: none;
        }

        .terms a:hover,
        .signin a:hover {
            text-decoration: underline;
        }

        .registerbtn {
            width: 100%;
            border: none;
            border-radius: 11px;
            padding: 15px;
            color: white;
            background: linear-gradient(100deg, #6366f1, #9333ea);
            font-size: 15px;
            font-weight: 700;
            cursor: pointer;
            box-shadow: 0 8px 25px #6366f133;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .registerbtn:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 30px #6366f155;
        }

        .signin {
            text-align: center;
            color: #9caac5;
            font-size: 13px;
            margin-top: 23px;
        }

        .success {
            text-align: center;
            padding: 35px 10px 0;
        }

        .success-icon {
            font-size: 29px;
            margin-bottom: 12px;
        }

        .success h2 {
            font-size: 23px;
            margin-bottom: 8px;
        }

        .success p {
            color: #a5b4fc;
            font-size: 14px;
            line-height: 1.8;
        }

        .footer {
            text-align: center;
            color: #7886a3;
            font-size: 12px;
            margin-top: 24px;
        }

        @media (max-width: 700px) {
            .layout {
                grid-template-columns: 1fr;
            }

            .welcome {
                padding: 30px 25px;
                gap: 25px;
            }

            .welcome h2 {
                font-size: 26px;
            }

            .form-panel {
                padding: 30px 23px;
            }
        }
    </style>
</head>

<body>
<div class="page">

    <header class="brand">
        <div class="brand-icon">⌘</div>
        <h1>Virtual <span>TechBox</span></h1>
        <p>Learn today. Build tomorrow. Automate everything.</p>
    </header>

    <main class="layout">

        <section class="welcome">
            <div>
                <span class="tag">🚀 Your learning journey starts here</span>
                <h2>Build your future in DevOps.</h2>
                <p>
                    Join our learning community and explore CI/CD,
                    cloud computing, containers, Kubernetes and more.
                    Turn your curiosity into real-world skills.
                </p>
            </div>

            <div class="features">
                <div class="feature">
                    <span class="feature-icon">☁️</span>
                    <span>Cloud & AWS fundamentals</span>
                </div>
                <div class="feature">
                    <span class="feature-icon">⚙️</span>
                    <span>Jenkins & CI/CD pipelines</span>
                </div>
                <div class="feature">
                    <span class="feature-icon">🐳</span>
                    <span>Docker & Kubernetes</span>
                </div>
                <div class="feature">
                    <span class="feature-icon">📈</span>
                    <span>Monitoring & automation</span>
                </div>
            </div>

            <div class="welcome-footer">
                Learn at your pace. Grow with every step.
            </div>
        </section>

        <section class="form-panel">
            <h2>Create your account ✨</h2>
            <p class="subtitle">
                Register for DevOps Learning at the Virtual TechBox
                YouTube Channel.
            </p>

            <form action="action_page.php" method="post"
                  onsubmit="return validatePasswords()">

                <div class="field">
                    <label for="Name">Full name</label>
                    <input type="text" id="Name" name="Name"
                           placeholder="Enter your full name" required>
                </div>

                <div class="field">
                    <label for="mobile">Mobile number</label>
                    <input type="tel" id="mobile" name="mobile"
                           placeholder="Enter your mobile number"
                           pattern="[0-9]{10}" maxlength="10" required>
                </div>

                <div class="field">
                    <label for="email">Email address</label>
                    <input type="email" id="email" name="email"
                           placeholder="you@example.com" required>
                </div>

                <div class="field">
                    <label for="psw">Password</label>
                    <input type="password" id="psw" name="psw"
                           placeholder="Create a password" minlength="8"
                           autocomplete="new-password" required>
                </div>

                <div class="field">
                    <label for="psw-repeat">Confirm password</label>
                    <input type="password" id="psw-repeat"
                           name="psw-repeat"
                           placeholder="Enter your password again"
                           minlength="8" autocomplete="new-password" required>
                </div>

                <label class="terms">
                    <input type="checkbox" name="terms" required>
                    <span>
                        I agree to the <a href="#">Terms & Privacy</a>
                        and understand the registration conditions.
                    </span>
                </label>

                <button type="submit" class="registerbtn">
                    Create Account →
                </button>
            </form>

            <div class="signin">
                Already have an account? <a href="#">Sign in</a>
            </div>

            <div class="success">
                <div class="success-icon">💜</div>
                <h2>Thank You!</h2>
                <p>Happy Learning.<br>See You Again!</p>
            </div>
        </section>

    </main>

    <footer class="footer">
        © 2026 Virtual TechBox · Keep learning, keep building.
    </footer>

</div>

<script>
    function validatePasswords() {
        const password = document.getElementById("psw").value;
        const confirmPassword =
            document.getElementById("psw-repeat").value;

        if (password !== confirmPassword) {
            alert("Passwords do not match. Please try again.");
            return false;
        }

        return true;
    }
</script>
</body>
</html>

