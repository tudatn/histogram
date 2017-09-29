var grades = [65.95, 56.98, 78.62, 96.1, 90.3, 72.24, 92.34, 60.00, 81.43, 86.22, 88.33, 9.03, 49.93, 52.34, 53.11, 50.10, 88.88, 55.32, 55.69, 61.68, 70.44, 70.54, 90.0, 71.11, 80.01];

var flag = true;

function isValidBound(b) {
    if (isNaN(b.value)) {
        alert("Bounds must be a valid number!");
        b.focus();
        b.style.backgroundColor = 'red';
        return 0.00;
    }
    else {
        b.style.backgroundColor = 'white';
        newValue = parseFloat(b.value);
        // b.value = parseFloat(b.value).toFixed(2);
        return newValue;
    }
}

function getBound() {
    var currentBound = [];
    currentBound[0] = isValidBound(document.getElementById('bA+'));
    currentBound[1] = isValidBound(document.getElementById('bA'));
    currentBound[2] = isValidBound(document.getElementById('bA-'));
    currentBound[3] = isValidBound(document.getElementById('bB+'));
    currentBound[4] = isValidBound(document.getElementById('bB'));
    currentBound[5] = isValidBound(document.getElementById('bB-'));
    currentBound[6] = isValidBound(document.getElementById('bC+'));
    currentBound[7] = isValidBound(document.getElementById('bC'));
    currentBound[8] = isValidBound(document.getElementById('bC-'));
    currentBound[9] = isValidBound(document.getElementById('bD'));
    currentBound[10] = isValidBound(document.getElementById('bF'));
    return currentBound;
}

function recalculateHistogram() {
    var currentBound = getBound();
    var histogram = [0,0,0,0,0,0,0,0,0,0,0];
    if (flag) {
        for (var i = 0; i < grades.length; i++) {
            if (grades[i] >= currentBound[0]) {
                histogram[0]++;
            }
            else if (grades[i] >= currentBound[1]) {
                histogram[1]++;
            }
            else if (grades[i] >= currentBound[2]) {
                histogram[2]++;
            }
            else if (grades[i] >= currentBound[3]) {
                histogram[3]++;
            }
            else if (grades[i] >= currentBound[4]) {
                histogram[4]++;
            }
            else if (grades[i] >= currentBound[5]) {
                histogram[5]++;
            }
            else if (grades[i] >= currentBound[6]) {
                histogram[6]++;
            }
            else if (grades[i] >= currentBound[7]) {
                histogram[7]++;
            }
            else if (grades[i] >= currentBound[8]) {
                histogram[8]++;
            }
            else if (grades[i] >= currentBound[9]) {
                histogram[9]++;
            }
            else {
                histogram[10]++;
            }
        }
    }
    return histogram;
}

function drawHistogram(obj, length) {
    var width = (length/grades.length)*100;
    obj.style.width = width + '%';
    obj.style.visibility = 'visible';
}

function update() {
    var histogram = recalculateHistogram();
    drawHistogram(document.getElementById('A+'), histogram[0]);
    drawHistogram(document.getElementById('A'), histogram[1]);
    drawHistogram(document.getElementById('A-'), histogram[2]);
    drawHistogram(document.getElementById('B+'), histogram[3]);
    drawHistogram(document.getElementById('B'), histogram[4]);
    drawHistogram(document.getElementById('B-'), histogram[5]);
    drawHistogram(document.getElementById('C+'), histogram[6]);
    drawHistogram(document.getElementById('C'), histogram[7]);
    drawHistogram(document.getElementById('C-'), histogram[8]);
    drawHistogram(document.getElementById('D'), histogram[9]);
    drawHistogram(document.getElementById('F'), histogram[10]);
}
