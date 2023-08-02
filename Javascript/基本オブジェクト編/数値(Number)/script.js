function myParseInt(str) {
    var radix = 10;
    if (str.match(/^0x[0-9a-f]+$/i)) {
        radix = 16;
        str = str.substring(2);
    } else if (str.match(/^0b[01]+$/i)) {
        radix = 2;
        str = str.substring(2);
    } else if (str.match(/^0o[0-7]+$/i)) {
        radix = 8;
        str = str.substring(2);
    } else if (str.match(/^0[0-7]+$/)) {
        radix = 8;
        str = str.substring(1);
    } else if (str.match(/^[0-9]+$/)) {
        radix = 10;
    } else {
        return Number.NaN;
    }
    return radix;
}

function checkRadix() {
    var input = document.getElementById('numInput').value;
    var radix = myParseInt(input);
    var output;
    switch(radix) {
        case 2:
            output = 'Binary (2 base)';
            break;
        case 8:
            output = 'Octal (8 base)';
            break;
        case 10:
            output = 'Decimal (10 base)';
            break;
        case 16:
            output = 'Hexadecimal (16 base)';
            break;
        default:
            output = 'Not a valid number';
    }
    document.getElementById('output').innerHTML = output;
}