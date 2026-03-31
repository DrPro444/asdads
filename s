<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <title>CIA INTERNAL RECORD | AHMED SHOW</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Courier+Prime:wght@400;700&display=swap');

        :root { 
            --bg: #050505;
            --folder-bg: #0d0d0d;
            --text: #e0e0e0;
            --silver: #a0a0a0;
            --danger: #ff0000;
            --glow: #00ff41;
        }

        body { 
            background-color: var(--bg); 
            color: var(--text);
            font-family: 'Courier Prime', monospace;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 40px 20px;
            margin: 0;
            min-height: 100vh;
        }

        /* زر الدخول في الزاوية العلوية */
        .top-nav {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 100;
        }

        .btn-auth {
            background: transparent;
            border: 1px solid var(--glow);
            color: var(--glow);
            padding: 8px 20px;
            cursor: pointer;
            font-family: 'Courier Prime', monospace;
            font-weight: bold;
            transition: 0.3s;
        }

        .btn-auth:hover { background: rgba(0, 255, 65, 0.1); box-shadow: 0 0 10px var(--glow); }

        /* حاوية الملف الأساسي */
        .folder {
            width: 850px;
            background: var(--folder-bg);
            border: 1px solid #222;
            padding: 50px;
            position: relative;
            box-shadow: 0 0 30px rgba(0,0,0,0.5);
            margin-top: 20px;
        }

        .header {
            display: flex;
            justify-content: space-between;
            border-bottom: 1px solid #333;
            padding-bottom: 20px;
            margin-bottom: 30px;
        }

        .cia-logo { width: 70px; filter: grayscale(1) contrast(1.2); opacity: 0.7; }
        .stamp-red {
            border: 3px solid var(--danger);
            color: var(--danger);
            padding: 8px 15px;
            font-weight: bold;
            transform: rotate(-3deg);
            font-size: 18px;
        }

        .metadata { font-size: 13px; color: #666; margin-bottom: 40px; }
        .metadata b { color: var(--silver); }

        h1 { font-size: 22px; text-align: center; border: 1px solid #333; padding: 10px; letter-spacing: 2px; }

        .redacted {
            background: #000;
            color: #000;
            cursor: pointer;
            padding: 0 5px;
            transition: 0.3s;
            border-radius: 2px;
        }
        .redacted:hover { background: #1a1a1a; }
        .revealed { background: transparent !important; color: var(--glow) !important; }

        .tech-box { background: #000; border: 1px solid #222; padding: 20px; margin: 20px 0; }
        .row { display: flex; justify-content: space-between; margin-bottom: 10px; font-size: 14px; border-bottom: 1px solid #111; }
        .val { color: var(--glow); font-weight: bold; }

        /* نافذة التسجيل (Modal) */
        #login-modal {
            display: none;
            position: fixed;
            top: 0; left: 0; width: 100%; height: 100%;
            background: rgba(0,0,0,0.95);
            z-index: 1000;
            justify-content: center;
            align-items: center;
        }

        .login-box {
            background: var(--folder-bg);
            border: 1px solid var(--glow);
            padding: 40px;
            width: 350px;
            text-align: center;
        }

        input {
            width: 100%;
            background: #000;
            border: 1px solid #333;
            padding: 10px;
            color: var(--glow);
            margin: 10px 0;
            font-family: 'Courier Prime', monospace;
            box-sizing: border-box;
        }

        /* الداشبورد (مخفي) */
        #dashboard-content { display: none; width: 900px; }

        .stats-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; margin-bottom: 30px; }
        .stat-card { border: 1px solid #222; padding: 15px; background: #000; text-align: center; }
        .stat-card p { font-size: 24px; color: var(--glow); margin: 5px 0; }
    </style>
</head>
<body>

    <div class="top-nav" id="nav-area">
        <button class="btn-auth" onclick="openLogin()">[ ACCESS LOGIN ]</button>
    </div>

    <div id="public-file" class="folder">
        <div class="header">
            <img src="https://upload.wikimedia.org/wikipedia/commons/2/22/Seal_of_the_Central_Intelligence_Agency.svg" class="cia-logo">
            <div class="stamp-red">TOP SECRET // NOFORN</div>
        </div>

        <div class="metadata">
            CASE: <b>#AS-2026-RIYADH</b> | STATUS: <b>CLASSIFIED</b><br>
            OFFICE: <b>CYBER OPERATIONS DIVISION</b>
        </div>

        <h1>REPORT: VOICE RECOVERY & BREACH ANALYSIS</h1>
        <p>تم تحديد هجوم <b>Session Hijacking</b> نشط استهدف الحسابات الشخصية. اضغط على الخانات السوداء لفك التشفير:</p>

        <div class="tech-box">
            <div class="row"><span>الموقع المستهدف:</span> <span class="redacted" onclick="this.classList.add('revealed')">المملكة العربية السعودية - الرياض</span></div>
            <div class="row"><span>طريقة الاختراق:</span> <span class="redacted" onclick="this.classList.add('revealed')">Token Theft (Infostealer)</span></div>
            <div class="row"><span>المنصات:</span> <span class="redacted" onclick="this.classList.add('revealed')">Snapchat, YouTube Main</span></div>
        </div>

        <h3>1.0 تحليل تمويه الصوت (Obfuscation)</h3>
        <div class="tech-box">
            <div class="row"><span>Intellipan Mode:</span> <span class="val">High Frequency Boost</span></div>
            <div class="row"><span>Pitch Deviation:</span> <span class="val">-3.0 Semitones</span></div>
            <div class="row"><span>Formant Grouping:</span> <span class="val">-3.0 Range</span></div>
        </div>

        <h3>2.0 بروتوكول الاستعادة (De-masking)</h3>
        <p>الإعدادات اللازمة لعزل "القناع الرقمي" وإظهار الصوت الأصلي:</p>
        <div class="tech-box" style="border-left: 3px solid var(--glow);">
            <div class="row"><span>Threshold:</span> <span class="val">-20.0 dB</span></div>
            <div class="row"><span>Ratio:</span> <span class="val">3.0:1</span></div>
            <div class="row"><span>Gate Threshold:</span> <span class="val">-32.0 dB</span></div>
            <div class="row"><span>Release Time:</span> <span class="val">460 ms</span></div>
        </div>

        <p style="font-size: 13px; margin-top: 30px;">
            <b>ملاحظة:</b> تم رصد بقايا ملفات <span class="redacted" onclick="this.classList.add('revealed')">LUA Scripts مشبوهة</span> في الـ Cache المحلي. التحقيق مستمر.
        </p>
    </div>

    <div id="dashboard-content" class="folder">
        <div class="header">
            <div style="color: var(--glow); font-weight: bold;">ADMIN CONTROL PANEL v3.0</div>
            <button class="btn-auth" onclick="location.reload()" style="font-size: 10px;">LOGOUT SYSTEM</button>
        </div>
        
        <div class="stats-grid">
            <div class="stat-card"><h4>FIREWALL STATUS</h4><p>ACTIVE</p></div>
            <div class="stat-card"><h4>IP TRACING</h4><p>104.22.x.x</p></div>
            <div class="stat-card"><h4>THREAT LEVEL</h4><p style="color:var(--danger)">HIGH</p></div>
        </div>

        <h3>مركز التحكم في الملفات</h3>
        <div class="tech-box">
            <div class="row"><span>Admin User:</span> <span class="val">Ahmed_Show</span></div>
            <div class="row"><span>Session Key:</span> <span class="val">X-7721-B-ALPHA</span></div>
            <div class="row"><span>الأوامر المتاحة:</span> <span class="val">Flush_Cache, Decompile_Lua, Recovery_Audio</span></div>
        </div>
    </div>

    <div id="login-modal">
        <div class="login-box">
            <h3 style="color: var(--glow); letter-spacing: 2px;">AUTHORIZATION</h3>
            <input type="text" id="user" placeholder="AGENT NAME">
            <input type="password" id="pass" placeholder="SECURITY CODE">
            <button class="btn-auth" style="width: 100%; margin-top: 15px;" onclick="checkLogin()">VERIFY KEY</button>
            <button class="btn-auth" style="width: 100%; margin-top: 10px; border: none; font-size: 10px; color: #666;" onclick="closeLogin()">[ ABORT ]</button>
        </div>
    </div>

    <script>
        function openLogin() { document.getElementById('login-modal').style.display = 'flex'; }
        function closeLogin() { document.getElementById('login-modal').style.display = 'none'; }

        function checkLogin() {
            const u = document.getElementById('user').value;
            const p = document.getElementById('pass').value;

            // اسم المستخدم: ahmed | الباسورد: 1234
            if(u === "ahmed" && p === "1234") {
                document.getElementById('login-modal').style.display = 'none';
                document.getElementById('public-file').style.display = 'none';
                document.getElementById('nav-area').style.display = 'none';
                document.getElementById('dashboard-content').style.display = 'block';
            } else {
                alert("ACCESS DENIED: UNAUTHORIZED AGENT");
            }
        }
    </script>
</body>
</html>
