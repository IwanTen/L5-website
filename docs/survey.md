## Winter 2026 L5 Survey

Thanks for trying out L5!

This is a survey to get initial feedback to help decide next steps for the language library. All questions are optional. When finished, the *Send Survey* button will open up your email client for you to send along your responses. Alternatively, there is also a [Google Forms survey](https://docs.google.com/forms/d/e/1FAIpQLSdhZtiS8NXF4T5nlNtxgrupdH21WxnIspmHZf8uskTTjBB5bw/viewform?usp=header) as well as instructions for browsers without JavaScript.

<div class="form-container">

<style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        .form-container {
            margin: 0 auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        .form-group {
            margin-bottom: 25px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #555;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
            font-family: inherit;
        }

        .form-group input[type="text"]:focus,
        .form-group input[type="email"]:focus,
        .form-group textarea:focus {
            outline: none;
            border-color: #4CAF50;
        }

        .form-group textarea {
            resize: vertical;
            min-height: 100px;
        }

        .checkbox-group {
            margin-bottom: 10px;
        }

        .checkbox-group input[type="checkbox"] {
            margin-right: 8px;
        }

        .checkbox-group label {
            display: inline;
            font-weight: normal;
        }

        .other-input {
            margin-left: 28px;
            margin-top: 5px;
            width: calc(100% - 28px);
        }

        button {
            background: #4CAF50;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }

        button:hover {
            background: #45a049;
        }

        .note {
            margin-top: 15px;
            padding: 10px;
            background: #f0f0f0;
            border-radius: 4px;
            font-size: 14px;
            color: #666;
        }

        .noscript-warning {
            margin-bottom: 20px;
            padding: 15px;
            background: #fff3cd;
            border: 1px solid #ffc107;
            border-radius: 4px;
            color: #856404;
        }
</style>

<noscript>
<div class="noscript-warning">
<strong>Note:</strong> The form below requires JavaScript. Alternatively, please <a href="mailto:lee@leetusman.com?subject=L5%20Winter2026%20Survey%20Response">click here to open your email client</a> and answer the following questions:

<ol>
<li>Name</li>
<li>How have you tried out L5? (checked out website, checked out code/repo, installed and tried examples, wrote own programs, other)</li>
<li>What most interests you about L5? (new Processing-like library, Lua syntax, small size, speed, resiliency, other)</li>
<li>If you bounced off L5 or it doesn't appeal, why not?</li>
<li>What is L5 missing right now?</li>
<li>Any other feedback?</li>
<li>If you'd be potentially interested in contributing (code, bug reports, tutorials, etc), how would you like to contribute?</li>
<li>Your email address (to stay connected on all things L5)</li>
</ol>
</div>
</noscript>

<form id="surveyForm">
    <div class="form-group">
        <label for="name">1. Name</label>
        <input type="text" id="name" name="Name">
    </div>

    <div class="form-group">
        <label>2. How have you tried out L5?</label>
        <div class="checkbox-group">
            <input type="checkbox" id="tried1" name="tried" value="Checked out website">
            <label for="tried1">I checked out the website</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="tried2" name="tried" value="Checked out code/repo">
            <label for="tried2">I checked out the L5.lua code file and/or Github repo</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="tried3" name="tried" value="Installed and tried examples">
            <label for="tried3">I installed Love2d, downloaded L5 and tried out some examples</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="tried4" name="tried" value="Wrote own programs">
            <label for="tried4">I wrote my own program(s)</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="tried5" name="tried" value="Other">
            <label for="tried5">Other:</label>
        </div>
        <input type="text" class="other-input" id="triedOther" placeholder="Please specify...">
    </div>

    <div class="form-group">
        <label>3. What most interests you about L5?</label>
        <div class="checkbox-group">
            <input type="checkbox" id="interest1" name="interest" value="New Processing-like library">
            <label for="interest1">Any new Processing-like library interests me</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="interest2" name="interest" value="Lua syntax">
            <label for="interest2">Lua language's easy syntax</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="interest3" name="interest" value="Small size">
            <label for="interest3">L5's small size and ability to work on older or underpowered machines</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="interest4" name="interest" value="Speed">
            <label for="interest4">Speed!</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="interest5" name="interest" value="Resiliency">
            <label for="interest5">Resiliency of the underlying system (Lua extremely slow to change, well-documented, easy to work with)</label>
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="interest6" name="interest" value="Other">
            <label for="interest6">Other:</label>
        </div>
        <input type="text" class="other-input" id="interestOther" placeholder="Please specify...">
    </div>

    <div class="form-group">
        <label for="bounced">4. If you bounced off L5 or it doesn't appeal, why not?</label>
        <textarea id="bounced" name="bounced" rows="4"></textarea>
    </div>

    <div class="form-group">
        <label for="missing">5. What is L5 missing right now?</label>
        <textarea id="missing" name="missing" rows="4"></textarea>
    </div>

    <div class="form-group">
        <label for="feedback">6. Any other feedback?</label>
        <textarea id="feedback" name="feedback" rows="4"></textarea>
    </div>

    <div class="form-group">
        <label for="contribute">7. If you'd be potentially interested in contributing (code, bug reports, tutorials, etc), how would you like to contribute?</label>
        <textarea id="contribute" name="contribute" rows="4"></textarea>
    </div>

    <div class="form-group">
        <label for="email">8. Your email address (to stay connected on all things L5)</label>
        <input type="email" id="email" name="email">
    </div>

    <button type="submit">Send Survey</button>

    <div class="note">
        Note: This will open your default email client to send your responses.
    </div>
</form>

<script>
document.getElementById('surveyForm').addEventListener('submit', function(e) {
    e.preventDefault();
    
    var name = document.getElementById('name').value || 'Anonymous';
    
    // Get checked items for "How tried"
    var triedCheckboxes = document.querySelectorAll('input[name="tried"]:checked');
    var triedChecked = [];
    for (var i = 0; i < triedCheckboxes.length; i++) {
        triedChecked.push(triedCheckboxes[i].value);
    }
    var triedOther = document.getElementById('triedOther').value;
    if (triedOther) {
        triedChecked.push('Other: ' + triedOther);
    }
    var tried = triedChecked.length > 0 ? triedChecked.join(', ') : 'N/A';
    
    // Get checked items for "What interests"
    var interestCheckboxes = document.querySelectorAll('input[name="interest"]:checked');
    var interestChecked = [];
    for (var j = 0; j < interestCheckboxes.length; j++) {
        interestChecked.push(interestCheckboxes[j].value);
    }
    var interestOther = document.getElementById('interestOther').value;
    if (interestOther) {
        interestChecked.push('Other: ' + interestOther);
    }
    var interest = interestChecked.length > 0 ? interestChecked.join(', ') : 'N/A';
    
    var bounced = document.getElementById('bounced').value || 'N/A';
    var missing = document.getElementById('missing').value || 'N/A';
    var feedback = document.getElementById('feedback').value || 'N/A';
    var contribute = document.getElementById('contribute').value || 'N/A';
    var email = document.getElementById('email').value || 'N/A';
    
    // Build email
    var subject = encodeURIComponent('L5 Survey Response - Winter 2026');
    var body = encodeURIComponent(
        'L5 Survey Response\n\n' +
        '1. Name: ' + name + '\n\n' +
        '2. How have you tried out L5?\n' + tried + '\n\n' +
        '3. What most interests you about L5?\n' + interest + '\n\n' +
        '4. If you bounced off L5 or it doesn\'t appeal, why not?\n' + bounced + '\n\n' +
        '5. What is L5 missing right now?\n' + missing + '\n\n' +
        '6. Any other feedback?\n' + feedback + '\n\n' +
        '7. How would you like to contribute?\n' + contribute + '\n\n' +
        '8. Email address:\n' + email
    );
    
    window.location.href = 'mailto:lee@leetusman.com?subject=' + subject + '&body=' + body;
});
</script>

</div>
